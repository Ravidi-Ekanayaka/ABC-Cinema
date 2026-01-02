package net.codejava;
 
import java.util.*;
import com.paypal.api.payments.*;
import com.paypal.base.rest.*;
 
public class PaymentServices {
    private static final String CLIENT_ID = "ATQGwTl4mPdDQg3NaTaDxYocdaR6hpogwdYNdn10w-MHYLAwdniLxE4bQeWxuNL5LnBiKouzQ8-zUS9K";
    private static final String CLIENT_SECRET = "EOisPNeC_vGO1yPfl40-qAIWK99QdqUY8qihsTTVPzxUQQ2Zlb9v7na6bPSIomncnKjcHkn0cWDvB_Pn";
    private static final String MODE = "sandbox";
 
    public String authorizePayment(OrderDetail orderDetail)        
            throws PayPalRESTException {       
 
        Payer payer = getPayerInformation();
        RedirectUrls redirectUrls = getRedirectURLs();
        List<Transaction> listTransaction = getTransactionInformation(orderDetail);
         
        Payment requestPayment = new Payment();
        requestPayment.setTransactions(listTransaction);
        requestPayment.setRedirectUrls(redirectUrls);
        requestPayment.setPayer(payer);
        requestPayment.setIntent("authorize");
 
        APIContext apiContext = new APIContext(CLIENT_ID, CLIENT_SECRET, MODE);
 
        Payment approvedPayment = requestPayment.create(apiContext);
 
        return getApprovalLink(approvedPayment);
 
    }
     
    private Payer getPayerInformation() {
        Payer payer = new Payer();
    payer.setPaymentMethod("paypal");
     
    PayerInfo payerInfo = new PayerInfo();
    
    payer.setPayerInfo(payerInfo);
     
    return payer;
    }
     
    private RedirectUrls getRedirectURLs() {
        RedirectUrls redirectUrls = new RedirectUrls();
    redirectUrls.setCancelUrl("http://localhost:8080/ABC_Cinema/cancel.jsp");
    redirectUrls.setReturnUrl("http://localhost:8080/ABC_Cinema/review.jsp");
     
    return redirectUrls;
    }
     
    public Payment getPaymentDetails(String paymentId) throws PayPalRESTException{
        APIContext apiContext = APIContext (CLIENT_ID , CLIENT_SECRET , MODE);
        return Payment.get(apiContext, paymentId);
    }
    
    public Payment executePayment(String paymentId, String payerId) throws PayPalRESTException{
        PaymentExecution paymentExecution = new PaymentExecution();
        paymentExecution.setPayerId(payerId);
        
        Payment payment = new Payment().setId(paymentId);
        
        APIContext apiContext = new APIContext (CLIENT_ID , CLIENT_SECRET , MODE);
        
        return payment.execute(apiContext , paymentExecution);
    }
    
    private List<Transaction> getTransactionInformation(OrderDetail orderDetail) {
        Details details = new Details();
    details.setShipping(orderDetail.getMovieName());
    details.setSubtotal(orderDetail.gettotal());
 
    Amount amount = new Amount();
    amount.setCurrency("USD");
    amount.setTotal(orderDetail.gettotal());
    amount.setDetails(details);
 
    Transaction transaction = new Transaction();
    transaction.setAmount(amount);
    transaction.setDescription(orderDetail.getMovieName());
     
    ItemList itemList = new ItemList();
    List<Item> items = new ArrayList<>();
     
    Item item = new Item();
    item.setCurrency("USD");
    item.setName(orderDetail.getMovieName());
    item.setPrice(orderDetail.gettotal());
    item.setQuantity("1");
     
    items.add(item);
    itemList.setItems(items);
    transaction.setItemList(itemList);
 
    List<Transaction> listTransaction = new ArrayList<>();
    listTransaction.add(transaction);  
     
    return listTransaction;
    } 
    
    private String getApprovalLink(Payment approvedPayment) {
        List<Links> links = approvedPayment.getLinks();
    String approvalLink = null;
     
    for (Links link : links) {
        if (link.getRel().equalsIgnoreCase("approval_url")) {
            approvalLink = link.getHref();
            break;
        }
    }      
     
    return approvalLink;
    }

    private APIContext APIContext(String CLIENT_ID, String CLIENT_SECRET, String MODE) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
@WebServlet(urlPatterns = {"/Feedback"})
public class Feedback extends HttpServlet {

 
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
        
        String FName = request.getParameter("fname");
        String LName = request.getParameter("lname");
        String Email = request.getParameter("email");
        String Mobile = request.getParameter("m-num");
        String Msg = request.getParameter("msg");
        
        PrintWriter out = response.getWriter();
        
        Connection con = null; //created connection instance. con
        Statement st = null; //another instance of a statement class
        
        try
        {
          Class.forName("com.mysql.jdbc.Driver");
          con = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/abc_cinema","root","");
          st = con.createStatement();
          
          String qry = "insert into contact_us values ('"+FName+"' , '"+LName+"' , '"+Email+"' , '"+Mobile+"' , '"+Msg+"')";        
                  
          st.execute(qry);
          
          out.print("Data inserted successfully");
        }
        catch(ClassNotFoundException | SQLException e)
        {
            System.out.println(e);
        }
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

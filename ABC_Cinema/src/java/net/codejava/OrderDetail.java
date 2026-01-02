package net.codejava;
 
public class OrderDetail {
    private String MovieName;
    private float price;
 
    public OrderDetail(String MovieName,  String price) {
        this.MovieName = MovieName;
        this.price = Float.parseFloat(price);
    }

    public String getMovieName() {
        return MovieName;
    }
 
    public String gettotal() {
        return String.format("%.2f", price);
    }
}
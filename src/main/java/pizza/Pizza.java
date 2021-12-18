package pizza;
import java.io.Serializable;

public class Pizza implements Serializable {

	private static final long serialVersionUID = 1L; 
	private String name = "";
	private int price = 0;
	
    public Pizza() {
        super();
    }

    public Pizza(String n, int p) {
    	name = n ; 
    	price = p;
    }
    
    public void setName (String n) {
    	name = n;
    }
    
    public void setPrice (int p) {
    	price = p;
    }
    
    public String getName () {
    	return name;
    }
    
    public int getPrice () {
    	return price;
    }
    
}
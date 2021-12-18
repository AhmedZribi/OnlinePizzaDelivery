package pizza;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class Order implements Serializable {

	private static final long serialVersionUID = 1L;
	private List<Pizza> pizzas = new ArrayList<Pizza>();   
	private String firstName = "";
	private String lastName = "";
	private String address = "";
	private String id = "" ;
	private int tot = 0;
    public Order() {
        super();
    }
    
    public void setFirstName (String f) {
    	firstName = f;
    }
    
    public void setLastName (String l) {
    	lastName = l;
    }
    
    public void setAddress (String a) {
    	address = a;
    }
    
    public void setId (String i) {
    	id = i;
    }

    public String getFirstName() {
    	return firstName;
    }
    
    public String getLastName() {
    	return lastName;
    }
    
    public String getAddress() {
    	return address;
    }
    
    public String getId() {
    	return id;
    }
    
    public void setPizzas (List<Pizza> p ) {
    	pizzas = p;
    }
    
    public List<Pizza> getPizzas () {
    	return pizzas;
    }
    
    public void setTotalCost(int t) {
    	tot = t;
    }
    
    public int getTotalCost() {
    	return tot;
    }
}
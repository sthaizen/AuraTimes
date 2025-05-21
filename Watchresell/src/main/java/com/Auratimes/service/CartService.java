package com.Auratimes.service;
// importing
import com.Auratimes.model.CartItem;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
// service class for handeling add to cart function using session
public class CartService {
	
	// variable for storing cart session for each session
    private static final String CART_SESSION_KEY = "cart";// constant variable
    private HttpSession session;// session to store cart items per user

    //construction that creates cart based in user session
    public CartService(HttpSession session) {
        this.session = session;
    }
    
    /**
     * Retrieves the list of cart items from the session.
     * If no cart is found, create a  empty cart and stores it in the session.
     */
    @SuppressWarnings("unchecked")// hides surpass waring 
    public List<CartItem> getCartItems() {
    	// retreving cart detail from the session
        List<CartItem> cart = (List<CartItem>) session.getAttribute(CART_SESSION_KEY);
        
        // condition if cart doesnot exist, create an new one  and store it in session 
        if (cart == null) {
            cart = new ArrayList<>();
            session.setAttribute(CART_SESSION_KEY, cart);
        }
        return cart;
    }
    /**
     * Adds a new item to the shopping cart stored in session.
     */
    public void addToCart(CartItem item) {
    	// gettind cart detail from current session
        List<CartItem> cart = getCartItems();
        
        // adding items into cart list
        cart.add(item);
        
        // updating the session with retrived cart detail
        session.setAttribute(CART_SESSION_KEY, cart);
    }
}

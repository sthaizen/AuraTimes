package com.Auratimes.service;

import com.Auratimes.model.CartItem;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

public class CartService {
    private static final String CART_SESSION_KEY = "cart";
    private HttpSession session;

    public CartService(HttpSession session) {
        this.session = session;
    }

    @SuppressWarnings("unchecked")
    public List<CartItem> getCartItems() {
        List<CartItem> cart = (List<CartItem>) session.getAttribute(CART_SESSION_KEY);
        if (cart == null) {
            cart = new ArrayList<>();
            session.setAttribute(CART_SESSION_KEY, cart);
        }
        return cart;
    }

    public void addToCart(CartItem item) {
        List<CartItem> cart = getCartItems();
        cart.add(item);
        session.setAttribute(CART_SESSION_KEY, cart);
    }
}

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author admin
 */
public class Cart {
    List<Item> items;
    public Cart() {
        items = new ArrayList<>();
    }

    public List<Item> getItems() {
        return items;
    }

    public void setItems(List<Item> items) {
        this.items = items;
    }
    
    

    public Cart(List<Item> items) {
        this.items = items;
    }
    
    public int getQuantityById(int id) {
        return getItemById(id).getQuantity();
    }
    
    Item getItemById(int id) {
        for(Item i:items) {
            if(i.product.getProduct_id()==id) {
                return i;
            }
        }
        return null;
    }
    
    public void addItem(Item t) {
        if(getItemById(t.getProduct().getProduct_id())!=null) {
            Item m= getItemById(t.getProduct().getProduct_id());
            m.setQuantity(m.getQuantity()+t.getQuantity());
        }
        else {
            items.add(t);
        }
    }
    public void removeItem(int id) {
        if(getItemById(id)!=null){
            items.remove(id);
        }
        
    }
    public int getTotalMoney() {
        int t=0;
        for(Item i: items) {
            t+=i.getQuantity()*i.getPrice();
        }
        return t;
    }
    
    Product getProductById(int id, List<Product> list) {
        for(Product i:list) {
            if(i.getProduct_id()==id) {
                return i;
            }
        }
        return null;
    }
    
    public Cart(String txt, List<Product> list) {
        items = new ArrayList<>();
        try{
            
        
        if(txt!=null&&txt.length()!=0) {
            String[] s=txt.split("/");
            for(String i:s) {
                String[] n=i.split(":");
                int id=Integer.parseInt(n[0]);
                int quantity=Integer.parseInt(n[1]);
                String size=n[2];
                Product p=getProductById(id, list);
                Item t=new Item(p, quantity, p.getProduct_price(),size);
                addItem(t);
            }
        }
        }
        catch(NumberFormatException e) {
            
        }
    }
            
}

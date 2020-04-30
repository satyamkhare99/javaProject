package model;

public class CartModel {
      private int oid;
   private String vegetables;
   private String groceries;
   private int qty;
   private int cid;
   public CartModel() {
		super();
	}
   public CartModel(int oid,String vegetables,String groceries,int qty)
   {
 	  this.oid=oid;
 	  this.vegetables=vegetables;
 	  this.groceries=groceries;
 	  this.qty=qty;

   }
   
   public int getOid() {
       return oid;
   }
 
   public void setOid(int oid) {
       this.oid = oid;
   }

   public String getVegetables() {
       return vegetables;
   }

   public void setVegetables(String vegetables) {
       this.vegetables = vegetables;
   }

   public String getGroceries() {
       return groceries;
   }

   public void setGroceries(String groceries) {
       this.groceries = groceries;
   }

   public int getQty() {
       return qty;
   }

   public void setQty(int qty) {
       this.qty= qty;
   }
   public int getCid() {
       return cid;
   }

   public void setCid(int cid) {
       this.cid= cid;
   }
      
  
}

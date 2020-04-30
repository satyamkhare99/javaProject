package dao;
import model.GetSet;
import model.CartModel;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import connection.ConnectionClass;
import model.GetSet;

public class ShoppingDao {
	 public boolean checkLogin(String id,String pass) throws Exception
	    {
	         String sql;
	        Connection con=null;
	        sql="select * from users where id=? and pass=?";
	        PreparedStatement ps=null;
	        con=ConnectionClass.getConnection();
	        ps=con.prepareStatement(sql);
	        ps.setString(1, id);
	        ps.setString(2, pass);
	        ResultSet rs=null;
	        rs=ps.executeQuery();
	        if(rs.next())
	          return true;
	        ConnectionClass.closeConnection(con);
	     return false;
	    }            
	    
	    public int autoIncr() throws Exception
	    {
	        String sql;
	        Connection con=null;
	        sql="select max(customer_id) from users";
	        int max=501;
	        PreparedStatement ps=null;
	        con=ConnectionClass.getConnection();
	        ps=con.prepareStatement(sql);
	        ResultSet rs=null;
	        rs=ps.executeQuery();
	        if(rs.next())
	        {     
	            max=rs.getInt(1);
	            max=max+1;
	        }    
	        ConnectionClass.closeConnection(con);
	      return max;
	    }
	    public int signUp(GetSet S) throws Exception
	    {
	    	String sql;
	    	Connection con=null;
	    	sql="insert into users values(?,?,?,?,?,?)";
	    	con=ConnectionClass.getConnection();
	    	PreparedStatement ps=con.prepareStatement(sql);
	    	ps.setInt(1,S.getCid());
	    	ps.setString(2,S.getName());
	    	ps.setInt(3,S.getMobileNo());
	    	ps.setString(4,S.getAddress());
	    	ps.setString(5,S.getId());
	    	ps.setString(6,S.getPass());
	    	int n=0;
	    	n=ps.executeUpdate();
	    	ConnectionClass.closeConnection(con);
			return n;
	    	
	    }
	    public GetSet name_cid(String id,String pass) throws Exception
	    {
	    	GetSet s=null;
	     	Connection con=ConnectionClass.getConnection();
	     	String sql="select name,Customer_id,mobile_no,address from users where id=? and pass=?";
	     	PreparedStatement ps=con.prepareStatement(sql);
	     	ps.setString(1,id);
	     	ps.setString(2,pass);
	     	ResultSet rs=ps.executeQuery();
	     	if(rs.next()){
	     	  s=new GetSet(rs.getInt("customer_id"),rs.getString("name"),rs.getInt("mobile_no"),rs.getString("address"));
	     	}
	     	 rs.close();
	     	  ps.close();
	     	  ConnectionClass.closeConnection(con);
	     	  return s;
	    }
	    public int autoIncrement() throws Exception
	    {
	        String sql;
	        Connection con=null;
	        sql="select max(o_id) from products";
	        int max=501;
	        PreparedStatement ps=null;
	        con=ConnectionClass.getConnection();
	        ps=con.prepareStatement(sql);
	        ResultSet rs=null;
	        rs=ps.executeQuery();
	        if(rs.next())
	        {     
	            max=rs.getInt(1);
	            max=max+1;
	        }    
	        ConnectionClass.closeConnection(con);
	      return max;
	    }
	    public int addProduct(CartModel c) throws Exception
	    {
	    	String sql;
	    	Connection con=null;
	    	sql="insert into products values(?,?,?,?,?)";
	    	con=ConnectionClass.getConnection();
	    	PreparedStatement ps=con.prepareStatement(sql);
	    	ps.setInt(1,c.getOid());
	    	ps.setString(2,c.getVegetables());
	    	ps.setString(3,c.getGroceries());
	    	ps.setInt(4,c.getQty());
	    	ps.setInt(5, c.getCid());
	    	int n=0;
	    	n=ps.executeUpdate();
	    	ConnectionClass.closeConnection(con);
			return n;
	    	
	    }
	    public List<CartModel> viewCart(int cid) throws Exception
	    {
	    	CartModel s=null;
	    	List<CartModel> al=null;
	     	Connection con=ConnectionClass.getConnection();
	     	String sql="select o_id,vegetables,groceries,qty from products where customer_id=?";
	     	PreparedStatement ps=con.prepareStatement(sql);
	     	ps.setInt(1,cid);
	     	ResultSet rs=ps.executeQuery();
	     	if(rs.next()){
	     	  al=new ArrayList<CartModel>();	
	     	  do{
	     	  s=new CartModel(rs.getInt("o_id"),rs.getString("vegetables"),rs.getString("groceries"),rs.getInt("qty"));
	     	  al.add(s);
	     	  }while(rs.next());
	     	}
	     	 rs.close();
	     	  ps.close();
	     	  ConnectionClass.closeConnection(con);
	     	 return al;
	    }
	   
}

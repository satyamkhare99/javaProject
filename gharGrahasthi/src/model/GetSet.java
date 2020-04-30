package model;
import dao.ShoppingDao;
public class GetSet {
    private int cid;
   private String name;
   private int mobile_no;
   private String address;
   private String id;
   private String pass;
   public GetSet(){
		 super();
		  //u hi bana dia  jisse error na aaye par dil pe mat lena
	  }
   public GetSet(int cid,String name,int mobile_no,String address)
   {
 	  this.cid=cid;
 	  this.name=name;
 	  this.mobile_no=mobile_no;
 	  this.address=address;

   }
    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getMobileNo() {
        return mobile_no;
    }

    public void setMobileNo(int mobile_no) {
        this.mobile_no = mobile_no;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }
   
    public String getPass(){
    	return pass;
    }
    public void setPass(String pass){
    	this.pass= pass;
    }
}


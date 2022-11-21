package controller;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.Transaction;
import model.User;



public class UserDao 
{
	static Connection getConnection() throws ClassNotFoundException, SQLException
	{
	Class.forName("com.mysql.cj.jdbc.Driver");
	System.out.println("Driver Registerd");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/banking","root","abc123");
	System.out.println("Connection successfully");
	return con;
	}
	
	public static void Add(int account  ,int amount,boolean a) throws ClassNotFoundException, SQLException
	{
		Connection con=UserDao.getConnection();
		System.out.println("Conection Established Successfully");
		  PreparedStatement ps=con.prepareStatement("select * from user where uacount=?",ResultSet.TYPE_SCROLL_SENSITIVE, 
                  ResultSet.CONCUR_UPDATABLE);  
		    ps.setInt(1,account);  
		    
		    int updateAmount = 0;
		    int currentAmount=0;
		    
		    ResultSet rs=ps.executeQuery();
		    if(rs.absolute(1))
		    {
		    	
		    	currentAmount=Integer.parseInt(rs.getString(6));
		    	 if(a)
		    	 {
		 		    updateAmount=currentAmount+amount;
		    	 }
		 		    else
		 		    { 
		 		    updateAmount=currentAmount-amount;
		 		    }
		 		    ps=con.prepareStatement("Update user set uamount=? where uacount=?");  
		 		    ps.setInt(1, updateAmount);
		 		    ps.setInt(2, account);
		 		    ps.executeUpdate();
		 		 
		    }
		    
		   
			     
		
	}
	public static int insertHistory(Transaction t) throws ClassNotFoundException, SQLException
	{
	
		Connection con=UserDao.getConnection();
		int y=0;
	System.out.println("Conection Established Successfully");


	PreparedStatement ps=con.prepareStatement("insert into tranhistory( sacc, racc, amount, status) values(?,?,?,?)");
	ps.setInt(1,t.getSacc());
	ps.setInt(2,t.getRacc());
	ps.setInt(3,t.getAmount());
	ps.setString(4,"Succcessful");
	y=ps.executeUpdate();
	
	


	con.close();
	
	return y;
	}
	
	public static int insertHistory2(Transaction t) throws ClassNotFoundException, SQLException
	{
	
		Connection con=UserDao.getConnection();
		int l=0;
	System.out.println("Conection Established Successfully");


	PreparedStatement ps=con.prepareStatement("insert into tranhistory( sacc, racc, amount, status) values(?,?,?,?)");
	ps.setInt(1,t.getSacc());
	ps.setInt(2,t.getRacc());
	ps.setInt(3,t.getAmount());
	ps.setString(4,"Unsucccessful");
	l=ps.executeUpdate();
	
	


	con.close();
	
	return l;
	}
}

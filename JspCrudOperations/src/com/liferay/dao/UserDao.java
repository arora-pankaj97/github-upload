package com.liferay.dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.liferay.bean.*;

public class UserDao {
	static Connection getConnection() {
		Connection con=null;
		try {
			Class.forName("org.mariadb.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mariadb://localhost:3306/jspcrud","root",null);
		}catch(Exception e)
		           {e.printStackTrace();	} 
		return con;
	}
	
	public static int save(Bean u) {
		int status=0;
		try
		{
			Connection con=getConnection();
			PreparedStatement ps=con.prepareStatement("insert into register(name,password,email,sex,country) values(?,?,?,?,?)");
			ps.setString(1, u.getName());
			ps.setString(2, u.getPassword());
			ps.setString(3, u.getEmail());
			ps.setString(4, u.getSex());
			ps.setString(5, u.getCountry());
			status=ps.executeUpdate();
		}catch(Exception e) {
			System.out.println(e);
		}
		return status;
	}
	
	public  static List<Bean> getAllRecords(){
		List<Bean> list=new ArrayList<Bean>();
		 try {
			 Connection con=getConnection();
			 PreparedStatement ps=con.prepareStatement("select * from register");
			 ResultSet rs=ps.executeQuery();
			 while(rs.next())
			 {
				 Bean u=new Bean();
				 u.setId(rs.getInt("id"));
				 u.setName(rs.getString("name"));
				 u.setPassword(rs.getString("password"));
				 u.setEmail(rs.getString("email"));
				 u.setSex(rs.getString("sex"));
				 u.setCountry(rs.getString("country"));
				 list.add(u);
			 }
		 }catch(Exception e)
		 {
			 System.out.println(e);
		 }
		return list;
		
		
	}

	
	
	public static Bean getRecordById(int id) {
		Bean u=null;
		try {
			Connection con=getConnection();
			PreparedStatement ps=con.prepareStatement("select * from register where id= ?");
			ps.setInt(1, id);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				
				u=new Bean();
				u.setId(rs.getInt("id"));
				u.setName(rs.getString("name"));
				u.setPassword(rs.getString("password"));
				u.setEmail(rs.getString("email"));
				u.setSex(rs.getString("sex"));
				u.setCountry(rs.getString("country"));
			}	
			}catch(Exception e)
			{
				System.out.println(e);
			} return u;
			
		
	}
	
public static int update(Bean u)
{
	int status=0;
	try {
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("update register set name=?, password=?,email=?,sex=?,country=? where id=?");
		ps.setString(1, u.getName());
		ps.setString(2, u.getPassword());
		ps.setString(3,u.getEmail());
		ps.setString(4, u.getSex());
		ps.setString(5, u.getCountry());
		ps.setInt(6,u.getId());
		status=ps.executeUpdate();
		
	}catch(Exception e)
	{
		System.out.println(e);
	}
	return status;
}


public static int delete(Bean u) {
	int status=0;
	try {
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("delete from register where id=?");
		ps.setInt(1, u.getId());
		status=ps.executeUpdate();
		
		
	}catch(Exception e)
	{
		System.out.println(e);
	}
	return status;
}

}

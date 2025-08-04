package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import com.User.post;



public class postDAO {
	private Connection conn;

	public postDAO(Connection conn) {
		super();
		this.conn = conn;
	}
	public boolean AddNotes(String ti,String co, int ui)
	{
		boolean f=false;
		try{
			String qr="insert into post(title,content,uid)values(?,?,?)";
			PreparedStatement ps=conn.prepareStatement(qr);
			ps.setString(1,ti);
			ps.setString(2,co);
			ps.setInt(3,ui);
			int i=ps.executeUpdate();
			if(i==1)
			{
				f=true;
			}
			
			
		}catch(Exception e){
			
		}
		return f;
}
	
	public List<post> getData(int id){
		List<post> list=new ArrayList<post>();
		post po=null;
		try{
			String qu ="SELECT * FROM  post WHERE uid=? order by id DESC";
			PreparedStatement ps=conn.prepareStatement(qu);
			ps.setInt(1,id);
			
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				po=new post();
				po.setId(rs.getInt(1));
				po.setTitle(rs.getString(2));
				po.setContent(rs.getString(3));
				po.setPdate(rs.getTimestamp(4));
				list.add(po);
			}
			
			
		}catch(Exception e){
			e.printStackTrace();
			
		}
		return list;
		
		
	}
	
	public post getDataById(int noteId)
	{
		post p=null;
		try{
			String qu="SELECT * FROM post Where id=?";
			PreparedStatement ps=conn.prepareStatement(qu);
			ps.setInt(1,noteId);
			ResultSet rs=ps.executeQuery();
			if(rs.next())
			{
				p=new post();
				p.setId(rs.getInt(1));
				p.setTitle(rs.getString(2));
				p.setContent(rs.getString(3));
			}
			
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return p;
	}
	
	public boolean PostUpdate(int nid,String ti,String co)
	{
		boolean f=false;
		try{
			String qr="Update post set title=?,content=? where id=?";
			PreparedStatement ps=conn.prepareStatement(qr);
			ps.setString(1,ti);
			ps.setString(2,co);
			ps.setInt(3,nid);
			int i=ps.executeUpdate();
			if(i==1)
			{
				f=true;
			} 
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return f;
	}
	
	public boolean DeleteNotes(int nid)
	{
		boolean f=false;
		try{
			String qu="Delete from post where id=?";
			PreparedStatement ps=conn.prepareStatement(qu);
			ps.setInt(1, nid);
			int x=ps.executeUpdate();
			if(x==1)
			{
				f=true;
			}
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return f;
	}

}

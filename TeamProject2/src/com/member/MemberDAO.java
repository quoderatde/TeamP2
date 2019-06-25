package com.member;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

public class MemberDAO {

	private Connection conn = null;
	private PreparedStatement pst = null;
	private ResultSet rs = null;
	private static MemberDAO dao = new MemberDAO();

	public static MemberDAO getDAO() {
		if (dao == null) {
			dao = new MemberDAO();
		}
		return dao;
	}

	public void conn() {

		try {
			InputStream in = this.getClass().getResourceAsStream("db.properties");
			Properties p = new Properties();
			p.load(in);

			Class.forName(p.getProperty("driver"));
			String url = p.getProperty("url");
			String user = p.getProperty("user");
			String password = p.getProperty("password");
			conn = DriverManager.getConnection(url, user, password);
			if (conn != null) {
				System.out.println("DB연결 성공");
			} else {
				System.out.println("DB연결 실패");
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

	}

	public void close() {
		try {
			if (rs != null)
				rs.close();
			if (pst != null)
				pst.close();
			if (conn != null)
				conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void Join(MemberDTO dto) {
		conn();
		String sql = "insert into member values (?,?,?,?,?,?)";
		try {
			pst = conn.prepareStatement(sql);
			pst.setString(1, dto.getEmail());
			pst.setString(2, dto.getPw());
			pst.setString(3, dto.getName());
			pst.setString(4, dto.getTel());
			pst.setString(5, dto.getAddress());
			pst.setString(6, dto.getYoutube());

			int cnt = pst.executeUpdate();

			if (cnt > 0) {
				System.out.println("회원가입 성공");
			} else {
				System.out.println("회원가입 실패");
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
	}

	public MemberDTO Login(MemberDTO dto) {
		conn();
		String sql = "SELECT EMAIL,NAME,TEL,ADDRESS,YOUTUBE FROM MEMBER WHERE EMAIL=? AND PW =?";
		MemberDTO loginInfo = null;
		try {
			pst = conn.prepareStatement(sql);
			pst.setString(1, dto.getEmail());
			pst.setString(2, dto.getPw());
			rs = pst.executeQuery();
			if (rs.next()) {
				String email = rs.getString(1);
				String name = rs.getString(2);
				String tel = rs.getString(3);
				String address = rs.getString(4);
				String youtube = rs.getString(5);
				loginInfo = new MemberDTO(email, name, tel, address, youtube);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return loginInfo;
	}

	public int update(MemberDTO dto) {

		conn();

		try {
			String sql = "UPDATE MEMBER SET PW=?, TEL=?, ADDR=? WHERE EMAIL=?";
			pst = conn.prepareStatement(sql);

			pst.setString(1, dto.getPw());
			pst.setString(2, dto.getTel());
			pst.setString(3, dto.getAddress());
			pst.setString(4, dto.getEmail());
			int cnt = pst.executeUpdate();

			return cnt;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return 0;
	}
	
	
	public int Del_List(String[] list)
	{
		conn();
		String sql = "DELETE FROM REQUEST_LIST_MEMBER WHERE EMAIL=?";
		int cnt=0;
		try
		{
			for(int i=0; i<list.length; i++)
			{
				 pst = conn.prepareStatement(sql);
				 pst.setString(1, list[i]);
				 cnt = pst.executeUpdate();
				
			}
			 return cnt;
		}
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		finally 
		{
			close();
			
		}
		
		return 0;
	}
	
	public ArrayList<MemberDTO> Email_Select()
	{
		conn();
		String sql = "SELECT YOUTUBE,EMAIL,NAME,TEL,ADDRESS FROM MEMBER WHERE EMAIL IN (SELECT EMAIL FROM REQUEST_LIST_MEMBER WHERE CHECK_CODE=1)";
		ArrayList<MemberDTO>Info = new ArrayList<MemberDTO>(); 
		try {
			pst = conn.prepareStatement(sql);
			rs = pst.executeQuery();
			while(rs.next()) {
				MemberDTO list=new MemberDTO();
				list.setYoutube(rs.getString(1));
				list.setEmail(rs.getString(2));
				list.setName(rs.getString(3));
				list.setTel(rs.getString(4));
				list.setAddress(rs.getString(5));
				Info.add(list);
				
			}
			return Info;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		
		return Info;
	}
}

package com;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;




public class comu_DAO 
{


		private Connection conn = null;
		private PreparedStatement pst = null;
		private ResultSet rs = null;

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

		public int code_check()
		{
			int code=0;
			conn();
			String sql = "SELECT CODE FROM COMMUNITY_001";
			try
			{
				pst = conn.prepareStatement(sql);
				rs = pst.executeQuery();
				while(rs.next()) {
					code = rs.getInt(1)+1;
					
				}
				return code;
			}
			catch (Exception e) 
			{
				e.printStackTrace();
			}
			finally {
				close();
			}
			
			return code;
		}
		public void insert(comu_DTO dto ) {
			conn();
			String sql = "insert into COMMUNITY_001 values (?,?,?,?,?,to_char(sysdate,'yyyy.mm.dd'),?)";
			int code = code_check();
			conn();
			try {
				pst = conn.prepareStatement(sql);
				pst.setInt(1, code);
				pst.setString(2, dto.getTitle_tag());
				pst.setString(3, dto.getTitle());
				pst.setString(4, dto.getContent());
				pst.setString(5, dto.getName());
				pst.setInt(6, 0);
				int cnt = pst.executeUpdate();

				if (cnt > 0) {
					System.out.println("등록성공");
				} else {
					System.out.println("등록실패");
				}

			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close();
			}
		}
		
		public void View_count(int code) {
			conn();
			String sql = "UPDATE COMMUNITY_001 SET VIEW_COUNT = (SELECT VIEW_COUNT FROM COMMUNITY_001 WHERE CODE=?)+1 WHERE CODE=?";
			conn();
			try {
				pst = conn.prepareStatement(sql);
				pst.setInt(1, code);
				pst.setInt(2, code);
				int cnt = pst.executeUpdate();

				if (cnt > 0) {
					System.out.println("변경성공");
				} else {
					System.out.println("변경실패");
				}

			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close();
			}
		}
		
		public ArrayList select(String type)
		{
			conn();
			if(type.equals("notice"))
			{
				type="공지사항";
			}
			else if(type.equals("free"))
			{
				type="자유게시판";
			}
			else if(type.equals("tip"))
			{
				type="채널 팁";
			}
			else
			{
				type="채널홍보";
			}
			String sql = "select * FROM COMMUNITY_001 WHERE TITLE_TAG=? ORDER BY CODE DESC " ;
			ArrayList<comu_DTO> list = new ArrayList<comu_DTO>();
			try {
				pst = conn.prepareStatement(sql);
				pst.setString(1, type);
				rs = pst.executeQuery();
				while (rs.next()) {
					int code = rs.getInt(1);
					String title_tag = rs.getString(2);
					String title = rs.getString(3);
					String content = rs.getString(4);
					String name = rs.getString(5);
					String time = rs.getString(6);
					int view_count = rs.getInt(7);
					comu_DTO UserInfo = new comu_DTO(code, title_tag, title, content, name, time, view_count);
					list.add(UserInfo);
				}
				return list;

			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close();
			}
			return list;
			
		}
		
		public ArrayList select_ViewCount()
		{
			conn();

			String sql = "select * FROM COMMUNITY_001 WHERE TITLE_TAG !='공지사항' ORDER BY VIEW_COUNT DESC " ;
			ArrayList<comu_DTO> list = new ArrayList<comu_DTO>();
			try {
				pst = conn.prepareStatement(sql);
				rs = pst.executeQuery();
				while (rs.next()) {
					int code = rs.getInt(1);
					String title_tag = rs.getString(2);
					String title = rs.getString(3);
					String content = rs.getString(4);
					String name = rs.getString(5);
					String time = rs.getString(6);
					int view_count = rs.getInt(7);
					comu_DTO UserInfo = new comu_DTO(code, title_tag, title, content, name, time, view_count);
					list.add(UserInfo);
				}
				return list;

			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close();
			}
			return list;
			
		}
		public ArrayList select_all()
		{
			conn();
			
			String sql = "select * FROM COMMUNITY_001 ORDER BY CODE DESC " ;
			ArrayList<comu_DTO> list = new ArrayList<comu_DTO>();
			try {
				pst = conn.prepareStatement(sql);
				rs = pst.executeQuery();
				while (rs.next()) {
					int code = rs.getInt(1);
					String title_tag = rs.getString(2);
					String title = rs.getString(3);
					String content = rs.getString(4);
					String name = rs.getString(5);
					String time = rs.getString(6);
					int view_count = rs.getInt(7);
					comu_DTO UserInfo = new comu_DTO(code, title_tag, title, content, name, time, view_count);
					list.add(UserInfo);
				}
				return list;

			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close();
			}
			return list;
			
		}
		
		
		public ArrayList select_choice(int code)
		{
			conn();
			String sql = "select * FROM COMMUNITY_001 where code=?";
			ArrayList<comu_DTO> list = new ArrayList<comu_DTO>();
			try {
				pst = conn.prepareStatement(sql);
				pst.setInt(1, code);
				rs = pst.executeQuery();
				while (rs.next()) {
					String title_tag = rs.getString(2);
					String title = rs.getString(3);
					String content = rs.getString(4);
					String name = rs.getString(5);
					String time = rs.getString(6);
					int view_count = rs.getInt(7);
					comu_DTO UserInfo = new comu_DTO(code, title_tag, title, content, name, time, view_count);
					list.add(UserInfo);
				}
				return list;

			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close();
			}
			return list;
			
		}


}

<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.itwillbs.bean.MemberBean"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="org.apache.catalina.connector.Response"%>
<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"%>
	
<%
	// -> DB 처리결과(JSP)를 JSON형태로 변경
	
		
		// print out account information from DB
		
		// DB conneted information 
		final String DRIVER = "com.mysql.cj.jdbc.Driver";
		final String DBURL = "jdbc:mysql://localhost:3306/jspdb";
		final String DBID = "root";
		final String DBPW = "Dlstjd1915";
		// Load Driver
		Class.forName(DRIVER);
		System.out.println("Success Driver load");
		// Connection DB
		Connection con = DriverManager.getConnection(DBURL,DBID,DBPW);
		System.out.println("Success DB connect");
		System.out.println("connection: " + con);
		// SQL statement & pstmt 객체
		//String sql = "select * from itwill_member";
		String sql = "select * from itwill_member where id != 'admin'";
		PreparedStatement pstmt = con.prepareStatement(sql);
		// Excute SQL
		ResultSet rs = pstmt.executeQuery();
		// data anylases 
		
		%>
		<%
// 		ArrayList memberList = new ArrayList();
		JSONArray memberList = new JSONArray();
		while(rs.next()){
			// rs -> DTO -> ArrayList
// 			MemberBean mb = new MemberBean();
			JSONObject jo = new JSONObject();
			
			// 아이디, 이름, 이메일
			jo.put("id", rs.getString("id")); // {"id": "admin"}
			jo.put("name", rs.getString("name"));
			jo.put("email", rs.getString("email"));
			// ... 
			memberList.add(jo);
			
		}
		%>
		
		<%= memberList%>
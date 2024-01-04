<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>요청객체 연습1</h1>
	
	<h3>요청정보 조회</h3>
	<%
		String protocol = request.getProtocol();
		String method = request.getMethod();
		String serverName = request.getServerName();
		int serverPort = request.getServerPort();
		String requestURI = request.getRequestURI();
		
	%>
		<table border="1" style="width:50%">
			<tbody>
				<tr>
					<th>요청방식</th>
					<td><%=method %></td>
				</tr>
			
				<tr>
					<th>요청 프로토콜</th>
					<td><%=protocol %></td>
				</tr>
				<tr>
					<th>서버이름</th>
					<td><%=serverName %></td>
					
				</tr>
				<tr>
					<th>서버 포트번호</th>
					<td><%=serverPort %></td>
					
				</tr>
				<tr>
					<th>요청URL</th>
				    <td><%=requestURI %></td>
				</tr>
			</tbody> 
		</table>
		
		<h3>요청헤더정보</h3>
		<%
			String host = request.getHeader("host");
			String userAgent = request.getHeader("user-agent");
			String accept = request.getHeader("accept");
			String acceptEncoding = request.getHeader("accept-encoding");
			String acceptLanguage = request.getHeader("accept-language");
			
		%>
		<dl>
			<dt>클라이언트가 요청한 호스트명</dt><dd><%=host %></dd>
			<dt>클라이언트가 브라우저 정보</dt><dd><%=userAgent %></dd>
			<dt>클라이언트가 지원하는 컨테츠 타입</dt><dd><%=accept %></dd>
			<dt>클라이언트가 지원하는 압축방식</dt><dd><%=acceptEncoding %></dd>
			<dt>클라이언트가 지원하는 언어</dt><dd><%=acceptLanguage %></dd>
		</dl>
</body>
</html>
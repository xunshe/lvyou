
<%@ page language="java"  pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="db.db"/>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>���԰�</title>
    <LINK href="qtimages/CSS.css" type=text/css 
rel=stylesheet>

  </head>

<body >
  <p>�ҵĶ����б�</p>


  <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
    <tr>
      <td width="6%" bgcolor='#A4B6D7'>���</td>
      <td width="19%" bgcolor='#A4B6D7'>����</td>
      <td width="15%" bgcolor='#A4B6D7'>ͼƬ</td>
      <td width="9%" bgcolor="A4B6D7">�۸�</td>
      <td width="19%" bgcolor="A4B6D7">����ʱ��</td>
      <td width="12%" bgcolor="A4B6D7">����</td>
      <td width="10%" bgcolor="A4B6D7">�ܶ�</td>
      <td width="10%" bgcolor="A4B6D7">����</td>
    </tr>
    <%
  String sql="";
  sql="select * from gwc where username='"+request.getSession().getAttribute("username")+"'";
    String id;
  sql=sql+" order by id desc";
ResultSet RS_result=connDbBean.executeQuery(sql);
id="";
 String bianhao="";String mingcheng="";String tupian="";
 String addtime="";String jiage="";String shuliang="";
 int i=0;
 double ze=0;
 
 
 
 
 while(RS_result.next()){
 i=i+1;
 id=RS_result.getString("id");
bianhao=RS_result.getString("bianhao");
mingcheng=RS_result.getString("mingcheng");
tupian=RS_result.getString("tupian");
 addtime=RS_result.getString("addtime");jiage=RS_result.getString("jiage");shuliang=RS_result.getString("shuliang");
 
 
%>
    <tr>
      <td><%=bianhao %></td>
      <td><%=mingcheng%></td>
      <td><img src="<%=tupian %>" width="89" height="80" /></td>
      <td><%=jiage %></td>
      <td><%=addtime %></td>
      <td><a href="sl.jsp?id=<%=id%>&yuan=<%=shuliang %>"><%=shuliang %></a></td>
      <td><%
	  ze=0;
	  ze=Float.valueOf(shuliang).floatValue()*Float.valueOf(jiage).floatValue();
	  out.print(ze);
	  %></td>
      <td><a href="del.jsp?id=<%=id %>&tablename=gwc" onClick="return confirm('���Ҫɾ����')">ɾ��</a></td>
    </tr>
    <%
  }
   %>
  </table>
<br>
�������ݹ�<%=i %>��,<a style="cursor:hand" onClick="javascript:window.print();">��ӡ��ҳ</a>
</body>
</html>


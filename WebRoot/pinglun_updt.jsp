
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
    
    <title>����</title><script language="javascript" src="js/Calendar.js"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	    <script type="text/javascript">
	    function up(tt)
	    {
	        var pop=new Popup({ contentType:1,isReloadOnClose:false,width:300,height:50});
            pop.setContent("contentUrl","upload.jsp?Result="+tt);
            pop.setContent("title","�ļ��ϴ�");
            pop.build();
            pop.show();
	    }
	</script>
    <LINK href="CSS.css" type=text/css rel=stylesheet>

  </head>
<script language="javascript">
function check()
{
	if(document.form1.xinwenID.value==""){alert("����������ID");document.form1.xinwenID.focus();return false;}if(document.form1.pinglunneirong.value==""){alert("��������������");document.form1.pinglunneirong.focus();return false;}if(document.form1.pinglunren.value==""){alert("������������");document.form1.pinglunren.focus();return false;}
}
</script>
  <body >
  <%
  String id=request.getParameter("id");
   %>
  <form name="form1" id="form1" method="post" action="pinglun_updt_post.jsp?id=<%=id %>">
  �޸�����:
  <br><br>
  <%
  String sql="select * from pinglun where id="+id;
  String xinwenID="";String pinglunneirong="";String pinglunren="";
  ResultSet RS_result=connDbBean.executeQuery(sql);
  while(RS_result.next()){
  xinwenID=RS_result.getString("xinwenID");pinglunneirong=RS_result.getString("pinglunneirong");pinglunren=RS_result.getString("pinglunren");
  }
   %>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
     <tr><td>����ID��</td><td><input name='xinwenID' type='text' id='xinwenID' value='<%= xinwenID%>' /></td></tr><tr><td>�������ݣ�</td><td><textarea name='pinglunneirong' cols='50' rows='5' id='pinglunneirong'><%=pinglunneirong%></textarea></td></tr><tr><td>�����ˣ�</td><td><input name='pinglunren' type='text' id='pinglunren' value='<%= pinglunren%>' /></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ" onclick="return check();" />
      <input type="reset" name="Submit2" value="����" /></td>
    </tr>
  </table>
</form>

  </body>
</html>



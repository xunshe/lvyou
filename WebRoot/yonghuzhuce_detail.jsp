
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
    
    <title>�û�ע����ϸ</title><script language="javascript" src="js/Calendar.js"></script>
	
    <LINK href="CSS.css" type=text/css rel=stylesheet>

  </head>
<script language="javascript">
function check()
{
	fewgidsoidfjdkgds
}
</script>
  <body >
  <%
  String id=request.getParameter("id");
   %>

  �û�ע����ϸ:
  <br><br>
  <%
  String sql="select * from yonghuzhuce where id="+id;
  String yonghuming="";String mima="";String xingming="";String xingbie="";String chushengnianyue="";String QQ="";String youxiang="";String dianhua="";String shenfenzheng="";String touxiang="";String dizhi="";String beizhu="";
  ResultSet RS_result=connDbBean.executeQuery(sql);
  while(RS_result.next()){
  yonghuming=RS_result.getString("yonghuming");mima=RS_result.getString("mima");xingming=RS_result.getString("xingming");xingbie=RS_result.getString("xingbie");chushengnianyue=RS_result.getString("chushengnianyue");QQ=RS_result.getString("QQ");youxiang=RS_result.getString("youxiang");dianhua=RS_result.getString("dianhua");shenfenzheng=RS_result.getString("shenfenzheng");touxiang=RS_result.getString("touxiang");dizhi=RS_result.getString("dizhi");beizhu=RS_result.getString("beizhu");
  }
   %>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
     <td width='11%'>�û�����</td><td width='39%'><%=yonghuming%></td><td width='11%'>���룺</td><td width='39%'><%=mima%></td></tr><tr><td width='11%'>������</td><td width='39%'><%=xingming%></td><td width='11%'>�Ա�</td><td width='39%'><%=xingbie%></td></tr><tr><td width='11%'>�������£�</td><td width='39%'><%=chushengnianyue%></td><td width='11%'>QQ��</td><td width='39%'><%=QQ%></td></tr><tr><td width='11%'>���䣺</td><td width='39%'><%=youxiang%></td><td width='11%'>�绰��</td><td width='39%'><%=dianhua%></td></tr><tr><td width='11%'>���֤��</td><td width='39%'><%=shenfenzheng%></td><td width='11%'>ͷ��</td><td width='39%'><%=touxiang%></td></tr><tr><td width='11%'>��ַ��</td><td width='39%'><%=dizhi%></td><td width='11%'>��ע��</td><td width='39%'><%=beizhu%></td>
    <tr>
      <td colspan="4" align="center"><input type="button" name="Submit" value="����" onclick="javascript:history.back()" /></td>
    </tr>
  </table>

  </body>
</html>



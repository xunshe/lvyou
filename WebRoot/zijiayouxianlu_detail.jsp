
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
    
    <title>�Լ�����·��ϸ</title><script language="javascript" src="js/Calendar.js"></script>
	
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

  �Լ�����·��ϸ:
  <br><br>
  <%
  String sql="select * from zijiayouxianlu where id="+id;
  String xianlubianhao="";String xianlumingcheng="";String chufadi="";String mudedi="";String jiaotonggongju="";String feiyong="";String chuxingshijian="";String beizhu="";String faburen="";
  ResultSet RS_result=connDbBean.executeQuery(sql);
  while(RS_result.next()){
  xianlubianhao=RS_result.getString("xianlubianhao");xianlumingcheng=RS_result.getString("xianlumingcheng");chufadi=RS_result.getString("chufadi");mudedi=RS_result.getString("mudedi");jiaotonggongju=RS_result.getString("jiaotonggongju");feiyong=RS_result.getString("feiyong");chuxingshijian=RS_result.getString("chuxingshijian");beizhu=RS_result.getString("beizhu");faburen=RS_result.getString("faburen");
  }
   %>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
     <td width='11%'>��·��ţ�</td><td width='39%'><%=xianlubianhao%></td><td width='11%'>��·���ƣ�</td><td width='39%'><%=xianlumingcheng%></td></tr><tr><td width='11%'>�����أ�</td><td width='39%'><%=chufadi%></td><td width='11%'>Ŀ�ĵأ�</td><td width='39%'><%=mudedi%></td></tr><tr><td width='11%'>��ͨ���ߣ�</td><td width='39%'><%=jiaotonggongju%></td><td width='11%'>���ã�</td><td width='39%'><%=feiyong%></td></tr><tr><td width='11%'>����ʱ�䣺</td><td width='39%'><%=chuxingshijian%></td><td width='11%'>��ע��</td><td width='39%'><%=beizhu%></td></tr><tr><td width='11%'>�����ˣ�</td><td width='39%'><%=faburen%></td><td>&nbsp;</td><td>&nbsp;</td>
    <tr>
      <td colspan="4" align="center"><input type="button" name="Submit" value="����" onclick="javascript:history.back()" /></td>
    </tr>
  </table>

  </body>
</html>



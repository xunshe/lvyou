<%@ page language="java"  pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="db.db"/>

<html>
<head>
<title>��������������վ</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"><LINK href="qtimages/style.css" type=text/css rel=stylesheet>
<style type="text/css">
<!--
.STYLE1 {color: #006666}
.STYLE2 {color: #006666; font-weight: bold; }
.STYLE5 {
	color: #FFFFFF;
	font-weight: bold;
}
.STYLE6 {color: #FFCC33}
.STYLE7 {	color: #0066CC;
	font-weight: bold;
}
-->
</style></head>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0"><%@ include file="qttop.jsp"%>
  <%
  String id=request.getParameter("id");
  connDbBean.executeUpdate("update xinwentongzhi set dianjilv=dianjilv+1 where id="+id);
   %>
<table width="978" height="1081" border="0" align="center" cellpadding="0" cellspacing="0" id="__01">
	<tr>
		<td></td>
	</tr>
	<tr>
		<td valign="top"><table id="__01" width="978" height="785" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td valign="top"><%@ include file="qtleft.jsp"%></td>
            <td valign="top"><table id="__01" width="758" height="785" border="0" cellpadding="0" cellspacing="0">
              
              <tr>
                <td height="785" valign="top"><table id="__01" width="758" height="100%" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="758" height="42" background="qtimages/1_02_02_02_01.jpg"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="5%">&nbsp;</td>
                        <td width="95%" class="STYLE2"><strong>�Լ�����·</strong></td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td height="100%" valign="top"><table id="__01" width="758" height="100%" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td background="qtimages/1_02_02_02_02_01.jpg">&nbsp;</td>
                        <td width="733" height="183" valign="top"><p align="center">
                          <%
  String sql="select * from zijiayouxianlu where id="+id;
  String xianlubianhao="";String xianlumingcheng="";String chufadi="";String mudedi="";String jiaotonggongju="";String feiyong="";String chuxingshijian="";String beizhu="";String faburen="";
  ResultSet RS_result=connDbBean.executeQuery(sql);
  while(RS_result.next()){
  xianlubianhao=RS_result.getString("xianlubianhao");xianlumingcheng=RS_result.getString("xianlumingcheng");chufadi=RS_result.getString("chufadi");mudedi=RS_result.getString("mudedi");jiaotonggongju=RS_result.getString("jiaotonggongju");feiyong=RS_result.getString("feiyong");chuxingshijian=RS_result.getString("chuxingshijian");beizhu=RS_result.getString("beizhu");faburen=RS_result.getString("faburen");
  }
   %>
</p>
                          <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
  <td width='11%'>��·��ţ�</td>
      <td width='39%'><%=xianlubianhao%></td>
    <td width='11%'>��·���ƣ�</td>
    <td width='39%'><%=xianlumingcheng%></td>
  </tr><tr>
    <td width='11%'>�����أ�</td>
    <td width='39%'><%=chufadi%></td>
    <td width='11%'>Ŀ�ĵأ�</td>
    <td width='39%'><%=mudedi%></td>
  </tr>
  <tr>
    <td width='11%'>��ͨ���ߣ�</td>
    <td width='39%'><%=jiaotonggongju%></td>
    <td width='11%'>���ã�</td>
    <td width='39%'><%=feiyong%></td>
  </tr>
  <tr>
    <td width='11%'>����ʱ�䣺</td>
    <td width='39%'><%=chuxingshijian%></td>
    <td width='11%'>�����ˣ�</td>
    <td width='39%'><%=faburen%></td>
  </tr>
  <tr>
    <td width='11%' height="72">��ע��</td>
    <td colspan="3"><%=beizhu%></td>
    <tr>
      <td colspan="4" align="center"><table width="98%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">
        <tr>
          <td width="30" align="center" bgcolor="CCFFFF">���</td>
          <td width="382" bgcolor='#CCFFFF'>��������</td>
          <td width="54" bgcolor='#CCFFFF'>������</td>
          <td width="138" align="center" bgcolor="CCFFFF">���ʱ��</td>
        </tr>
        <%
   sql="";
  sql="select * from pinglun where xinwenID='"+id+"'";
  
  sql=sql+" order by id desc";
  RS_result=connDbBean.executeQuery(sql);
 String xinwenID="";String pinglunneirong="";String pinglunren="";
 String addtime="";
 int i=0;
 
 
 
 
 
 while(RS_result.next()){
 i=i+1;
xinwenID=RS_result.getString("xinwenID");pinglunneirong=RS_result.getString("pinglunneirong");pinglunren=RS_result.getString("pinglunren");
 addtime=RS_result.getString("addtime");
 
 
%>
        <tr>
          <td width="30" align="center"><%=i %></td>
          <td><%=pinglunneirong %></td>
          <td><%=pinglunren %></td>
          <td width="138" align="center"><%=addtime %></td>
        </tr>
        <%
  }
   %>
      </table></td>
    </tr>
    <tr>
    <td colspan="4" align="center"><input type="button" name="Submit5" value="����" onClick="javascript:history.back()" />
      <input type="button" name="Submit522" value="��Ҫ����" onClick="javascript:location.href='pinglunadd.jsp?id=<%=id%>';" /></td>
  </tr>
                          </table>
                          <p align="center">&nbsp;</p>
</td>
                        <td width="13" background="qtimages/1_02_02_02_02_03.jpg">&nbsp;</td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td height="11"><img src="qtimages/1_02_02_02_03.jpg" width="758" height="11" alt=""></td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
              </tr>
            </table></td>
          </tr>
      </table></td>
	</tr>
	<tr>
		<td><%@ include file="qtdown.jsp"%></td>
	</tr>
</table>

</body>
</html>
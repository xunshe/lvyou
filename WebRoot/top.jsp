
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
    
    <title>��������������վ</title>
<LINK 
href="images/main/top/css.css" rel=stylesheet>
<style type="text/css">
<!--
.style1 {
	color: #FFFFFF;
	font-weight: bold;
}
.STYLE3 {
	font-size: 20pt;
	color: #FFFFFF;
	font-weight: bold;
}
.STYLE4 {COLOR: #FFFFFF; FONT-FAMILY: "Arial", "����"; TEXT-DECORATION: none; font-size: 9pt;}
.STYLE5 {color: #FFFFFF}
-->
</style>


  </head>

<BODY bgColor=#ffffff leftMargin=0 topMargin=0 marginheight="0" marginwidth="0"> 
<TABLE cellSpacing=0 cellPadding=0 width="100%" align=center border=0> 
  <TBODY> 
    <TR id=topmnuList> 
      <TD width="100%" height=33 align=middle> <TABLE style="WIDTH: 100%; HEIGHT: 56px" cellSpacing=0 cellPadding=0 
      align=center border=0> 
          <TBODY> 
            <TR> 
              <TD height="87" background="images/top_bg.gif"><table width="1315" height="64" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="10">&nbsp;</td>
                  <td width="417">&nbsp;</td>
                  <td width="535"><span class="STYLE4">��ǰ�û���<%=request.getSession().getAttribute("username")%> ����Ȩ�ޣ�<%=request.getSession().getAttribute("cx")%> ллʹ�ñ�ϵͳ��</span><span class="STYLE5">����ʱ��: 
                      <SCRIPT language=JavaScript>         
 today=new Date();
 function initArray(){
   this.length=initArray.arguments.length
   for(var i=0;i<this.length;i++)
   this[i+1]=initArray.arguments[i]  }
   var d=new initArray(
     "������",
     "����һ",
     "���ڶ�",
     "������",
     "������",
     "������",
     "������");
document.write(
     "<font color=#000000 style='font-size:9pt;'> ",
     today.getFullYear(),"��",
     today.getMonth()+1,"��",
     today.getDate(),"��   ",
     d[today.getDay()+1],
     "</font>" ); 
                                      </SCRIPT>
                    </span></td>
                  <td width="353"><TABLE width="299" border=0 cellPadding=0 cellSpacing=0>
                    <TBODY>
                      <TR>
                        <TD width="106" height="51">&nbsp;</TD>
                        <td width="14">&nbsp;</td>
                        <td width="14">&nbsp;</td>
                        <td width="14">&nbsp;</td>
                        <td width="14">&nbsp;</td>
                        <td width="14">&nbsp;</td>
                        <td width="52">&nbsp;</td>
                        <TD width="71" height="51" background="images/5.png"><table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                              <td height="36">&nbsp;</td>
                            </tr>
                            <tr>
                              <td align="center"><a href="logout.jsp" target="_top">��ȫ�˳�</a></td>
                            </tr>
                        </table></TD>
                      </TR>
                      <TR>
                        <TD colSpan=4 
height=6></TD>
                      </TR>
                    </TBODY>
                  </TABLE></td>
                </tr>
              </table></TD> 
            </TR> 
          </TBODY> 
        </TABLE></TD> 
    </TR> 
  </TBODY> 
</TABLE> 
</BODY>
</HTML>

<%@ page language="java"  pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="db.db"/>

<html>
<head>
<title>��������������վ</title><script language="javascript" src="js/Calendar.js"></script>
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
String sql;
ResultSet RS_result;
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
                        <td width="733" height="183" valign="top"><form name="form1" id="form1" method="post" action="">
                          ��·���
                          <input name="xianlubianhao" type="text" id="xianlubianhao" size="10" />
                          ��·����
  <input name="xianlumingcheng" type="text" id="xianlumingcheng" size="15" />
                          Ŀ�ĵ�
  <input name="mudedi" type="text" id="mudedi" size="15" />
                          <br>
                          ��ͨ����
  <select name='jiaotonggongju' id='jiaotonggongju'>
    <option value="">����</option>
    <option value="��">��</option>
    <option value="����">����</option>
    <option value="�ɻ�">�ɻ�</option>
    <option value="�ִ�">�ִ�</option>
    <option value="����">����</option>
    <option value="���г�">���г�</option>
  </select>
                          ����ʱ��
  <input name="chuxingshijian1" type="text" id="chuxingshijian1"  value='' onClick="getDate(form1.chuxingshijian1,'2')" need="1" size="10" />
                          -
  <input name="chuxingshijian2" type="text" id="chuxingshijian2"  value='' onClick="getDate(form1.chuxingshijian2,'2')" need="1" size="10"  />
                          ������
  <input name="faburen" type="text" id="faburen" size="10" />
  <input type="submit" name="Submit5" value="����" />
                        </form>
                          <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">
                            <tr>
                              <td width="30" align="center" bgcolor="CCFFFF">���</td>
                              <td width="104" bgcolor='#CCFFFF'>��·���</td>
                              <td width="104" bgcolor='#CCFFFF'>��·����</td>
                              <td width="80" bgcolor='#CCFFFF'>Ŀ�ĵ�</td>
                              <td width="104" bgcolor='#CCFFFF'>��ͨ����</td>
                              <td bgcolor='#CCFFFF' width='65' align='center'>����ʱ��</td>
                              <td width="122" bgcolor='#CCFFFF'>������</td>
                              <td width="49" align="center" bgcolor="CCFFFF">����</td>
                            </tr>
                            <%
   int curpage=1;//��ǰҳ
				int page_record=10;//ÿҳ��ʾ�ļ�¼��
				int zgs=0;
				int zys=0;
				//������ķ�����sql��ѯ��ɣ��ٶȿ죩
				String hsgnpage=request.getParameter("page");
				String fysql="select count(id) as ss from zijiayouxianlu";
				ResultSet RS_resultfy=connDbBean.executeQuery(fysql);
  while(RS_resultfy.next()){
  zgs=Integer.parseInt(RS_resultfy.getString("ss"));
  zys=zgs/page_record+1;
  }
				if (hsgnpage!=null)
				{
				curpage=Integer.parseInt(request.getParameter("page"));//��ȡ���ݵ�ֵ����Ҫ��ʾ��ҳ
				}
				else
				{
				curpage=1;
				}
				if (curpage==0)
				{
					curpage=1;
				}
				if(curpage>zys)
				{
					curpage=zys;
				}
				 int curpage2=curpage-1;
   sql="";
  sql="select  * from zijiayouxianlu where 1=1 ";
  
if(request.getParameter("xianlubianhao")=="" ||request.getParameter("xianlubianhao")==null ){}else{sql=sql+" and xianlubianhao like '%"+new String(request.getParameter("xianlubianhao").getBytes("8859_1"))+"%'";}
if(request.getParameter("xianlumingcheng")=="" ||request.getParameter("xianlumingcheng")==null ){}else{sql=sql+" and xianlumingcheng like '%"+new String(request.getParameter("xianlumingcheng").getBytes("8859_1"))+"%'";}
if(request.getParameter("mudedi")=="" ||request.getParameter("mudedi")==null ){}else{sql=sql+" and mudedi like '%"+new String(request.getParameter("mudedi").getBytes("8859_1"))+"%'";}
if(request.getParameter("jiaotonggongju")=="����" ||request.getParameter("jiaotonggongju")==null ){}else{sql=sql+" and jiaotonggongju like '%"+new String(request.getParameter("jiaotonggongju").getBytes("8859_1"))+"%'";}
if (request.getParameter("chuxingshijian1")==""  ||request.getParameter("chuxingshijian1")==null ) {}else{sql=sql+" and chuxingshijian >= '"+new String(request.getParameter("chuxingshijian1").getBytes("8859_1"))+"'";}
if (request.getParameter("chuxingshijian2")==""  ||request.getParameter("chuxingshijian2")==null ) {}else {sql=sql+" and chuxingshijian <= '"+new String(request.getParameter("chuxingshijian2").getBytes("8859_1"))+"'";}
if(request.getParameter("faburen")=="" ||request.getParameter("faburen")==null ){}else{sql=sql+" and faburen like '%"+new String(request.getParameter("faburen").getBytes("8859_1"))+"%'";}
  sql=sql+" order by id desc  limit "+curpage2+","+page_record;
  RS_result=connDbBean.executeQuery(sql);
 String id="";
 String xianlubianhao="";String xianlumingcheng="";String chufadi="";String mudedi="";String jiaotonggongju="";String feiyong="";String chuxingshijian="";String beizhu="";String faburen="";
 String addtime="";
 int i=0;
 while(RS_result.next()){
 i=i+1;
 id=RS_result.getString("id");
xianlubianhao=RS_result.getString("xianlubianhao");xianlumingcheng=RS_result.getString("xianlumingcheng");chufadi=RS_result.getString("chufadi");mudedi=RS_result.getString("mudedi");jiaotonggongju=RS_result.getString("jiaotonggongju");feiyong=RS_result.getString("feiyong");chuxingshijian=RS_result.getString("chuxingshijian");beizhu=RS_result.getString("beizhu");faburen=RS_result.getString("faburen");
 addtime=RS_result.getString("addtime");
%>
                            <tr>
                              <td width="30" align="center"><%=i %></td>
                              <td><%=xianlubianhao %></td>
                              <td><%=xianlumingcheng %></td>
                              <td><%=mudedi %></td>
                              <td><%=jiaotonggongju %></td>
                              <td><%=chuxingshijian %></td>
                              <td><%=faburen %></td>
                              <td width="49" align="center"><a href="zijiayouxianludetail.jsp?id=<%=id%>">��ϸ</a></td>
                            </tr>
                            <%
  }
   %>
                          </table>
                          <br>
�������ݹ�<%=i %>��,<a style="cursor:hand" onClick="javascript:window.print();">��ӡ��ҳ</a>
<p align="center">&nbsp;��<%=zgs%>����¼&nbsp;&nbsp;<%=page_record %>��/ҳ��<a href="zijiayouxianlulist.jsp?page=1">��ҳ</a>��<a href="zijiayouxianlulist.jsp?page=<%= curpage-1%>">��һҳ</a>��<A href="zijiayouxianlulist.jsp?page=<%= curpage+1%>">��һҳ</A>��<a href="zijiayouxianlulist.jsp?page=<%=zys %>">βҳ</A>����ǰ��<FONT color=red><%=curpage %></FONT>ҳ/��<FONT color=red><%=zys %></FONT>ҳ</p>
<p align="center">&nbsp;</p>
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
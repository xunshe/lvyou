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
    <title>�Ƶ�Ԥ��</title><LINK href="CSS.css" type=text/css rel=stylesheet><script language="javascript" src="js/Calendar.js"></script>
  </head>
  <%
String sql;
ResultSet RS_result;
%>
  <body >
  <p>���оƵ�Ԥ���б�</p>
  <form name="form1" id="form1" method="post" action="">
   ����: �Ƶ����ƣ�<input name="jiudianmingcheng" type="text" id="jiudianmingcheng" /> �ͷ���ţ�<input name="kefangbianhao" type="text" id="kefangbianhao" />
   <input type="submit" name="Submit" value="����" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td bgcolor='#CCFFFF'>�Ƶ�����</td><td bgcolor='#CCFFFF'>�ͷ����</td><td bgcolor='#CCFFFF'>�۸�</td><td bgcolor='#CCFFFF'>Ԥ��ʱ��</td><td bgcolor='#CCFFFF'>Ԥ������</td><td bgcolor='#CCFFFF'>��������</td><td bgcolor='#CCFFFF'>���ĵ绰</td><td bgcolor='#CCFFFF'>�������֤</td><td bgcolor='#CCFFFF'>��ע</td><td bgcolor='#CCFFFF'>�û���</td><td bgcolor='#CCFFFF' width='80' align='center'>�Ƿ����</td>
    <td width="138" align="center" bgcolor="CCFFFF">���ʱ��</td>
    <td width="60" align="center" bgcolor="CCFFFF">����</td>
  </tr>
  <%
  int curpage=1;//��ǰҳ
				int page_record=10;//ÿҳ��ʾ�ļ�¼��
				int zgs=0;
				int zys=0;
				//������ķ�����sql��ѯ��ɣ��ٶȿ죩
				String hsgnpage=request.getParameter("page");
				String fysql="select count(id) as ss from jiudianyuding where yonghuming='"+request.getSession().getAttribute("username")+"'";
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
  sql="select  * from jiudianyuding where yonghuming='"+request.getSession().getAttribute("username")+"' ";
  
if(request.getParameter("jiudianmingcheng")=="" ||request.getParameter("jiudianmingcheng")==null ){}else{sql=sql+" and jiudianmingcheng like '%"+new String(request.getParameter("jiudianmingcheng").getBytes("8859_1"))+"%'";}
if(request.getParameter("kefangbianhao")=="" ||request.getParameter("kefangbianhao")==null ){}else{sql=sql+" and kefangbianhao like '%"+new String(request.getParameter("kefangbianhao").getBytes("8859_1"))+"%'";}
  sql=sql+"order by id desc limit "+curpage2+","+page_record;
  RS_result=connDbBean.executeQuery(sql);
 String id="";
 String jiudianmingcheng="";String kefangbianhao="";String jiage="";String yudingshijian="";String yudingtianshu="";String nindexingming="";String nindedianhua="";String nindeshenfenzheng="";String beizhu="";String yonghuming="";String issh="";
 String addtime="";
 int i=0;
 
 
 
 
 
 while(RS_result.next()){
 i=i+1;
 id=RS_result.getString("id");
jiudianmingcheng=RS_result.getString("jiudianmingcheng");kefangbianhao=RS_result.getString("kefangbianhao");jiage=RS_result.getString("jiage");yudingshijian=RS_result.getString("yudingshijian");yudingtianshu=RS_result.getString("yudingtianshu");nindexingming=RS_result.getString("nindexingming");nindedianhua=RS_result.getString("nindedianhua");nindeshenfenzheng=RS_result.getString("nindeshenfenzheng");beizhu=RS_result.getString("beizhu");yonghuming=RS_result.getString("yonghuming");issh=RS_result.getString("issh");
 addtime=RS_result.getString("addtime");
 
 
%>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=jiudianmingcheng %></td><td><%=kefangbianhao %></td><td><%=jiage %></td><td><%=yudingshijian %></td><td><%=yudingtianshu %></td><td><%=nindexingming %></td><td><%=nindedianhua %></td><td><%=nindeshenfenzheng %></td><td><%=beizhu %></td><td><%=yonghuming %></td><td width='80' align='center'><%=issh%></td>
    <td width="138" align="center"><%=addtime %></td>
    <td width="60" align="center"><a href="jiudianyuding_updt.jsp?id=<%=id%>">�޸�</a>  <a href="del.jsp?id=<%=id %>&tablename=jiudianyuding" onClick="return confirm('���Ҫɾ����')">ɾ��</a></td>
  </tr>
  	<%
  }
   %>
</table><br>
�������ݹ�<%=i %>��,<a style="cursor:hand" onClick="javascript:window.print();">��ӡ��ҳ</a>
<p align="center">&nbsp;��<%=zgs%>����¼&nbsp;&nbsp;<%=page_record %>��/ҳ��<a href="jiudianyuding_list2.jsp?page=1">��ҳ</a>��<a href="jiudianyuding_list2.jsp?page=<%= curpage-1%>">��һҳ</a>��<A href="jiudianyuding_list2.jsp?page=<%= curpage+1%>">��һҳ</A>��<a href="jiudianyuding_list2.jsp?page=<%=zys %>">βҳ</A>����ǰ��<FONT color=red><%=curpage %></FONT>ҳ/��<FONT color=red><%=zys %></FONT>ҳ</p>
  </body>
</html>


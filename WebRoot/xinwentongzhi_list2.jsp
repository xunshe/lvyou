
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
    
    <title>����֪ͨ</title><LINK href="CSS.css" type=text/css 
rel=stylesheet>
    

  </head>
 <%
String lb=new String(request.getParameter("lb").getBytes("8859_1"));
if (lb==null)
{
	lb="վ������";
}
 %>
  <body >
  <p>����<%=lb%>�б�</p>
  <form name="form1" id="form1" method="post" action="">
   ����: ���⣺<input name="biaoti" type="text" id="biaoti" />
   <input type="submit" name="Submit" value="����" />
   <input type="button" name="Submit2" value="����" onClick="javascript:location.href='xinwentongzhi_add.jsp?lb=<%=lb%>';" />
  </form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td bgcolor='#CCFFFF'>����</td><td bgcolor='#CCFFFF'>���</td><td bgcolor='#CCFFFF'>�����</td><td bgcolor='#CCFFFF'>��ҳͼƬ</td><td bgcolor='#CCFFFF'>�����</td>
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
				String fysql="select count(id) as ss from xinwentongzhi where leibie='"+lb+"' and tianjiaren='"+request.getSession().getAttribute("username")+"'";
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
  String sql="";
  sql="select  * from xinwentongzhi where leibie='"+lb+"' and tianjiaren='"+request.getSession().getAttribute("username")+"' and 1=1 ";
  
if(request.getParameter("biaoti")=="" ||request.getParameter("biaoti")==null ){}else{sql=sql+" and biaoti like '%"+new String(request.getParameter("biaoti").getBytes("8859_1"))+"%'";}
  sql=sql+" order by id desc  limit "+curpage2+","+page_record;
 ResultSet RS_result=connDbBean.executeQuery(sql);
 String id="";
 String biaoti="";String leibie="";String neirong="";String tianjiaren="";String shouyetupian="";String dianjilv="";
 String addtime="";
 int i=0;
 
 
 
 
 
 while(RS_result.next()){
 i=i+1;
 id=RS_result.getString("id");
biaoti=RS_result.getString("biaoti");
leibie=RS_result.getString("leibie");
tianjiaren=RS_result.getString("tianjiaren");
shouyetupian=RS_result.getString("shouyetupian");
dianjilv=RS_result.getString("dianjilv");
 addtime=RS_result.getString("addtime");
 
 
%>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=biaoti %></td><td><%=leibie %></td><td><%=tianjiaren %></td><td>
	<%
		if (shouyetupian==null || shouyetupian.equals("") || shouyetupian.equals("null"))
		{
		%>
		
		<%
		}
		else
		{
		%>
	<a href='<%=shouyetupian %>' target='_blank'><img src='<%=shouyetupian %>' width=88 height=99 border=0 /></a>
		<%
		}
	%>
	
	</td><td><%=dianjilv %></td>
    <td width="138" align="center"><%=addtime %></td>
    <td width="60" align="center"><a href="xinwentongzhi_updt.jsp?id=<%=id%>">�޸�</a>  <a href="delgg.jsp?id=<%=id %>&tablename=xinwentongzhi&lb=<%=lb%>" onClick="return confirm('���Ҫɾ����')">ɾ��</a></td>
  </tr>
  	<%
  }
   %>
</table><br>
�������ݹ�<%=i %>��,<a style="cursor:hand" onClick="javascript:window.print();">��ӡ��ҳ</a>
<p align="center">&nbsp;��<%=zgs%>����¼&nbsp;&nbsp;<%=page_record %>��/ҳ��<a href="xinwentongzhi_list2.jsp?page=1&lb=<%=lb%>">��ҳ</a>��<a href="xinwentongzhi_list2.jsp?page=<%= curpage-1%>&lb=<%=lb%>">��һҳ</a>��<A href="xinwentongzhi_list2.jsp?page=<%= curpage+1%>&lb=<%=lb%>">��һҳ</A>��<a href="xinwentongzhi_list2.jsp?page=<%=zys %>&lb=<%=lb%>">βҳ</A>����ǰ��<FONT color=red><%=curpage %></FONT>ҳ/��<FONT color=red><%=zys %></FONT>ҳ</p>
  </body>
</html>


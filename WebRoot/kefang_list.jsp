
<%@ page language="java"  pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page language="java" import="java.sql.*" %>
<%@ page import="java.net.URLDecoder" %>
<%@ page import="java.net.URLEncoder" %>
<jsp:useBean id="connDbBean" scope="page" class="db.db"/>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>�ͷ�</title><LINK href="CSS.css" type=text/css rel=stylesheet><script language="javascript" src="js/Calendar.js"></script>
    

  </head>
<%
String sql;
ResultSet RS_result;
    String jdDecode = URLDecoder.decode(request.getParameter("jd"), "UTF-8");
    String jd = URLEncoder.encode(jdDecode, "UTF-8");
%>
  <body >
  <p>���пͷ��б�</p>
  <form name="form1" id="form1" method="post" action="">
   ����: �Ƶ꣺<input name="jiudian" type="text" id="jiudian" /> �ͷ���ţ�<input name="kefangbianhao" type="text" id="kefangbianhao" />���ͣ�
   <select name='leixing' id='leixing'>
     <option value="">����</option>
     <option value="������">������</option>
     <option value="������">������</option>
     <option value="������">������</option>
     <option value="��ͳ��">��ͳ��</option>
   </select>
   ��С��
   <select name='daxiao' id='daxiao'>
     <option value="">����</option>
     <option value="���˼�">���˼�</option>
     <option value="˫�˼�">˫�˼�</option>
     <option value="���˼�">���˼�</option>
     <option value="���˼�">���˼�</option>
   </select>
   <input type="submit" name="Submit" value="����" />
   <input type="button" name="Submit2" value="���" onClick="javascript:location.href='kefang_add.jsp?jd=<%=jd%>';" />
  </form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td bgcolor='#CCFFFF'>�Ƶ�</td><td bgcolor='#CCFFFF'>�ͷ����</td><td bgcolor='#CCFFFF'>����</td><td bgcolor='#CCFFFF'>��С</td><td bgcolor='#CCFFFF'>�۸�</td><td bgcolor='#CCFFFF'>��ע</td>
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
				String fysql="select count(id) as ss from kefang where jiudian='"+jdDecode+"'";
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
  sql="select * from kefang where jiudian='"+jdDecode+"' and 1=1 ";
  
if(request.getParameter("jiudian")=="" ||request.getParameter("jiudian")==null ){}else{sql=sql+" and jiudian like '%"+new String(request.getParameter("jiudian").getBytes("8859_1"))+"%'";}
if(request.getParameter("kefangbianhao")=="" ||request.getParameter("kefangbianhao")==null ){}else{sql=sql+" and kefangbianhao like '%"+new String(request.getParameter("kefangbianhao").getBytes("8859_1"))+"%'";}
if(request.getParameter("leixing")=="����" ||request.getParameter("leixing")==null ){}else{sql=sql+" and leixing like '%"+new String(request.getParameter("leixing").getBytes("8859_1"))+"%'";}
if(request.getParameter("daxiao")=="����" ||request.getParameter("daxiao")==null ){}else{sql=sql+" and daxiao like '%"+new String(request.getParameter("daxiao").getBytes("8859_1"))+"%'";}
  sql=sql+" order by id desc limit "+curpage2+","+page_record;
  RS_result=connDbBean.executeQuery(sql);
 String id="";
 String jiudian="";String kefangbianhao="";String leixing="";String daxiao="";String jiage="";String beizhu="";
 String addtime="";
 int i=0;
 
 
 
 
 
 while(RS_result.next()){
 i=i+1;
 id=RS_result.getString("id");
jiudian=RS_result.getString("jiudian");kefangbianhao=RS_result.getString("kefangbianhao");leixing=RS_result.getString("leixing");daxiao=RS_result.getString("daxiao");jiage=RS_result.getString("jiage");beizhu=RS_result.getString("beizhu");
 addtime=RS_result.getString("addtime");
 
 
%>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=jiudian %></td><td><%=kefangbianhao %></td><td><%=leixing %></td><td><%=daxiao %></td><td><%=jiage %></td><td><%=beizhu %></td>
    <td width="138" align="center"><%=addtime %></td>
    <td width="60" align="center"><a href="kefang_updt.jsp?id=<%=id%>">�޸�</a>  <a href="del.jsp?id=<%=id %>&tablename=kefang" onClick="return confirm('���Ҫɾ����')">ɾ��</a></td>
  </tr>
  	<%
  }
   %>
</table><br>
�������ݹ�<%=i %>��,<a style="cursor:hand" onClick="javascript:window.print();">��ӡ��ҳ</a>
<p align="center">&nbsp;��<%=zgs%>����¼&nbsp;&nbsp;<%=page_record %>��/ҳ��<a href="kefang_list.jsp?page=1">��ҳ</a>��<a href="kefang_list.jsp?page=<%= curpage-1%>">��һҳ</a>��<A href="kefang_list.jsp?page=<%= curpage+1%>">��һҳ</A>��<a href="kefang_list.jsp?page=<%=zys %>">βҳ</A>����ǰ��<FONT color=red><%=curpage %></FONT>ҳ/��<FONT color=red><%=zys %></FONT>ҳ</p>
  </body>
</html>


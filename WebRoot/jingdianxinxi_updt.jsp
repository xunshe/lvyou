
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
    
    <title>������Ϣ</title><script language="javascript" src="js/Calendar.js"></script>
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
	if(document.form1.mingcheng.value==""){alert("����������");document.form1.mingcheng.focus();return false;}if(document.form1.xingji.value==""){alert("�������Ǽ�");document.form1.xingji.focus();return false;}
}
</script>
  <body >
  <%
  String id=request.getParameter("id");
   %>
  <form name="form1" id="form1" method="post" action="jingdianxinxi_updt_post.jsp?id=<%=id %>">
  �޸ľ�����Ϣ:
  <br><br>
  <%
  String sql="select * from jingdianxinxi where id="+id;
  String mingcheng="";String xingji="";String dizhi="";String dianhua="";String jianjie="";String zhaopian="";String piaojia="";
  ResultSet RS_result=connDbBean.executeQuery(sql);
  while(RS_result.next()){
  mingcheng=RS_result.getString("mingcheng");xingji=RS_result.getString("xingji");dizhi=RS_result.getString("dizhi");dianhua=RS_result.getString("dianhua");jianjie=RS_result.getString("jianjie");zhaopian=RS_result.getString("zhaopian");piaojia=RS_result.getString("piaojia");
  }
   %>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
     <tr><td>���ƣ�</td><td><input name='mingcheng' type='text' id='mingcheng' size='50' value='<%=mingcheng%>' /></td></tr><tr><td>�Ǽ���</td><td><select name='xingji' id='xingji'>
       <option value="һ�Ǽ�">һ�Ǽ�</option>
       <option value="���Ǽ�">���Ǽ�</option>
       <option value="���Ǽ�">���Ǽ�</option>
       <option value="���Ǽ�">���Ǽ�</option>
       <option value="���Ǽ�">���Ǽ�</option>
     </select></td></tr><script language="javascript">document.form1.xingji.value='<%=xingji%>';</script><tr><td>��ַ��</td><td><input name='dizhi' type='text' id='dizhi' size='50' value='<%=dizhi%>' /></td></tr><tr><td>�绰��</td><td><input name='dianhua' type='text' id='dianhua' value='<%= dianhua%>' /></td></tr><tr><td>��飺</td><td><textarea name='jianjie' cols='50' rows='5' id='jianjie'><%=jianjie%></textarea></td></tr><tr><td>��Ƭ��</td><td><input name='zhaopian' type='text' id='zhaopian' size='50' value='<%= zhaopian%>' />&nbsp;<input type='button' value='�ϴ�' onClick="up('zhaopian')"/></td></tr><tr><td>Ʊ�ۣ�</td><td><input name='piaojia' type='text' id='piaojia' value='<%= piaojia%>' /></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ" onClick="return check();" />
      <input type="reset" name="Submit2" value="����" /></td>
    </tr>
  </table>
</form>

  </body>
</html>



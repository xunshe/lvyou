
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
    
    <title>�ͷ�</title><script language="javascript" src="js/Calendar.js"></script>
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
	if(document.form1.jiudian.value==""){alert("������Ƶ�");document.form1.jiudian.focus();return false;}if(document.form1.kefangbianhao.value==""){alert("������ͷ����");document.form1.kefangbianhao.focus();return false;}if(document.form1.jiage.value==""){alert("������۸�");document.form1.jiage.focus();return false;}
}
</script>
  <body >
  <%
  String id=request.getParameter("id");
   %>
  <form name="form1" id="form1" method="post" action="kefang_updt_post.jsp?id=<%=id %>">
  �޸Ŀͷ�:
  <br><br>
  <%
  String sql="select * from kefang where id="+id;
  String jiudian="";String kefangbianhao="";String leixing="";String daxiao="";String jiage="";String beizhu="";
  ResultSet RS_result=connDbBean.executeQuery(sql);
  while(RS_result.next()){
  jiudian=RS_result.getString("jiudian");kefangbianhao=RS_result.getString("kefangbianhao");leixing=RS_result.getString("leixing");daxiao=RS_result.getString("daxiao");jiage=RS_result.getString("jiage");beizhu=RS_result.getString("beizhu");
  }
   %>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
     <tr><td>�Ƶ꣺</td><td><input name='jiudian' type='text' id='jiudian' size='50' value='<%=jiudian%>' /></td></tr><tr><td>�ͷ���ţ�</td><td><input name='kefangbianhao' type='text' id='kefangbianhao' value='<%= kefangbianhao%>' /></td></tr><tr><td>���ͣ�</td><td><select name='leixing' id='leixing'>
       <option value="������">������</option>
       <option value="������">������</option>
       <option value="������">������</option>
       <option value="��ͳ��">��ͳ��</option>
     </select></td></tr><script language="javascript">document.form1.leixing.value='<%=leixing%>';</script><tr><td>��С��</td><td><select name='daxiao' id='daxiao'>
       <option value="���˼�">���˼�</option>
       <option value="˫�˼�">˫�˼�</option>
       <option value="���˼�">���˼�</option>
       <option value="���˼�">���˼�</option>
     </select></td></tr><script language="javascript">document.form1.daxiao.value='<%=daxiao%>';</script><tr><td>�۸�</td><td><input name='jiage' type='text' id='jiage' value='<%= jiage%>' /></td></tr><tr><td>��ע��</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu'><%=beizhu%></textarea></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ" onClick="return check();" />
      <input type="reset" name="Submit2" value="����" /></td>
    </tr>
  </table>
</form>

  </body>
</html>



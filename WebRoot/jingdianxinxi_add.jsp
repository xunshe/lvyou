
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
    
    <title>������Ϣ</title><LINK href="CSS.css" type=text/css rel=stylesheet>
    <script language="javascript" src="js/Calendar.js"></script>
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
  </head>
<script language="javascript">
function check()
{
	if(document.form1.mingcheng.value==""){alert("����������");document.form1.mingcheng.focus();return false;}if(document.form1.xingji.value==""){alert("�������Ǽ�");document.form1.xingji.focus();return false;}
}
function gow()
{
	document.location.href="jingdianxinxi_add.jsp?jihuabifffanhao="+document.form1.jihuabifffanhao.value;
}
</script>
  <body >
  <form name="form1" id="form1" method="post" action="jingdianxinxi_add_post.jsp">
  ��Ӿ�����Ϣ:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">    <tr><td>���ƣ�</td><td><input name='mingcheng' type='text' id='mingcheng' value='' size='50' />&nbsp;*</td></tr><tr><td>�Ǽ���</td><td><select name='xingji' id='xingji'>
     <option value="һ�Ǽ�">һ�Ǽ�</option>
     <option value="���Ǽ�">���Ǽ�</option>
     <option value="���Ǽ�">���Ǽ�</option>
     <option value="���Ǽ�">���Ǽ�</option>
     <option value="���Ǽ�">���Ǽ�</option>
   </select>&nbsp;*</td></tr><tr><td>��ַ��</td><td><input name='dizhi' type='text' id='dizhi' value='' size='50' /></td></tr><tr><td>�绰��</td><td><input name='dianhua' type='text' id='dianhua' value='' /></td></tr><tr><td>��飺</td><td><textarea name='jianjie' cols='50' rows='5' id='jianjie'></textarea></td></tr><tr><td>��Ƭ��</td><td><input name='zhaopian' type='text' id='zhaopian' size='50' value='' />&nbsp;<input type='button' value='�ϴ�' onClick="up('zhaopian')"/></td></tr><tr><td>Ʊ�ۣ�</td><td><input name='piaojia' type='text' id='piaojia' value='' /></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ" onClick="return check();" />
      <input type="reset" name="Submit2" value="����" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


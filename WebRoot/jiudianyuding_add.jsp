
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
    
    <title>�Ƶ�Ԥ��</title><LINK href="CSS.css" type=text/css rel=stylesheet>
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
	if(document.form1.jiudianmingcheng.value==""){alert("������Ƶ�����");document.form1.jiudianmingcheng.focus();return false;}if(document.form1.kefangbianhao.value==""){alert("������ͷ����");document.form1.kefangbianhao.focus();return false;}if(document.form1.jiage.value==""){alert("������۸�");document.form1.jiage.focus();return false;}if(document.form1.yudingshijian.value==""){alert("������Ԥ��ʱ��");document.form1.yudingshijian.focus();return false;}if(document.form1.yudingtianshu.value==""){alert("������Ԥ������");document.form1.yudingtianshu.focus();return false;}if(document.form1.nindexingming.value==""){alert("��������������");document.form1.nindexingming.focus();return false;}if(document.form1.nindedianhua.value==""){alert("���������ĵ绰");document.form1.nindedianhua.focus();return false;}if(document.form1.nindeshenfenzheng.value==""){alert("�������������֤");document.form1.nindeshenfenzheng.focus();return false;}if(document.form1.yonghuming.value==""){alert("�������û���");document.form1.yonghuming.focus();return false;}
}
function gow()
{
	document.location.href="jiudianyuding_add.jsp?jihuabifffanhao="+document.form1.jihuabifffanhao.value;
}
</script>
  <body >
  <form name="form1" id="form1" method="post" action="jiudianyuding_add_post.jsp">
  ��ӾƵ�Ԥ��:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">    <tr><td>�Ƶ����ƣ�</td><td><input name='jiudianmingcheng' type='text' id='jiudianmingcheng' value='' size='50' />&nbsp;*</td></tr><tr><td>�ͷ���ţ�</td><td><input name='kefangbianhao' type='text' id='kefangbianhao' value='' />&nbsp;*</td></tr><tr><td>�۸�</td><td><input name='jiage' type='text' id='jiage' value='' />&nbsp;*</td></tr><tr><td>Ԥ��ʱ�䣺</td><td><input name='yudingshijian' type='text' id='yudingshijian' value=''  onClick="getDate(document.form1.yudingshijian,'2')" need='1' />&nbsp;*</td></tr><tr><td>Ԥ��������</td><td><input name='yudingtianshu' type='text' id='yudingtianshu' value='' />&nbsp;*</td></tr><tr><td>����������</td><td><input name='nindexingming' type='text' id='nindexingming' value='' />&nbsp;*</td></tr><tr><td>���ĵ绰��</td><td><input name='nindedianhua' type='text' id='nindedianhua' value='' />&nbsp;*</td></tr><tr><td>�������֤��</td><td><input name='nindeshenfenzheng' type='text' id='nindeshenfenzheng' value='' size='50' />&nbsp;*</td></tr><tr><td>��ע��</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu'></textarea></td></tr><tr><td>�û�����</td><td><input name='yonghuming' type='text' id='yonghuming' value='<%=request.getSession().getAttribute("username")%>' />&nbsp;*</td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ" onclick="return check();" />
      <input type="reset" name="Submit2" value="����" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


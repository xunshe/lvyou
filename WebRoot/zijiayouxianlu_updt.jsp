
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
    
    <title>�Լ�����·</title><script language="javascript" src="js/Calendar.js"></script>
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
	if(document.form1.xianlubianhao.value==""){alert("��������·���");document.form1.xianlubianhao.focus();return false;}if(document.form1.xianlumingcheng.value==""){alert("��������·����");document.form1.xianlumingcheng.focus();return false;}if(document.form1.faburen.value==""){alert("�����뷢����");document.form1.faburen.focus();return false;}
}
</script>
  <body >
  <%
  String id=request.getParameter("id");
   %>
  <form name="form1" id="form1" method="post" action="zijiayouxianlu_updt_post.jsp?id=<%=id %>">
  �޸��Լ�����·:
  <br><br>
  <%
  String sql="select * from zijiayouxianlu where id="+id;
  String xianlubianhao="";String xianlumingcheng="";String chufadi="";String mudedi="";String jiaotonggongju="";String feiyong="";String chuxingshijian="";String beizhu="";String faburen="";
  ResultSet RS_result=connDbBean.executeQuery(sql);
  while(RS_result.next()){
  xianlubianhao=RS_result.getString("xianlubianhao");xianlumingcheng=RS_result.getString("xianlumingcheng");chufadi=RS_result.getString("chufadi");mudedi=RS_result.getString("mudedi");jiaotonggongju=RS_result.getString("jiaotonggongju");feiyong=RS_result.getString("feiyong");chuxingshijian=RS_result.getString("chuxingshijian");beizhu=RS_result.getString("beizhu");faburen=RS_result.getString("faburen");
  }
   %>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
     <tr><td>��·��ţ�</td><td><input name='xianlubianhao' type='text' id='xianlubianhao' value='<%= xianlubianhao%>' /></td></tr><tr><td>��·���ƣ�</td><td><input name='xianlumingcheng' type='text' id='xianlumingcheng' size='50' value='<%=xianlumingcheng%>' /></td></tr><tr><td>�����أ�</td><td><input name='chufadi' type='text' id='chufadi' value='<%= chufadi%>' /></td></tr><tr><td>Ŀ�ĵأ�</td><td><input name='mudedi' type='text' id='mudedi' value='<%= mudedi%>' /></td></tr><tr><td>��ͨ���ߣ�</td><td><select name='jiaotonggongju' id='jiaotonggongju'>
       <option value="��">��</option>
       <option value="����">����</option>
	   <option value="�ɻ�">�ɻ�</option>
       <option value="�ִ�">�ִ�</option>
       <option value="����">����</option>
       <option value="���г�">���г�</option>
     </select></td></tr><script language="javascript">document.form1.jiaotonggongju.value='<%=jiaotonggongju%>';</script><tr><td>���ã�</td><td><input name='feiyong' type='text' id='feiyong' value='<%= feiyong%>' /></td></tr><tr><td>����ʱ�䣺</td><td><input name='chuxingshijian' type='text' id='chuxingshijian' value='<%= chuxingshijian%>' onClick="getDate(form1.chuxingshijian,'2')" need="1"  /></td></tr><tr><td>��ע��</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu'><%=beizhu%></textarea></td></tr><tr><td>�����ˣ�</td><td><input name='faburen' type='text' id='faburen' value='<%= faburen%>' /></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ" onClick="return check();" />
      <input type="reset" name="Submit2" value="����" /></td>
    </tr>
  </table>
</form>

  </body>
</html>



<%@ page language="java"  pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="db.db"/>

<html>
<head>
<title>��������������վ</title>
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
<script language="javascript">
function check()
{
	if(document.form1.yonghuming.value==""){alert("�������û���");document.form1.yonghuming.focus();return false;}if(document.form1.mima.value==""){alert("����������");document.form1.mima.focus();return false;}if(document.form1.xingming.value==""){alert("����������");document.form1.xingming.focus();return false;}
}
function gow()
{
	document.location.href="yonghuzhuce_add.jsp?jihuabifffanhao="+document.form1.jihuabifffanhao.value;
}
</script>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0"><%@ include file="qttop.jsp"%>

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
                        <td width="95%" class="STYLE2"><strong>�û�ע��</strong></td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td height="100%" valign="top"><table id="__01" width="758" height="100%" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td background="qtimages/1_02_02_02_02_01.jpg">&nbsp;</td>
                        <td width="733" height="183" valign="top"><form name="form1" method="post" action="yonghuzhuce_add_post.jsp">
                          <table width="98%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#F6C978" style="border-collapse:collapse">
                            <tr>
                              <td>�û�����</td>
                              <td><input name='yonghuming' type='text' id='yonghuming' value='' />
                                &nbsp;*</td>
                            </tr>
                            <tr>
                              <td>���룺</td>
                              <td><input name='mima' type='text' id='mima' value='' />
                                &nbsp;*</td>
                            </tr>
                            <tr>
                              <td>������</td>
                              <td><input name='xingming' type='text' id='xingming' value='' />
                                &nbsp;*</td>
                            </tr>
                            <tr>
                              <td>�Ա�</td>
                              <td><select name='xingbie' id='xingbie' style=" height:19px; border:solid 1px #000000; color:#666666">
                                  <option value="��">��</option>
                                  <option value="Ů">Ů</option>
                              </select></td>
                            </tr>
                            <tr>
                              <td>�������£�</td>
                              <td><input name='chushengnianyue' type='text' id='chushengnianyue' value=''  /> �밴��ʽ���뼴�ɣ��磺1999-09-09</td>
                            		
                            </tr>
                            <tr>
                              <td>QQ��</td>
                              <td><input name='QQ' type='text' id='QQ' value='' /></td>
                            </tr>
                            <tr>
                              <td>���䣺</td>
                              <td><input name='youxiang' type='text' id='youxiang' value='' /></td>
                            </tr>
                            <tr>
                              <td>�绰��</td>
                              <td><input name='dianhua' type='text' id='dianhua' value='' /></td>
                            </tr>
                            <tr>
                              <td>���֤��</td>
                              <td><input name='shenfenzheng' type='text' id='shenfenzheng' value='' /></td>
                            </tr>
                            <tr>
                              <td>ͷ��</td>
                              <td><input name='touxiang' type='text' id='touxiang' size='50' value='' />
                                &nbsp;
                                <input name="button" type='button' onClick="up('touxiang')" value='�ϴ�' style=" height:19px; border:solid 1px #000000; color:#666666"/></td>
                            </tr>
                            <tr>
                              <td>��ַ��</td>
                              <td><input name='dizhi' type='text' id='dizhi' value='' size='50' /></td>
                            </tr>
                            <tr>
                              <td>��ע��</td>
                              <td><textarea name='beizhu' cols='50' rows='5' id='beizhu'></textarea></td>
                            </tr>
                            <tr>
                              <td>&nbsp;</td>
                              <td><input type="submit" name="Submit5" value="�ύ" onClick="return check();" style=" height:19px; border:solid 1px #000000; color:#666666"/>
                                  <input type="reset" name="Submit22" value="����" style=" height:19px; border:solid 1px #000000; color:#666666" /></td>
                            </tr>
                          </table>
                                                </form>
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
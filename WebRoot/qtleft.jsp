<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gb2312" session="true" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>Insert title here</title>


<META content="MSHTML 6.00.2800.1106" name=GENERATOR>

</HEAD>
<table id="__01" width="220" height="691" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td><table id="__01" width="220" height="240" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="220" height="29" background="qtimages/1_02_01_01_01.jpg"><table width="100%" height="19" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="12%">&nbsp;</td>
                        <td width="88%" class="STYLE2">ϵͳ����</td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><table id="__01" width="220" height="211" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td><img src="qtimages/1_02_01_01_02_01.jpg" width="220" height="10" alt=""></td>
                      </tr>
                      <tr>
                        <td width="220" height="193" background="qtimages/1_02_01_01_02_02.jpg"><table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
                          <tr>
                            <td width="5%">&nbsp;</td>
                            <td width="90%"><marquee border="0" direction="up" height="160" onMouseOut="start()" onMouseOver="stop()"
                scrollamount="1" scrolldelay="50"><TABLE width="92%" height="100%" 
            border=0 align=center 
      cellPadding=0 cellSpacing=5>
                      <TBODY><TR><TD><P>��������������վ</P>
                            <P>��������������վ</P>
                            <P>��������������վ</P>
                            <P>&nbsp;</P></TD></TR></TBODY></TABLE></marquee></td>
                            <td width="5%">&nbsp;</td>
                          </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td><img src="qtimages/1_02_01_01_02_03.jpg" width="220" height="8" alt=""></td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td><table id="__01" width="220" height="157" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="220" height="29" background="qtimages/1_02_01_01_01.jpg"><table width="100%" height="19" border="0" cellpadding="0" cellspacing="0">
                        <tr>
                          <td width="12%">&nbsp;</td>
                          <td width="88%" class="STYLE2">�û���½</td>
                        </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td height="128"><table id="__01" width="220" height="128" border="0" cellpadding="0" cellspacing="0">
                        <tr>
                          <td height="10"><img src="qtimages/1_02_01_01_02_01.jpg" width="220" height="10" alt=""></td>
                        </tr>
                        <tr>
                          <td width="220" height="110" background="qtimages/1_02_01_01_02_02.jpg"><table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
                              <tr>
                                <td width="5%">&nbsp;</td>
                                <td width="90%"><%

	
	if((String)request.getSession().getAttribute("username")==null || (String)request.getSession().getAttribute("username")=="")
	{
	 %>
                                  <table width="88%" height="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                                    <form name="formlog" method="post" action="userlog_post.jsp">
                                      <tr>
                                        <td width="37%" height="30">�û���</td>
                                        <td width="63%" height="30"><input name="username" type="text" id="username" Style="border-right: #cadcb2 1px solid;
                        border-top: #cadcb2 1px solid; font-size: 12px; border-left: #cadcb2 1px solid;
                        width: 80px; color: #81b432; border-bottom: #cadcb2 1px solid; height: 18px" size="12"></td>
                                      </tr>
                                      <tr>
                                        <td height="30">����</td>
                                        <td height="30"><input name="pwd1" type="password" id="pwd1" Style="border-right: #cadcb2 1px solid;
                        border-top: #cadcb2 1px solid; font-size: 12px; border-left: #cadcb2 1px solid;
                        width: 80px; color: #81b432; border-bottom: #cadcb2 1px solid; height: 18px"></td>
                                      </tr>
                                      <tr style="display:none">
                                        <td height="30">Ȩ��</td>
                                        <td height="30"><select name="cx" id="cx" Style="border-right: #cadcb2 1px solid;
                        border-top: #cadcb2 1px solid; font-size: 12px; border-left: #cadcb2 1px solid;
                        width: 100px; color: #81b432; border-bottom: #cadcb2 1px solid; height: 18px">
                                            <option value="ע���û�">ע���û�</option>
                                          </select>
                                        </td>
                                      </tr>
                                      <tr>
                                        <td height="30">&nbsp;</td>
                                        <td height="30"><input type="submit" name="Submit" value="��½" style=" height:19px; border:solid 1px #000000; color:#666666">
                                            <input type="reset" name="Submit2" value="����" style=" height:19px; border:solid 1px #000000; color:#666666"></td>
                                      </tr>
                                    </form>
                                  </table>
                                  <%
					}
					else
					{
					%>
                                  <table width="90%" height="82%" border="0" align="center" cellpadding="0" cellspacing="0">
                                    <tr>
                                      <td width="31%" height="30">�û���</td>
                                      <td width="69%" height="30"><%=request.getSession().getAttribute("username")%></td>
                                    </tr>
                                    <tr>
                                      <td height="30">Ȩ��</td>
                                      <td height="30"><%=request.getSession().getAttribute("cx")%> </td>
                                    </tr>
                                    <tr>
                                      <td height="30" colspan="2" align="center"><input type="button" name="Submit3" value="�˳�" onClick="javascript:location.href='logout.jsp';" style=" height:19px; border:solid 1px #000000; color:#666666">
                                          <input type="button" name="Submit32" value="���˺�̨" onClick="javascript:location.href='main.jsp';" style=" height:19px; border:solid 1px #000000; color:#666666">
                                      </td>
                                    </tr>
                                  </table>
                                  <%
					}
					%></td>
                                <td width="5%">&nbsp;</td>
                              </tr>
                          </table></td>
                        </tr>
                        <tr>
                          <td height="8"><img src="qtimages/1_02_01_01_02_03.jpg" width="220" height="8" alt=""></td>
                        </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td><table id="__01" width="220" height="147" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="220" height="29" background="qtimages/1_02_01_01_01.jpg"><table width="100%" height="19" border="0" cellpadding="0" cellspacing="0">
                        <tr>
                          <td width="12%">&nbsp;</td>
                          <td width="88%" class="STYLE2">վ������</td>
                        </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td height="118"><table id="__01" width="220" height="118" border="0" cellpadding="0" cellspacing="0">
                        <tr>
                          <td height="10"><img src="qtimages/1_02_01_01_02_01.jpg" width="220" height="10" alt=""></td>
                        </tr>
                        <tr>
                          <td width="220" height="100" background="qtimages/1_02_01_01_02_02.jpg"><table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
                              <tr>
                                <td width="5%">&nbsp;</td>
                                <td width="90%"><table width="100%" height="89%" border="0" cellpadding="0" cellspacing="0">
                                  <form action="news.jsp" method="post" name="formsearch" id="formsearch" >
                                    <tr>
                                      <td width="19%">����</td>
                                      <td width="81%"><input name="keyword" type="text" id="keyword" size="12" style=" height:19px; border:solid 1px #000000; color:#666666" /></td>
                                    </tr>
                                    <tr>
                                      <td>���</td>
                                      <td><select name="lb" style=" height:19px; border:solid 1px #000000; color:#666666">
                                          <option value="news">վ������</option>
                                        </select>
                                      </td>
                                    </tr>
                                    <tr>
                                      <td>&nbsp;</td>
                                      <td><input type="submit" name="Submit4" value="�ύ" style=" height:19px; border:solid 1px #000000; color:#666666" /></td>
                                    </tr>
                                  </form>
                                </table></td>
                                <td width="5%">&nbsp;</td>
                              </tr>
                          </table></td>
                        </tr>
                        <tr>
                          <td height="8"><img src="qtimages/1_02_01_01_02_03.jpg" width="220" height="8" alt=""></td>
                        </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td><table id="__01" width="220" height="147" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="220" height="29" background="qtimages/1_02_01_01_01.jpg"><table width="100%" height="19" border="0" cellpadding="0" cellspacing="0">
                        <tr>
                          <td width="12%">&nbsp;</td>
                          <td width="88%" class="STYLE2">��������</td>
                        </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td height="118"><table id="__01" width="220" height="118" border="0" cellpadding="0" cellspacing="0">
                        <tr>
                          <td height="10"><img src="qtimages/1_02_01_01_02_01.jpg" width="220" height="10" alt=""></td>
                        </tr>
                        <tr>
                          <td width="220" height="100" background="qtimages/1_02_01_01_02_02.jpg"><table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
                              <tr>
                                <td width="5%">&nbsp;</td>
                                <td width="90%"><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0" class="newsline">
               
                                  <tr valign="middle">
                                    <td width="13%" height="24" align="left" class="STYLE2"><img src="qtimages/1.jpg" width="9" height="9"></td>
                                    <td height="24" align="left"><a href="http://www.baidu.com">�ٶ�</a></td>
                                  </tr>
                         
                                </table>
                                  <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0" class="newsline">
                                    <tr valign="middle">
                                      <td width="13%" height="24" align="left" class="STYLE2"><img src="qtimages/1.jpg" width="9" height="9"></td>
                                      <td height="24" align="left"><a href="http://www.baidu.com">�ٶ�</a></td>
                                    </tr>
                                  </table></td>
                                <td width="5%">&nbsp;</td>
                              </tr>
                          </table></td>
                        </tr>
                        <tr>
                          <td height="8"><img src="qtimages/1_02_01_01_02_03.jpg" width="220" height="8" alt=""></td>
                        </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table>
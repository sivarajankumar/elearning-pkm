<%-- 
    Document   : index
    Created on : Mar 13, 2012, 1:25:22 AM
    Author     : Accio
--%>

<%@page import="entity.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% User user = (User) request.getAttribute("user_edit");%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>Elearning:LMS Community</title>
        <style type="text/css">
<!--
.style15 {font-size: 12px; font-style: italic; }
.style16 {font-size: 12px}
.style17 {font-size: 12}
a:link {
	text-decoration: none;
}
a:visited {
	text-decoration: none;
}
a:hover {
	text-decoration: none;
}
a:active {
	text-decoration: none;
}
.style19 {font-size: 10; font-weight: bold; }
.style22 {font-size: 10; }
-->
        </style>
		<%String logedUser = (String) session.getAttribute("username");%>
</head>
    <body>
    <table width="1024" border="0" align="center" cellspacing="0" bordercolor="#CCCCCC">
          <tr>
            <td height="124"><img src="logo2.png" width="1058" height="181">
              <table width="1053" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <th width="803" bgcolor="#FFFFFF" scope="col"><div align="left"><a href="home">Home</a> &gt;&gt; <a href="admin_ubah_profil.jsp">Ubah Profil </a></div></th>
                 <th width="80" bgcolor="#FFFFFF" scope="col"><div align="left" class="style15"><% if (logedUser != null) {%><%="Welcome, " + logedUser%><%}%></div></th>
                        <th width="10" bgcolor="#FFFFFF" scope="col"><span class="style16"></span></th>
                  <th width="40" bgcolor="#FFFFFF" scope="col"><span class="style15"><a href="logout">(logout)</a></span></th>
                </tr>
            </table></td>
          </tr>
          <tr>
            <td height="124" align="center" valign="top"><table width="1044" border="0" align="center" cellspacing="0">
              <tr>
                <td width="226" height="441" align="center" valign="top"><table width="224" border="1" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><form name="form1" method="post" action="login">
                      <table width="222" border="0">
                        <tr>
                          <td width="206" bgcolor="#80BFBF"><strong>MyMenu</strong></td>
                        </tr>
                        <tr>
                          <td><a href="edit-profil-admin">Ubah Profil</a> </td>
                                        </tr>
                                        <tr>
                                            <td><a href="manajemen-guru">Manajemen Guru</a></td>
                                        </tr>
                                        <tr>
                                            <td><a href="manajemen-siswa">Manajemen Siswa</a></td>
                                        </tr>
                                        <tr>
                                            <td><a href="manajemen-kelas">Manajemen Kelas</a> </td>
                                        </tr>
                                        <tr>
                                            <td><label>
                                                </label>
                                                <a href="manajemen-course">Manajemen Course</a> </td>
                                        </tr>
                      </table>
                                        </form>                    </td>
                  </tr>
                </table>
                <p>&nbsp;</p>
                <p>&nbsp;</p></td>
                <td width="4"><p>&nbsp;</p>
                <p>&nbsp;</p>
                <p>&nbsp;</p>
                <p>&nbsp;</p>
                <p>&nbsp;</p>
                <p>&nbsp;</p>
                <p>&nbsp;</p>                </td>
                <td width="808" align="center" valign="top"><table width="800" border="0">
                  <tr>
                    <td width="794"><table width="617" border="1" cellpadding="0" cellspacing="0">
                      <tr>
                        <th width="613" bgcolor="#80BFBF" scope="col"><div align="left">Data Pribadi </div></th>
                      </tr>
                      <tr>
                        <td><form action="proses-edit-profil-admin" method="post" name="form-edit-admin">
                          <table width="811" border="0">
                            <tr><p><input type="hidden" name="id_edit_user" value="<%=user.getId()%>"></p>
                              <td width="135" scope="col"><div align="left"><span class="style16">Nomor identitas pegawai </span></div></td>
                              <td width="9" scope="col"><div align="left"><span class="style16">:</span></div></td>
                              <td width="653" scope="col"><span class="style16">
                                <label for="textfield"></label>
                                <input name="nipnis" type="text" id="textfield" size="18" maxlength="18" value="<%=user.getNipNis()%>">
                              </span></td>
                            </tr>
                            <tr>
                              <td><span class="style16">Nama depan </span></td>
                              <td><span class="style16">:</span></td>
                              <td><span class="style16">
                                <label for="label"></label>
                                <input name="fname" type="text" id="label" size="64" maxlength="64" value="<%=user.getFName()%>">
                              </span></td>
                            </tr>
                            <tr>
                              <td><span class="style16">Nama belakang </span></td>
                              <td><span class="style16">:</span></td>
                              <td><span class="style16">
                                <label for="label2"></label>
                                <input name="lname" type="text" id="label2" size="64" maxlength="64" value="<%=user.getLName()%>">
                              </span></td>
                            </tr>
                            <tr>
                              <td><span class="style16">Email</span></td>
                              <td><span class="style16">:</span></td>
                              <td><span class="style16">
                                <label for="label3"></label>
                                <input name="email" type="text" id="label3" size="64" maxlength="64" value="<%=user.getEmail()%>">
                              </span></td>
                            </tr>
                            <tr>
                              <td><span class="style16">Alamat</span></td>
                              <td><span class="style16">:</span></td>
                              <td><span class="style16">
                                <label for="label11"></label>
                                <input name="address" type="text" id="label11" size="64" maxlength="64" value="<%=user.getAddress()%>">
                              </span></td>
                            </tr>
                            <tr>
                              <td><span class="style16">Kota</span></td>
                              <td><span class="style16">:</span></td>
                              <td><span class="style16">
                                <label for="label4"></label>
                                <input name="city" type="text" id="label4" size="64" maxlength="64" value="<%=user.getCity()%>">
                              </span></td>
                            </tr>
                            <tr>
                              <td><span class="style16">Provinsi</span></td>
                              <td><span class="style16">:</span></td>
                              <td><span class="style16">
                                <label for="label5"></label>
                                <input name="province" type="text" id="label5" size="64" maxlength="64" value="<%=user.getProvince()%>">
                              </span></td>
                            </tr>
                            <tr>
                              <td><span class="style16">Kode Pos </span></td>
                              <td><span class="style16">:</span></td>
                              <td><span class="style16">
                                <label for="label6"></label>
                                <input name="postcode" type="text" id="label6" size="10" maxlength="10" value="<%=user.getPostcode()%>">
                              </span></td>
                            </tr>
                            <tr>
                              <td><span class="style16">Agama</span></td>
                              <td><span class="style16">:</span></td>
                              <td><span class="style16">
                                <label for="label8"></label>
                                <input name="religion" type="text" id="label8" size="32" maxlength="32" value="<%=user.getReligion()%>">
                              </span></td>
                            </tr>
                            <tr>
                              <td><span class="style16">Nomor Kontak </span></td>
                              <td><span class="style16">:</span></td>
                              <td><span class="style16">
                                <label for="label9"></label>
                                <input name="phone" type="text" id="label9" size="20" value="<%=user.getPhone()%>">
                              </span></td>
                            </tr>
                            <tr>
                              <td><span class="style16">Sekolah</span></td>
                              <td><span class="style17">:</span></td>
                              <td><label for="select"></label>
                                <select name="select" id="select">
                                </select>                              </td>
                            </tr>
                            <tr>
                              <td><span class="style16">Status Konfirmasi </span></td>
                              <td><span class="style16">:</span></td>
                              <td><span class="style16">
                                <label for="label10"></label>
                                <input name="textfield11" type="text" id="label10" size="3" maxlength="3">
                              </span></td>
                            </tr>
                            <tr>
                              <td><span class="style16">File Foto </span></td>
                              <td>:</td>
                              <td><label for="file"></label>
                              <input type="file" name="file" id="file"></td>
                            </tr>
<<<<<<< .mine
                            <tr>
                              <td>&nbsp;</td>
                              <td>&nbsp;</td>
                              <td><label for="Submit"></label>
                                <div align="right">
                                  <input type="submit" name="Submit" value="Submit" id="Submit">
                              </div></td>
                            </tr>
                          </table>
                                                </form>                        </td>
                      </tr>
                    </table></td>
                  </tr>
                  
                  <tr>
                    <td><form name="form3" method="post" action="">
                      <table width="814" border="1" cellpadding="0" cellspacing="0">
                        <tr>
                          <th bgcolor="#80BFBF" scope="col"><div align="left">Username dan Password </div></th>
                        </tr>
                        <tr>
                          <th width="810" scope="col"><div align="left">
                            <table width="810" border="0">
                              
                              <tr>
                                <td class="style16" scope="col"><div align="left" class="style22">Username</div></td>
                                <td width="9" class="style16" scope="col"><span class="style22">:</span></td>
                                <td width="649" class="style16" scope="col"><div align="left" class="style22">
                                    <label for="label20"></label>
                                    <input name="textfield132" type="text" id="label20" value="<%=user.getUsername()%>" size="64" maxlength="64">
                                </div></td>
                              </tr>
                              <tr>
                                <td class="style16"><span class="style22">Password lama </span></td>
                                <td class="style16"><span class="style22">:</span></td>
                                <td class="style16"><span class="style22">
                                  <label for="label21"></label>
                                  <input name="textfield162" type="text" id="label21" value="<%=user.getPassword()%>" size="20" maxlength="20">
                                </span></td>
                              </tr>
                              <tr>
                                <td class="style16"><div align="left" class="style22">Password baru </div></td>
                                <td class="style16"><span class="style22">:</span></td>
                                <td class="style16"><div align="left" class="style22">
                                        <label for="label22"></label>
                                        <input name="textfield142" type="password" id="label22" size="20" maxlength="20">
                                </div></td>
                              </tr>
                              <tr>
                                <td class="style16"><div align="left" class="style19">Retype Password baru </div></td>
                                <td class="style16"><div align="left" class="style22">:</div></td>
                                <td class="style16"><div align="left" class="style22">
                                        <label for="label23"></label>
                                        <input name="textfield152" type="password" id="label23" size="20" maxlength="20">
                                </div></td>
                              </tr>
                              <tr>
                                <td class="style22">&nbsp;</td>
                                <td class="style22">&nbsp;</td>
                                <td class="style22">
                                  <label for="label24"></label>
                                  <div align="right">
                                    <input type="submit" name="Submit22" value="Submit" id="label24">
                                  </div></td>
                              </tr>
                            </table>
                          </div></th>
                        </tr>
                      </table>
                    </form></td>
                  </tr>
                  <tr>
                    <td><table width="550" border="1" cellpadding="0" cellspacing="0">
                      <tr>
                        <th bgcolor="#80BFBF" scope="col"><div align="left">Sekolah</div></th>
                      </tr>
                      <tr>
                        <td><form name="form3" method="post" action="">
                          <table width="809" border="0">
                            <tr>
                              <td width="137" scope="col"><div align="left" class="style16">Nama Sekolah </div></td>
                              <td width="9" scope="col"><div align="left"><span class="style16"></span>:</div></td>
                              <td width="649" scope="col"><div align="left" class="style16">
                                <label for="label12"></label>
                                <input name="uname" type="text" id="label12" size="64" maxlength="64">
                              </div></td>
                            </tr>
                            <tr>
                              <td><span class="style16">Email </span></td>
                              <td>:</td>
                              <td><span class="style16">
                                <label for="label15"></label>
                                <input name="textfield16" type="text" id="label15" size="64" maxlength="20">
                              </span></td>
                            </tr>
                            <tr>
                              <td><div align="left" class="style16">Alamat</div></td>
                              <td><div align="left"><span class="style16"></span>:</div></td>
                              <td><div align="left"><span class="style16"></span>
                                <label for="label13"></label>
                                <input name="textfield14" type="password" id="label13" size="64" maxlength="64">
                              </div></td>
                            </tr>
                            <tr>
                              <td><span class="style16">Kota</span></td>
                              <td>:</td>
                              <td><label for="label17"></label>
                              <input name="textfield17" type="text" id="label17" size="64" maxlength="64"></td>
                            </tr>
                            <tr>
                              <td><span class="style16">Provinsi</span></td>
                              <td>:</td>
                              <td><label for="label18"></label>
                              <input name="textfield18" type="text" id="label18" size="64" maxlength="64"></td>
                            </tr>
                            <tr>
                              <td><span class="style16">Kode Pos </span></td>
                              <td>:</td>
                              <td><label for="label19"></label>
                              <input name="textfield19" type="text" id="label19" size="10" maxlength="10"></td>
                            </tr>
                            <tr>
                              <td><span class="style16">Telepon</span></td>
                              <td><div align="left">:</div></td>
                              <td><div align="left"><span class="style16"></span>
                                      <label for="label14"></label>
                                      <input name="connewpass" type="password" id="label14" size="20" maxlength="20">
                              </div></td>
                            </tr>
                            <tr>
                              <td>&nbsp;</td>
                              <td>&nbsp;</td>
                              <td><label for="label16"></label>
                                <div align="right">
                                  <input type="submit" name="Submit" value="Submit" id="label16">
                              </div></td>
                            </tr>
                          </table>
                                                </form>                        </td>
                      </tr>
                    </table>
                    </td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
          </tr>
        </table>
    </body>
</html>

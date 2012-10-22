<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="ctrlTemplateMobileHuracanes.ascx.vb"
    Inherits="Tresite.SACS.PH.ctrlTemplateMobileHuracanes" %>
<div class="mBot15">
    <% If Not arrNoticias Is Nothing AndAlso arrNoticias.Count > 0 Then%>
    <div class="band_flexs03">
        <img src="../images/misc/txt_loultimo.png" alt="" /></div>
    <div id="Fotogaleria" class="flexslider02">
        <ul class="slides">
            <% For intN = 0 To arrNoticias.Count - 1%>
            <% If intN > 4 Then Exit For%>
            <% If arrNoticias(intN).IsValidImagen(1) Then%>
            <li>
                <div align="center">
                    <a href="<%=arrNoticias(intN).Campo1 %>">
                        <img src="<%=arrNoticias(intN).Imagen1.Src %>" /></a></div>
                <div class="caption02">
                    <span>
                        <%=arrNoticias(intN).Headline%></span>
                </div>
            </li>
            <%End If%>
            <%Next%>
        </ul>
    </div>
    <%End If%>
</div>

<%  If Len(strHuracanes) > 0 Then%>
<table class="d1B_huracan mBot10" width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
        <!--<td width="53%">
            <a class="img2_Cprts" href="/huracanes2012-trayectoria/" style="background-image: url(../images/misc/img_huracan.jpg)">
                <img src="../images/misc/bg_imgHuracan.png" alt="" />
            </a>
        </td>-->
        <td width="100%" align="center">
            <a href="/huracanes2012-trayectoria/" style="color:#FFFF00"><%=strHuracanes%></a>
        </td>
    </tr>
</table>
<%End If%>
<div class="style01_txt mBot10">
    Fotogalería</div>
<%  If Not arrFotogalerias Is Nothing AndAlso arrFotogalerias.Count > 0 Then%>
<table class=" mBot10 bor1img" width="100%" cellspacing="0" cellpadding="0" border="0">
    <tr>
        <td width="5%">
        </td>
        <% For intN = 0 To arrFotogalerias.Count - 1%>
        <% If arrFotogalerias(intN).IsValidImagen(1) Then%>
        <td <%if intN=0 then %>width="41%" <%else %><%if intN=1 then %>width="39%" <%else %>width="10%"
            <%end if %><%end if %>>
            <a href="/<%=arrFotogalerias(intN).Url %>">
                <img src="<%=arrFotogalerias(intN).Imagen1.Src %>" width="63" height="63" /></a>
        </td>
        <%End If%>
        <%Next%>
        <td width="5%">
        </td>
    </tr>
</table>
<a class="vermas" href="/fotogalerias-huracanes2012/">Ver más Fotogalerías</a>
<%  End If%>
<div class="style01_txt mBot10">
    Noticias</div>
<%  If Not arrNoticias Is Nothing AndAlso arrNoticias.Count > 4 Then%>
<div class="dBloque">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <% For intN = 5 To arrNoticias.Count - 1%>
        <tr>
            <td width="5%">
                <% If arrNoticias(intN).IsValidImagen(1) Then%>
                <a href="<%=arrNoticias(intN).Campo1 %>">
                    <img src="<%=arrNoticias(intN).Imagen1.Src %>" width="63" height="63" /></a>
                <%End If%>
            </td>
            <td width="95%">
                <h4>
                    <%=arrNoticias(intN).SubCanal%></h4>
                <h3>
                    <a href="<%=arrNoticias(intN).Campo1 %>">
                        <%=arrNoticias(intN).Headline%></a></h3>
            </td>
        </tr>
        <%Next%>
    </table>
</div>
<!--<a class="vermas" href="/londres2012/">Ver más Noticias</a>-->
<%  End If%>
<div class="style01_txt mBot10">
    Videos</div>
<%  If Not arrVideosMasrecientes Is Nothing Then%>
<table class="mBot10" width="100%" cellspacing="0" cellpadding="0" border="0">
    <tr>
        <td width="5%">
        </td>
        <% For intN = 0 To arrVideosMasrecientes.Count - 1%>
        <% If intN > 2 Then Exit For%>
        <td <%if intN=arrVideosMasRecientes.count-1 then%>width="10%" <%else %>width="40%"
            <%end if %>>
            <a class="d1B_imgvid" href="<%=arrVideosMasrecientes(intN).Liga%>">
                <img src="<%=arrVideosMasrecientes(intN).ImagenThumbSrc%>" alt="" width="90" height="51" /></a>
        </td>
        <%Next%>
        <td width="5%">
        </td>
    </tr>
</table>
<a class="vermas" href="/videos/huracanes2012-1/">Ver más Videos</a>
<%  End If%>
<div align="center">
    <a href="/">
        <img src="../images/misc/btn_volver.png" width="160" height="30" alt="" /></a></div>
otra
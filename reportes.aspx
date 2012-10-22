<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="reportes.aspx.vb" Inherits=".reportes" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Tresite | SACSPro </title>
    <link href="css/dbstyles.css" rel="stylesheet" type="text/css" />
    <link rel="alternate stylesheet" type="text/css" media="screen,print" href="css/textos.css"
        title="normal" />
    <link href="css/printversion.css" rel="stylesheet" type="text/css" media="print" />
    <!--[if lte IE 7]><link rel="stylesheet" href="css/ie.css" /><![endif]-->
    <script src="js/jquery.js" type="text/javascript" language="javascript1.2"></script>
    <script src="js/datos.js" type="text/javascript" language="javascript1.2"></script>
    <script src="js/reportes.js" type="text/javascript" language="javascript1.2"></script>
    <script src="js/jquery.tmpl.min.js" type="text/javascript" language="javascript1.2"></script>
</head>
<body>
    <div id="MySplitter">
        <div id="TopPane">
            <a name="top"></a>
            <div align="center" class="dMensaje2" style="display: none;">
                <table class="tabla_mensaje" width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td width="100%" align="center">
                            <img id="imageerror" src="images/icons/img_cerrar.jpg" alt="Error" style="display: none"
                                width="37" height="36" />
                            <span id="mensajeajax" style="float: none; font-weight: normal; font-size: 14px;">
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td width="100%" align="center">
                            <img id="mensajeloading" src="images/varios/cargando2.gif" alt="Loading" /><div id="mensajebrs">
                                <br />
                            </div>
                            <a id="mensajecerrar" class="cerrar" href="#" style="float: none; color: #ffffff;"
                                onclick="javascript: return ocultarMensaje();">
                                <%=GetGlobalResourceObject("Edit", "cerrar")%></a> <a id="mensajecerrardelete" class="cerrar"
                                    href="#" style="float: none; color: #ffffff; display: none;" onclick="javascript: return cerrarDelete();">
                                    <%=GetGlobalResourceObject("Edit", "cerrar")%></a>
                        </td>
                    </tr>
                </table>
            </div>
            <div align="left" class="dForm" id="divForma">
                <div class="dPath clearfix">
                    <div class="fLeft">
                        <div id="divMigaja">
                            <asp:Label ID="lblTitlePage" runat="server"></asp:Label>
                        </div>
                    </div>
                </div>
                <form name="datos" method="post" id="datos" runat="server">
                <telerik:RadScriptManager ID="ScriptManager1" runat="server">
                </telerik:RadScriptManager>
                <input type="hidden" name="xmensaje" value="<%=GetGlobalResourceObject("Edit", "captura_msgget")%>" />
                <input type="hidden" name="xmensajeerror" value="<%=GetGlobalResourceObject("Edit", "captura_errorgeneral")%>" />
                <input type="hidden" name="xmensajeselect" value="<%=GetGlobalResourceObject("Taxonomia", "mensaje_select")%>" />
                <div class="dFiltros">
                    <a class="linkFiltros linkFiltros_on" href="#">
                        <asp:Label ID="lblFiltros" runat="server"></asp:Label></a>
                    <h3>
                        <asp:Label ID="lblFiltrosAyuda" runat="server"></asp:Label></h3>
                    <div class="Contfiltro" style="display: block;">
                        <table class="tabla_02" width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-bottom: 0px;
                            margin-top: 10px; border-bottom: none; border-right: none;" id="divFiltros_12274">
                             <tr class="divNor">
                                <td width="20%" class="tdPa" style="vertical-align: top">
                                    <div class="clearfix">
                                        <strong>
                                            <asp:Label ID="lblIdioma" runat="server"></asp:Label>:</strong>
                                    </div>
                                </td>
                                <td width="80%">
                                    <select name="cboIdioma" id="cboIdioma" class="campo filtro filtropadre">
                                        <option value="1">Español</option>
                                        <option value="3">Portugués</option>
                                    </select>
                                    <h4>
                                        <asp:Label ID="Label2" runat="server"></asp:Label></h4>
                                </td>
                            </tr>
                            <tr class="divNor">
                                <td width="20%" class="tdPa" style="vertical-align: top">
                                    <div class="clearfix">
                                        <strong>
                                            <asp:Label ID="lblTipo" runat="server"></asp:Label>:</strong>
                                    </div>
                                </td>
                                <td width="80%">
                                    <select name="cboTipo" id="cboTipo" class="campo filtro filtropadre" runat="server"
                                        clientidmode="Static">
                                         <option value="0">--Todos--</option>
                                         <option value="1">Contenido</option>
                                        <option value="2">Fotogalería</option>
                                    </select>
                                    <h4>
                                        <asp:Label ID="lblTipoAyuda" runat="server"></asp:Label></h4>
                                </td>
                            </tr>
                            <tr class="divNor">
                                <td width="20%" class="tdPa" style="vertical-align: top">
                                    <div class="clearfix">
                                        <strong>
                                            <asp:Label ID="lblCategoria" runat="server"></asp:Label>:</strong>
                                    </div>
                                </td>
                                <td width="80%">
                                    <select name="cboCategoria" id="cboCategoria" class="campo filtro filtropadre" >
                                         <option value="">--Todos--</option>
                                         <option value="accion">Acci&oacute;n con Valor</option>
                                        <option value="breves">Breves</option>
                                    </select>
                                    <h4>
                                        <asp:Label ID="lblCategoriaAyuda" runat="server"></asp:Label></h4>
                                </td>
                            </tr>
                            <tr class="divNor">
                                <td width="20%" class="tdPa" style="vertical-align: top">
                                    <div class="clearfix">
                                        <strong>
                                            <asp:Label ID="lblFecha" runat="server"></asp:Label>:</strong>
                                    </div>
                                </td>
                                <td width="80%">
                                    <telerik:RadDatePicker ID="dtmFechaDesde" runat="server" DateInput-DateFormat="MM/dd/yyyy"
                                        Width="100px" />
                                    <telerik:RadDatePicker ID="dtmFechaHasta" runat="server" DateInput-DateFormat="MM/dd/yyyy"
                                        Width="100px" />
                                    <h4>
                                        <asp:Label ID="lblFechaAyuda" runat="server"></asp:Label></h4>
                                </td>
                            </tr>
                            <tr class="divNor">
                                <td width="20%" class="tdPa" style="vertical-align: top">
                                    <div class="clearfix">
                                        <strong>
                                            <asp:Label ID="lblAcceso" runat="server"></asp:Label>:</strong>
                                    </div>
                                </td>
                                <td width="80%">
                                    <select name="cboAcceso" id="cboAcceso" class="campo filtro filtropadre">
                                        <option value="0">--Todos--</option>
                                        <option value="1">Web</option>
                                        <option value="2">Móvil</option>
                                    </select>
                                    <h4>
                                        <asp:Label ID="lblAccesoAyuda" runat="server"></asp:Label></h4>
                                </td>
                            </tr>
                        </table>
                        <table class="tabla_02" width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-bottom: 0px;
                            margin-top: 0px; border-bottom: none; border-right: none;">
                            <tr class="divNor">
                                <td width="20%">
                                    &nbsp;
                                </td>
                                <td width="80%">
                                    <button class="btnfiltrar" type="button" onclick="javascript:loadrecords('<%=dtmFechaDesde.ClientId %>','<%=dtmFechaHasta.ClientId %>');">
                                        <asp:Label ID="lblFiltrar" runat="server"></asp:Label></button><div style="padding: 10px 0px 0px 0px;">
                                            &nbsp;| <a href="#" onclick="javascript:clearInputs();" class="link_agregar">
                                                <asp:Label ID="lblLimpiar" runat="server"></asp:Label></a></div>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
                </form>
                <div style="background-color: #ffffff; padding: 10px;" class="clearfix">
                    <table id="tabla01" class="tablesorter sort" cellpadding="0" cellspacing="0">
                        <thead>
                            <tr>
                                <th width="25px" align="center">
                                    #
                                </th>
                                <th width="75px" >
                                   Tipo de Contenido
                                </th>
                                 <th width="75px" >
                                   Categor&iacute;a
                                </th>
                                <th align="center">
                                   Título
                                </th>
                                <th align="center" width="100px">
                                   Acceso
                                </th>
                                 <th align="center" width="100px">
                                   Visitas
                                </th>
                            </tr>
                        </thead>
                        <tbody id="listadoTabla">
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <script language="javascript" type="text/javascript">
        $(document).ready(function () {
            $(".linkFiltros").click(
              function () {
                  if ($(this).hasClass("linkFiltros_on")) {
                      $('.Contfiltro').hide();
                      $(".linkFiltros").removeClass("linkFiltros_on");
                  } else {
                      $('.Contfiltro').show();
                      $(".linkFiltros").addClass("linkFiltros_on");
                  }
              }
             );

              //carga el template y lo agrega al html para tenerlo disponible*/
              $.get('reportestemplate.aspx', function (templates) {
                  $('body').append(templates);
              });
          });
    
    
    </script>
</body>
</html>

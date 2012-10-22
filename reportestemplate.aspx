<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="reportestemplate.aspx.vb" Inherits=".reportestemplate" %>
<script id="tableTemplate" type="text/x-jquery-tmpl">
        <tr id="${VocabularyId}" class="">
            <td width="25px" align="center" class="numregistro" index="${numRegistro}">
               <span class="numregistro">${numRegistro}</span>
            </td>
            <td width="75px">
               ${TipoContenido}
            </td>
             <td width="75px">
               ${Categoria}
            </td>
            <td class="registro">
               ${Titulo}
            </td>
            <td class="registro" width="100px" >
               ${TipoAcceso} 
            </td>
            <td class="registro" width="100px" >
               ${Visitas} 
            </td>
        </tr>
</script>
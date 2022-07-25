<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Principal.aspx.cs" Inherits="Autos.Principal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/abmmarcas.aspx">ABM de Marcas</asp:HyperLink>
        </div>
        <p>
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/altaautos.aspx">Alta de Autos</asp:HyperLink>
        </p>
        <p>
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/consultaauto.aspx">Consulta por patente</asp:HyperLink>
        </p>
        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/consultaXmarca.aspx">Consulta por marca</asp:HyperLink>
        <p>
            <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/bajaauto.aspx">Borrado de un auto</asp:HyperLink>
        </p>
        <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/autosXmodelo.aspx">Autos por modelo</asp:HyperLink>
    </form>
</body>
</html>

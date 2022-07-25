<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="altaautos.aspx.cs" Inherits="Autos.altaautos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Patente:                                    "></asp:Label>
            <asp:TextBox ID="txtPatente" runat="server"></asp:TextBox>
        </div>
        <p>
            <asp:Label ID="Label2" runat="server" Text="Propietario:                              "></asp:Label>
            <asp:TextBox ID="txtPropietario" runat="server"></asp:TextBox>
        </p>
        <asp:Label ID="Label3" runat="server" Text="Precio:                                       "></asp:Label>
        <asp:TextBox ID="txtPrecio" runat="server"></asp:TextBox>
        <p>
            <asp:Label ID="Label4" runat="server" Text="Modelo:                                     "></asp:Label>
            <asp:TextBox ID="txtModelo" runat="server"></asp:TextBox>
        </p>
        <asp:Label ID="Label5" runat="server" Text="Marca:                                        "></asp:Label>
        <asp:DropDownList ID="ddlMarca" runat="server" DataSourceID="DSMarcas" DataTextField="descripcion" DataValueField="codigo">
        </asp:DropDownList>
        <p>
            <asp:Label ID="Label6" runat="server" Text="Foto:                                           "></asp:Label>
            <asp:FileUpload ID="fuFoto" runat="server" />
        </p>
        <asp:Button ID="btnAlta" runat="server" OnClick="btnAlta_Click" Text="Alta" />
        <asp:Label ID="lblResult" runat="server"></asp:Label>
        <asp:SqlDataSource ID="DSMarcas" runat="server" ConnectionString="<%$ ConnectionStrings:dbAutosConnectionString1 %>" SelectCommand="SELECT * FROM [marcas]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="DSAutos" runat="server" ConnectionString="<%$ ConnectionStrings:dbAutosConnectionString1 %>" InsertCommand="INSERT INTO autos (patente, propietario, precio, modelo, codigomarca, foto) VALUES (@patente, @propietario, @precio, @modelo, @codigomarca, @foto)" SelectCommand="SELECT * FROM [autos]">
            <InsertParameters>
                <asp:Parameter Name="patente" />
                <asp:Parameter Name="propietario" />
                <asp:Parameter Name="precio" />
                <asp:Parameter Name="modelo" />
                <asp:Parameter Name="marca" />
                <asp:Parameter Name="foto" />
                <asp:Parameter Name="codigomarca" />
            </InsertParameters>
        </asp:SqlDataSource>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Principal.aspx">Volver...</asp:HyperLink>
    </form>
</body>
</html>

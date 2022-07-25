<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="consultaXmarca.aspx.cs" Inherits="Autos.consultaXmarca" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Seleccione la marca"></asp:Label>
        </div>
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="DSMarcas" DataTextField="descripcion" DataValueField="codigo">
        </asp:DropDownList>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Mostrar" />
        </p>
        <asp:Label ID="lblResult" runat="server"></asp:Label>
        <asp:SqlDataSource ID="DSMarcas" runat="server" ConnectionString="<%$ ConnectionStrings:dbAutosConnectionString1 %>" SelectCommand="SELECT * FROM [marcas]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="DSAutos" runat="server" ConnectionString="<%$ ConnectionStrings:dbAutosConnectionString1 %>" InsertCommand="INSERT INTO autos (patente, propietario, precio, modelo, codigomarca, foto) VALUES (@patente, @propietario, @precio, @modelo, @codigomarca, @foto)" SelectCommand="SELECT foto FROM autos WHERE codigomarca=@codigomarca">
            <InsertParameters>
                <asp:Parameter Name="patente" />
                <asp:Parameter Name="propietario" />
                <asp:Parameter Name="precio" />
                <asp:Parameter Name="modelo" />
                <asp:Parameter Name="marca" />
                <asp:Parameter Name="foto" />
                <asp:Parameter Name="codigomarca" />
            </InsertParameters>
            <SelectParameters>
                <asp:Parameter Name="codigomarca" />
            </SelectParameters>
        </asp:SqlDataSource>
        <p>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Principal.aspx">Volver...</asp:HyperLink>
        </p>
    </form>
</body>
</html>

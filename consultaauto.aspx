<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="consultaauto.aspx.cs" Inherits="Autos.consultaauto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Ingrese patente:                                    "></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </div>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Consultar" />
        <p>
            <asp:Label ID="lblResultado" runat="server"></asp:Label>
        </p>
        <asp:Image ID="Image1" runat="server" />
        <asp:SqlDataSource ID="DSAutos" runat="server" ConnectionString="<%$ ConnectionStrings:dbAutosConnectionString1 %>" InsertCommand="INSERT INTO autos (patente, propietario, precio, modelo, codigomarca, foto) VALUES (@patente, @propietario, @precio, @modelo, @codigomarca, @foto)" SelectCommand="SELECT propietario, precio, modelo, foto, descripcion FROM autos as au INNER JOIN marcas as ma ON au.codigomarca = ma.codigo WHERE patente = @patente">
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
                <asp:Parameter Name="patente" />
            </SelectParameters>
        </asp:SqlDataSource>
        <p>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Principal.aspx">Volver...</asp:HyperLink>
        </p>
    </form>
</body>
</html>

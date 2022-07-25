<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="autosXmodelo.aspx.cs" Inherits="Autos.autosXmodelo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Ingrese año inicial:                                         "></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </div>
        <asp:Label ID="Label2" runat="server" Text="Ingrese año final:                                            "></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Mostrar Vehículos" />
        </p>
        <asp:Label ID="lblResult" runat="server"></asp:Label>
        <asp:SqlDataSource ID="DSAutos" runat="server" ConnectionString="<%$ ConnectionStrings:dbAutosConnectionString1 %>" InsertCommand="INSERT INTO autos (patente, propietario, precio, modelo, codigomarca, foto) VALUES (@patente, @propietario, @precio, @modelo, @codigomarca, @foto)" SelectCommand="SELECT foto FROM autos WHERE modelo&gt;=@modelo1 AND modelo&lt;=@modelo2">
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
                <asp:Parameter Name="modelo1" />
                <asp:Parameter Name="modelo2" />
            </SelectParameters>
        </asp:SqlDataSource>
        <p>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Principal.aspx">Volver...</asp:HyperLink>
        </p>
    </form>
</body>
</html>

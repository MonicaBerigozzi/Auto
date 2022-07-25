<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bajaauto.aspx.cs" Inherits="Autos.bajaauto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Ingrese la patente del auto a borrar:                                        "></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </div>
        <asp:SqlDataSource ID="DSAutos" runat="server" ConnectionString="<%$ ConnectionStrings:dbAutosConnectionString1 %>" DeleteCommand="DELETE FROM autos WHERE patente=@patente" InsertCommand="INSERT INTO autos (patente, propietario, precio, modelo, codigomarca, foto) VALUES (@patente, @propietario, @precio, @modelo, @codigomarca, @foto)" SelectCommand="SELECT foto FROM autos WHERE patente=@patente">
            <DeleteParameters>
                <asp:Parameter Name="patente" />
            </DeleteParameters>
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
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Borrar" />
        <asp:Label ID="lblResult" runat="server"></asp:Label>
        <p>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Principal.aspx">Volver...</asp:HyperLink>
        </p>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="abmmarcas.aspx.cs" Inherits="Autos.abmmarcas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="codigo" DataSourceID="DSMarcas" EmptyDataText="No hay registros de datos para mostrar.">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="codigo" HeaderText="codigo" InsertVisible="False" ReadOnly="True" SortExpression="codigo" />
                    <asp:BoundField DataField="descripcion" HeaderText="descripcion" SortExpression="descripcion" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="DSMarcas" runat="server" ConnectionString="<%$ ConnectionStrings:dbAutosConnectionString1 %>" DeleteCommand="DELETE FROM [marcas] WHERE [codigo] = @codigo" InsertCommand="INSERT INTO [marcas] ([descripcion]) VALUES (@descripcion)" ProviderName="<%$ ConnectionStrings:dbAutosConnectionString1.ProviderName %>" SelectCommand="SELECT [codigo], [descripcion] FROM [marcas]" UpdateCommand="UPDATE [marcas] SET [descripcion] = @descripcion WHERE [codigo] = @codigo">
                <DeleteParameters>
                    <asp:Parameter Name="codigo" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="descripcion" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="descripcion" Type="String" />
                    <asp:Parameter Name="codigo" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
        <asp:Label ID="Label1" runat="server" Text="Ingrese descripción de la marca:                                   "></asp:Label>
        <asp:TextBox ID="txtDescripcion" runat="server"></asp:TextBox>
        <p>
            <asp:Button ID="btnAlta" runat="server" OnClick="btnAlta_Click" Text="Alta" />
        </p>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Principal.aspx">Volver...</asp:HyperLink>
    </form>
</body>
</html>

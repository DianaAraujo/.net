<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="lbidpersona" runat="server" Text="idPersona"></asp:Label>
        <asp:TextBox ID="txtidpersona" runat="server"></asp:TextBox><br />
        <asp:Label ID="lbnombre" runat="server" Text="Nombre"></asp:Label>
        <asp:TextBox ID="txtnombre" runat="server"></asp:TextBox><br /> 
        <asp:Label ID="lbapellido" runat="server" Text="Apellido"></asp:Label>
        <asp:TextBox ID="txtapellido" runat="server"></asp:TextBox><br />
        <asp:Button ID="btnIngresar" runat="server" Text="Ingresar" /><br />
        <asp:Button ID="btModificar" runat="server" Text="Modificar" /><br />
        <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" /><br />
        <asp:Button ID="Prueba" runat="server" Text="Prueba" /><br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourcePersona">
            <Columns>
                <asp:BoundField DataField="idpersona" HeaderText="idpersona" InsertVisible="False" SortExpression="idpersona" ReadOnly="True" ShowHeader="False"  />
                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" />
                <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
                <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourcePersona" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT persona.* FROM persona"></asp:SqlDataSource>
    </div>
    </form>
</body>
</html>

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
        
        <asp:Label ID="lbCodigoP" runat="server" Text="Label">Codigo Persona</asp:Label>
        <asp:TextBox ID="txtCodigoP" runat="server"></asp:TextBox><br />
        <asp:Label ID="lbNombre" runat="server" Text="Label">Nombre</asp:Label>
        <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox><br />
        <asp:Label ID="lbApellido" runat="server" Text="Label">Apellido</asp:Label>
        <asp:TextBox ID="txtApellido" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:DropDownList ID="automovil" runat="server">
        </asp:DropDownList>
        <br />
        <br />
        <asp:Button ID="btnIngresar" runat="server" Text="Ingresar"  />
        
        <asp:Button ID="btnModificar" runat="server" Text="Modificar" />
        
        <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" />
        
       
        
        <br />
        
        <br />
        <asp:GridView ID="GridView1" runat="server">
            <Columns>
                <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
            </Columns>
        </asp:GridView>
        <br />
        
    </div>
    </form>
</body>
</html>

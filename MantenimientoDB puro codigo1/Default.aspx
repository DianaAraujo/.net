<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="css/styles.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <nav class="navbar navbar-default" role="navigation">
				<div class="navbar-header">
					 
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						 <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
					</button> <a class="navbar-brand" href="#">Brand</a>
				</div>
				
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li class="active">
							<a href="#">Link</a>
						</li>
						<li>
							<a href="#">Link</a>
						</li>
						<li class="dropdown">
							 <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown<strong class="caret"></strong></a>
							<ul class="dropdown-menu">
								<li>
									<a href="#">Action</a>
								</li>
								<li>
									<a href="#">Another action</a>
								</li>
								<li>
									<a href="#">Something else here</a>
								</li>
								<li class="divider">
								</li>
								<li>
									<a href="#">Separated link</a>
								</li>
								<li class="divider">
								</li>
								<li>
									<a href="#">One more separated link</a>
								</li>
							</ul>
						</li>
					</ul>
					<form class="navbar-form navbar-left" role="search">
						<div class="form-group">
							<input type="text" class="form-control" />
						</div> 
						<button type="submit" class="btn btn-default">
							Submit
						</button>
					</form>
					<ul class="nav navbar-nav navbar-right">
						<li>
						<a href="#"> Bienvenido --nombre--</a>
						</li>
						<li>
						<a href="#"> Salir </a>
						</li>
					</ul>
				</div>
				
			</nav>
    
    <div class="container">
     <div>
    <div class="row">
    <form id="form1" class="form-group-lg" runat="server">
        
        
        <asp:TextBox ID="txtCodigoP" runat="server" placeholder="Codigo Persona"></asp:TextBox><br />
        <asp:TextBox ID="txtNombre" runat="server" placeholder="Nombre"></asp:TextBox><br />
        <asp:TextBox ID="txtApellido" runat="server"  placeholder="Apellido"></asp:TextBox>
        <br />
        <br />
        <asp:DropDownList ID="automovil" runat="server">
        </asp:DropDownList>
        <br />
        <br />
        <asp:Button ID="btnIngresar" class="btn-group-sm" runat="server" Text="Ingresar"  />
        
        <asp:Button ID="btnModificar" runat="server" Text="Modificar" />
        
        <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" />
        </form>
       </div>
        
        <br />
        
        <br />
        <asp:GridView ID="GridView1"  runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Width="494px">
            <Columns>
                <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
        <br />
        
        <script type="text/javascript">
            alert("hola mundo")
        </script>
    </form>
          </div>
        </div> <!-- container -->
      

  
</body>
</html>

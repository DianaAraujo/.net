Imports bibliClases.cnr.gob.cnr.gis
Partial Class _Default
    Inherits System.Web.UI.Page
    Dim oDAO As New DAO

    Protected Sub GridView1_Load(sender As Object, e As EventArgs) Handles GridView1.Load
        GridView1.DataSource = oDAO.selectt
        GridView1.DataBind()
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged
        Dim row As GridViewRow = GridView1.SelectedRow
        txtCodigoP.Text = row.Cells(1).Text
        txtNombre.Text = row.Cells(2).Text
        txtApellido.Text = row.Cells(3).Text
        automovil.SelectedItem.Text = row.Cells(4).Text
      



    End Sub


    Protected Sub btnIngresar_Click(sender As Object, e As EventArgs) Handles btnIngresar.Click
        Dim nombre As String = txtNombre.Text
        Dim apellido As String = txtApellido.Text
        Dim tipo_vehiculo = automovil.SelectedValue.ToString
        oDAO.agregar(nombre, apellido, tipo_vehiculo)

        GridView1.DataSource = oDAO.selectt
        GridView1.DataBind()


    End Sub
   
   
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If (Page.IsPostBack = False) Then
            automovil.DataSource = oDAO.TipoVehi_list
            automovil.DataTextField = "tipo_vehiuclo"
            automovil.DataValueField = "id_vehiculo"
            automovil.DataBind()
        End If
    End Sub

    Protected Sub btnModificar_Click(sender As Object, e As EventArgs) Handles btnModificar.Click
        Dim id_personas As String = txtCodigoP.Text
        Dim nombre As String = txtNombre.Text
        Dim apellido As String = txtApellido.Text
        Dim valor_vehiculo As String = automovil.SelectedItem.ToString
        oDAO.update(id_personas, nombre, apellido, valor_vehiculo)

        GridView1.DataSource = oDAO.selectt
        GridView1.DataBind()
       

    End Sub


    Protected Sub btnEliminar_Click(sender As Object, e As EventArgs) Handles btnEliminar.Click
        Dim id_personas As String = txtCodigoP.Text
        oDAO.eliminar(id_personas)

        GridView1.DataSource = oDAO.selectt
        GridView1.DataBind()

    End Sub
End Class

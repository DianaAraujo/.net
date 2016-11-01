Imports ClassLibrary1.sv.gob.cnr.rrhh
Public Class Form1

    Private Sub btnConectar_Click(sender As Object, e As EventArgs) Handles btnConectar.Click
        Dim conexion As New conexion
        MsgBox(conexion.conex)

    End Sub
End Class

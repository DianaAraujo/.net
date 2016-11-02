Imports MySql.Data.MySqlClient
Namespace cnr.gob.cnr.gis

    Public Class conexion
        Private server As String = "localhost"
        Private usuariodb As String = "root"
        Private password As String = "evolution"
        Private db As String = "repaso"
        Private puerto As String = "3306"
        Dim cadenaconex As String = "server =" & server & ";database=" & db & ";user id= " & usuariodb & ";password=" & password & ";port=" & puerto & ";"

        Public Function cadenacon() As String
            Return cadenaconex
        End Function

        Public Sub conexion()
            Try
                Dim conn As New MySqlConnection(cadenaconex)
                conn.Open()
            Catch ex As ArgumentException
                MsgBox(ex)
            End Try

        End Sub

        Public Sub desconectar()
            Try
                Dim conn As New MySqlConnection(cadenaconex)
                conn.Close()
            Catch ex As Exception
                MsgBox(ex)
            End Try
            
        End Sub

    End Class

End Namespace


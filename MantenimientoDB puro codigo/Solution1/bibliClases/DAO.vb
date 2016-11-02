Imports bibliClases.cnr.gob.cnr.gis
Imports MySql.Data.MySqlClient
Namespace cnr.gob.cnr.gis

    Public Class DAO
        Dim cadenacon As New conexion
        Dim conn As New MySqlConnection(cadenacon.cadenacon)
        Public dt As New DataTable
        Public dtVlist As New DataTable
        Dim sqlselect As String = "select * from personas_vehiculo"
        Dim sqlinsert As String = " insert into personas (nombre, apellido, id_vehiculo) values"
        Dim sqlupdate As String = "update personas set "
        Dim sqldelete As String = "delete from personas where id_personas = "

        Public Function selectt() As DataTable

            Try
                dt.Clear()
                conn.Open()
                Dim da As New MySqlDataAdapter(sqlselect, conn)
                da.Fill(dt)
                conn.Close()

            Catch ex As Exception

            End Try
            Return dt
        End Function

        Public Function TipoVehi_list() As DataTable
            Dim sqlTipoVlist As String = "select id_vehiculo, tipo_vehiuclo from vehiculo"

            Try
                dtVlist.Clear()
                conn.Open()
                Dim da As New MySqlDataAdapter(sqlTipoVlist, conn)
                da.Fill(dtVlist)
                conn.Close()

            Catch ex As Exception

            End Try
            Return dtVlist
        End Function

        Public Sub agregar(ByVal nombre As String, ByVal apellido As String, ByVal id_vehiculo As String)
            sqlinsert &= "('" & nombre & "','" & apellido & "','" & id_vehiculo & "')"
            Try
                conn.Open()
                Dim insert As New MySqlCommand(sqlinsert, conn)
                insert.ExecuteNonQuery()
                MsgBox("Registro Agregado")
                insert.Dispose()
                conn.Close()
            Catch ex As Exception

            End Try

        End Sub

        Public Sub update(ByVal id_personas As String, nombre As String, ByVal apellido As String, valor_vehiculo As String)
            sqlupdate &= "nombre='" & nombre & "', apellido = '" & apellido & "', id_vehiculo = (select distinct id_vehiculo  from vehiculo  where '" & valor_vehiculo & "' = tipo_vehiuclo) where id_personas =" & id_personas
            Try
                conn.Open()
                Dim update As New MySqlCommand(sqlupdate, conn)
                update.ExecuteNonQuery()
                MsgBox("Registro modificado")
                conn.Dispose()
                conn.Close()
            Catch ex As Exception

            End Try

        End Sub

        Public Sub eliminar(ByVal id_persona As String)
            sqldelete &= id_persona
            Try
                conn.Open()
                Dim delete As New MySqlCommand(sqldelete, conn)
                delete.ExecuteNonQuery()
                MsgBox("Registro Eliminado")
                conn.Dispose()
                conn.Close()
            Catch ex As Exception

            End Try
        End Sub

    End Class

End Namespace


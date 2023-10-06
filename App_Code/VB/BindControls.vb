Imports Oracle.DataAccess.Client
Imports System.Configuration
Imports System.Data
Imports System.Text

Public Class BindControls
    Private connectionStr As New OracleConnection
    Private cmd As New OracleCommand
    Private da As New OracleDataAdapter
    Private ds As New DataSet
    Private gridView_bind, list_bind, open_con As Boolean
    Private strDsn, ErrorStr As String

    Public Function initializeConnection() As OracleConnection
        Try
            connectionStr = New OracleConnection(ConfigurationManager.ConnectionStrings("connAMS_ODP").ConnectionString)
            connectionStr.Open()
            open_con = True
            Return connectionStr
        Catch ee As Exception
            ErrorStr = ee.Message
            open_con = False
            Return Nothing
        End Try
    End Function

    Public Function getDetailsInDataTable(ByVal query) As DataTable
        Dim tblGen As New DataTable
        connectionStr = initializeConnection()
        If (open_con) Then
            Try
                da = New OracleDataAdapter(query, connectionStr)
                ds = New DataSet
                da.Fill(ds, "details")
                tblGen = ds.Tables("details")
            Catch ex As Exception
            Finally
                connectionStr.Close()
            End Try
        End If
        Return tblGen
    End Function

    Public Function bindVListBox(ByVal lb As ListBox, ByVal query As String, ByVal textField As String, ByVal valueField As String) As ListBox
        connectionStr = initializeConnection()
        ' Dim str() As String = textField.Split("-")
        If (open_con) Then
            Try
                da = New OracleDataAdapter(query, connectionStr)
                ds = New DataSet
                da.Fill(ds, "details")
                lb.DataSource = ds.Tables("details")
                'Dim str() As String = ds.ctextField.Split("-")
                lb.DataTextField = str(0).PadRight(75) + "-" + str(1)
                lb.DataValueField = valueField
                lb.DataBind()
            Catch ex As Exception
            Finally
                connectionStr.Close()
            End Try
        End If
        Return lb
    End Function
    Public Function bindListBox(ByVal lb As ListBox, ByVal query As String, ByVal textField As String, ByVal valueField As String) As ListBox
        connectionStr = initializeConnection()
        If (open_con) Then
            Try
                da = New OracleDataAdapter(query, connectionStr)
                ds = New DataSet
                da.Fill(ds, "details")
                lb.DataSource = ds.Tables("details")
                lb.DataTextField = textField
                lb.DataValueField = valueField
                lb.DataBind()
            Catch ex As Exception
            Finally
                connectionStr.Close()
            End Try
        End If
        Return lb
    End Function

    Public Function bindDropDownList(ByVal ddl As DropDownList, ByVal query As String, ByVal textField As String, ByVal valueField As String, ByVal strExtraText As String, ByVal strExtraValue As String) As DropDownList
        connectionStr = initializeConnection()
        If (open_con) Then
            Try
                da = New OracleDataAdapter(query, connectionStr)
                ds = New DataSet
                da.Fill(ds, "details")
                ddl.DataSource = ds.Tables("details")
                ddl.DataTextField = textField
                ddl.DataValueField = valueField
                ddl.DataBind()
                If (Not strExtraText.Equals(String.Empty)) Then
                    ddl.Items.Insert(0, New ListItem(strExtraText, strExtraValue))
                    ddl.SelectedIndex = 0
                End If
            Catch ex As Exception
            Finally
                connectionStr.Close()
            End Try
        End If
        Return ddl
    End Function

    Public Function bindFormView(ByVal fv As FormView, ByVal query As String) As FormView
        connectionStr = initializeConnection()
        If (open_con) Then
            Try
                da = New OracleDataAdapter(query, connectionStr)
                ds = New DataSet
                da.Fill(ds, "details")
                fv.DataSource = ds.Tables("details")
                fv.DataBind()
            Catch ex As Exception
            Finally
                connectionStr.Close()
            End Try
        End If
        Return fv
    End Function

    Public Function bindGridView(ByVal grdGen As GridView, ByVal query As String) As GridView
        connectionStr = initializeConnection()
        If (open_con) Then
            Try
                da = New OracleDataAdapter(query, connectionStr)
                ds = New DataSet
                da.Fill(ds, "details")
                grdGen.DataSource = ds.Tables("details")
                grdGen.DataBind()
            Catch ex As Exception
            Finally
                connectionStr.Close()
            End Try
        End If
        Return grdGen
    End Function


    Public Function executeSQLCommand(ByVal query) As Integer
        connectionStr = initializeConnection()
        Dim result As Integer = 0
        If (open_con) Then
            Try
                cmd = New OracleCommand(query, connectionStr)
                result = cmd.ExecuteNonQuery()
            Catch ex As Exception
                result = 0
            Finally
                connectionStr.Close()
            End Try
        End If
        Return result
    End Function



    Public Function returnString(ByVal query) As String
        connectionStr = initializeConnection()
        Dim strValue As String = ""
        If (open_con) Then
            Try
                cmd = New OracleCommand(query, connectionStr)
                strValue = cmd.ExecuteScalar.ToString()
            Catch ex As Exception
            Finally
                connectionStr.Close()
            End Try
        End If
        Return strValue
    End Function
End Class


Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration.ConfigurationManager
Imports System.Web.Configuration


Partial Class web_database
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Response.Cache.SetCacheability(HttpCacheability.NoCache)
        Response.Cache.SetAllowResponseInBrowserHistory(False)

        _Init()
    End Sub

    Sub _Init()
        QueryData()
    End Sub

#Region "資料查詢"
    Sub QueryData(Optional ByVal bInit As Boolean = True)
        Dim SQL As String
        Dim msg As String

        SQL = "select top 100 i.Customer_Name,a.Order_ID,a.Order_Date,a.Ship_Date,a.Ship_Mode"
        SQL += " 		,d.Region_name,e.State_name,f.Country_name,g.city_name"
        SQL += " 		,c.Product_Name,b.price,convert(decimal(12,1),b.Quantity) Quantity,b.Discount,b.Sales,h.profit"
        SQL += " from order_m a"
        SQL += " inner join order_d b on a.Order_ID=b.Order_ID"
        SQL += " inner join product c on b.Product_ID=c.Product_ID"
        SQL += " inner join Region d on a.Region_id=d.Region_id"
        SQL += " inner join R_State e on a.Region_id=e.Region_id and a.State_id=e.State_id "
        SQL += " inner join Country f on a.Region_id=f.Region_id and a.State_id=f.State_id and a.Country_id=f.Country_id "
        SQL += " inner join city g on a.Region_id=g.Region_id and a.State_id=g.State_id and a.Country_id=g.Country_id and a.city_id=g.city_id"
        SQL += " inner join order_profit h on a.Order_ID=h.Order_ID and b.Order_D_ID =h.Order_D_ID"
        SQL += " inner join customer i on a.Customer_ID=i.Customer_ID"
        SQL += " where 1=1"

        If bInit Then
            SQL += " and 1=0"
        End If

        If tbsdate.Text.ToString.Trim <> "" Then
            SQL += " and a.Order_Date>='" & tbsdate.Text.ToString.Trim & "'"
        End If

        If tbedate.Text.ToString.Trim <> "" Then
            SQL += " and a.Order_Date<='" & tbedate.Text.ToString.Trim & "'"
        End If

        SQL += " order by a.Order_Date,i.Customer_Name"

        'If bInit Then
        '    SQL = "exec web_query_order '1900/01/01','1900/01/01'"
        'Else
        '    SQL = "exec web_query_order '" & tbsdate.Text.ToString.Trim & "','" & tbedate.Text.ToString.Trim & "'"
        'End If

        Dim aDataSet As DataSet = GetDataSetX(SQL, msg)
        If msg <> "" Then Throw New Exception(msg)
        ViewState("GridView1") = aDataSet
        GridView1.DataSource = aDataSet
        GridView1.DataBind()
    End Sub

#End Region

    Public Shared Function GetDataSetX(ByVal SQL As String, ByRef strmsg As String) As DataSet
        GetDataSetX = Nothing
        If SQL = "" Then
            Exit Function
        End If
        Dim Conn As New SqlConnection
        Dim Ad As SqlDataAdapter
        Dim dt As New DataSet
        Try
            Try
                Conn.ConnectionString = "database-1.cnj2pb1hhz3z.us-east-1.rds.amazonaws.com;Initial Catalog=super_market;Persist Security Info=True;User ID=S09770015;Password=S09770015"
                Conn.Open()
                Dim Cmd As New SqlCommand(SQL, Conn)
                Cmd.CommandTimeout = "300"
                Ad = New SqlDataAdapter(Cmd)
                Ad.Fill(dt, "table1")
            Catch ex As Exception
                strmsg = strmsg & ex.Message.Replace(Chr(39), "").Replace(Chr(13) + Chr(10), " ")
            Finally
                Conn.Close()
                Conn.Dispose()
                Ad.Dispose()
            End Try
            Return dt
        Finally
            dt.Dispose()
        End Try
    End Function


    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        QueryData(False)
    End Sub
End Class

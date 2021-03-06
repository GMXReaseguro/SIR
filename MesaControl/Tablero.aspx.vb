﻿Imports System.Data
Imports Mensaje
Partial Class MesaControl_Tablero
    Inherits System.Web.UI.Page

    Public Property dtNegocios() As DataTable
        Get
            Return Session("dtNegocios")
        End Get
        Set(ByVal value As DataTable)
            Session("dtNegocios") = value
        End Set
    End Property

    Public Property dtEstatus() As DataTable
        Get
            Return Session("dtEstatus")
        End Get
        Set(ByVal value As DataTable)
            Session("dtEstatus") = value
        End Set
    End Property

    Public Property dtColocacion() As DataTable
        Get
            Return Session("dtColocacion")
        End Get
        Set(ByVal value As DataTable)
            Session("dtColocacion") = value
        End Set
    End Property

    Public Property dtNegocioXRamo() As DataTable
        Get
            Return Session("dtNegocioXRamo")
        End Get
        Set(ByVal value As DataTable)
            Session("dtNegocioXRamo") = value
        End Set
    End Property

    Public Property dtNegocioXOficina() As DataTable
        Get
            Return Session("dtNegocioXOficina")
        End Get
        Set(ByVal value As DataTable)
            Session("dtNegocioXOficina") = value
        End Set
    End Property

    Private Sub MesaControl_Tablero_Load(sender As Object, e As EventArgs) Handles Me.Load
        Try
            If Not IsPostBack Then
                Funciones.LlenaCatDDL(ddl_Moneda, "Mon",,,,,, False)
                LlenaGridEstatus(True)
                LlenaGridColocacion(True)
                LlenaGridNegocioXRamo(True)
                LlenaGridNegocioXOficina(True)
            End If
        Catch ex As Exception

        End Try
    End Sub

    Private Sub ConsultaNegocios()
        Dim id_folio As Integer = IIf(Len(txt_Folio.Text) = 0, -1, Replace(txt_Folio.Text, "REAS-", ""))

        Dim ws As New ws_MesaControl.MesaControlClient
        dtNegocios = Funciones.Lista_A_Datatable(ws.ObtieneNegocio(id_folio, -1, vbNullString, vbNullString, -1, vbNullString, -1,
                                                                   vbNullString, vbNullString, vbNullString, vbNullString, vbNullString,
                                                                   vbNullString).ToList)

        Funciones.LlenaGrid(gvd_Monitor, dtNegocios)
    End Sub


    Private Sub LlenaGridEstatus(ByVal bln_Nuevo As Boolean)

        If bln_Nuevo = True Then
            dtEstatus = New DataTable
            dtEstatus.Columns.Add("estatus")
            dtEstatus.Columns.Add("cantidad")
        End If

        If dtEstatus.Rows.Count = 0 Then
            dtEstatus.Rows.Add("CONFIRMADO", 0)
            dtEstatus.Rows.Add("CANCELADO", 0)
            dtEstatus.Rows.Add("PENDIENTE", 0)
        End If

        Funciones.LlenaGrid(gvd_Estatus, dtEstatus)
    End Sub

    Private Sub LlenaGridColocacion(ByVal bln_Nuevo As Boolean)

        If bln_Nuevo = True Then
            dtColocacion = New DataTable
            dtColocacion.Columns.Add("colocacion")
            dtColocacion.Columns.Add("cantidad")
        End If

        If dtColocacion.Rows.Count = 0 Then
            dtColocacion.Rows.Add("FIRME", 0)
            dtColocacion.Rows.Add("PROYECTO", 0)
            dtColocacion.Rows.Add("CANCELADO", 0)
        End If

        Funciones.LlenaGrid(gvd_Colocacion, dtColocacion)
    End Sub

    Private Sub LlenaGridNegocioXRamo(ByVal bln_Nuevo As Boolean)

        If bln_Nuevo = True Then
            dtNegocioXRamo = New DataTable
            dtNegocioXRamo.Columns.Add("ramo")
            dtNegocioXRamo.Columns.Add("colocacion")
            dtNegocioXRamo.Columns.Add("sucursal1")
            dtNegocioXRamo.Columns.Add("sucursal2")
            dtNegocioXRamo.Columns.Add("sucursal3")
            dtNegocioXRamo.Columns.Add("sucursal4")
            dtNegocioXRamo.Columns.Add("sucursal5")
            dtNegocioXRamo.Columns.Add("sucursal6")
            dtNegocioXRamo.Columns.Add("sucursal7")
            dtNegocioXRamo.Columns.Add("sucursal8")
            dtNegocioXRamo.Columns.Add("sucursal9")
            dtNegocioXRamo.Columns.Add("sucursal10")
            dtNegocioXRamo.Columns.Add("sucursal11")
            dtNegocioXRamo.Columns.Add("sucursal12")
            dtNegocioXRamo.Columns.Add("sucursal13")
            dtNegocioXRamo.Columns.Add("sucursal14")
            dtNegocioXRamo.Columns.Add("sucursal15")
            dtNegocioXRamo.Columns.Add("total")
        End If

        If dtNegocioXRamo.Rows.Count = 0 Then
            dtNegocioXRamo.Rows.Add("Sin Ramo", "En Firme", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
            dtNegocioXRamo.Rows.Add("Sin Ramo", "Proyecto", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
            dtNegocioXRamo.Rows.Add("Sin Ramo", "Cancelado", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
        End If

        Funciones.LlenaGrid(gvd_NegocioXRamo, dtNegocioXRamo)
    End Sub

    Private Sub LlenaGridNegocioXOficina(ByVal bln_Nuevo As Boolean)

        If bln_Nuevo = True Then
            dtNegocioXOficina = New DataTable
            dtNegocioXOficina.Columns.Add("colocacion")
            dtNegocioXOficina.Columns.Add("sucursal1")
            dtNegocioXOficina.Columns.Add("sucursal2")
            dtNegocioXOficina.Columns.Add("sucursal3")
            dtNegocioXOficina.Columns.Add("sucursal4")
            dtNegocioXOficina.Columns.Add("sucursal5")
            dtNegocioXOficina.Columns.Add("sucursal6")
            dtNegocioXOficina.Columns.Add("sucursal7")
            dtNegocioXOficina.Columns.Add("sucursal8")
            dtNegocioXOficina.Columns.Add("sucursal9")
            dtNegocioXOficina.Columns.Add("sucursal10")
            dtNegocioXOficina.Columns.Add("sucursal11")
            dtNegocioXOficina.Columns.Add("sucursal12")
            dtNegocioXOficina.Columns.Add("sucursal13")
            dtNegocioXOficina.Columns.Add("sucursal14")
            dtNegocioXOficina.Columns.Add("sucursal15")
            dtNegocioXOficina.Columns.Add("total")
        End If

        If dtNegocioXOficina.Rows.Count = 0 Then
            dtNegocioXOficina.Rows.Add("En Firme", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
            dtNegocioXOficina.Rows.Add("Proyecto", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
            dtNegocioXOficina.Rows.Add("Cancelado", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
        End If

        Funciones.LlenaGrid(gvd_NegocioXOficina, dtNegocioXOficina)
    End Sub

    Private Sub btn_Monitor_Click(sender As Object, e As EventArgs) Handles btn_Monitor.Click
        Try
            ConsultaNegocios()
        Catch ex As Exception
            Mensaje.MuestraMensaje("Mesa de Control", ex.Message, TipoMsg.Falla)
        End Try
    End Sub
End Class

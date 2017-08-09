﻿////////////////////////////////////////////////////////////////////EVENTO EXPANDIR-CONTRAER/////////////////////////////////////
//Colapsar Ventana
$("body").on("click", ".contraer", function () {
    event.preventDefault ? event.preventDefault() : event.returnValue = false;
    var id = '';
    var id = this.id;
    id = id.replace('coVentana','');
    fn_CambiaEstado(id, "1");
});

//Expandir Ventana
$("body").on("click", ".expandir", function () {
    event.preventDefault ? event.preventDefault() : event.returnValue = false;
    var id = '';
    var id = this.id;
    id = id.replace('exVentana', '');
    fn_CambiaEstado(id, "0");
});
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

$("body").on("click", ".AgregaGenerales", function () {
    event.preventDefault ? event.preventDefault() : event.returnValue = false;
    var Condicion = " WHERE cod_reporte IN (2) AND cod_seccion IN (1) ";
    var strSel = fn_ElementosSeleccionados($("[id*=gvd_Generales]"), $('[id*=lbl_ClaveGen]'), $('[id*=chk_SelGen]'), false);
    fn_CargaCatalogo("spS_CatalogosOP ==Rep==,==" + Condicion + "==" + strSel , "Multiple", "gvd_Generales", "Gen", "GENERALES");
});

$("body").on("click", ".AgregaReaseguro", function () {
    event.preventDefault ? event.preventDefault() : event.returnValue = false;
    var Condicion = " WHERE cod_reporte IN (2) AND cod_seccion IN (2) ";
    var strSel = fn_ElementosSeleccionados($("[id*=gvd_Reaseguro]"), $('[id*=lbl_ClaveRea]'), $('[id*=chk_SelRea]'), false);
    fn_CargaCatalogo("spS_CatalogosOP ==Rep==,==" + Condicion + "==" + strSel, "Multiple", "gvd_Reaseguro", "Rea", "REASEGURO");
});

$("body").on("click", ".AgregaSiniestros", function () {
    event.preventDefault ? event.preventDefault() : event.returnValue = false;
    var Condicion = " WHERE cod_reporte IN (2) AND cod_seccion IN (3) ";
    var strSel = fn_ElementosSeleccionados($("[id*=gvd_Siniestros]"), $('[id*=lbl_ClaveSin]'), $('[id*=chk_SelSin]'), false);
    fn_CargaCatalogo("spS_CatalogosOP ==Rep==,==" + Condicion + "==" + strSel, "Multiple", "gvd_Siniestros", "Sin", "SINIESTROS");
});

$("body").on("click", ".AgregaCumulos", function () {
    event.preventDefault ? event.preventDefault() : event.returnValue = false;
    var Condicion = " WHERE cod_reporte IN (2) AND cod_seccion IN (4) ";
    var strSel = fn_ElementosSeleccionados($("[id*=gvd_Cumulos]"), $('[id*=lbl_ClaveCum]'), $('[id*=chk_SelCum]'), false);
    fn_CargaCatalogo("spS_CatalogosOP ==Rep==,==" + Condicion + "==" + strSel, "Multiple", "gvd_Cumulos", "Cum", "CUMULOS");
});

$("body").on("click", ".AgregaCobranzas", function () {
    event.preventDefault ? event.preventDefault() : event.returnValue = false;
    var Condicion = " WHERE cod_reporte IN (2) AND cod_seccion IN (5) ";
    var strSel = fn_ElementosSeleccionados($("[id*=gvd_Cobranzas]"), $('[id*=lbl_ClaveCob]'), $('[id*=chk_SelCob]'), false);
    fn_CargaCatalogo("spS_CatalogosOP ==Rep==,==" + Condicion + "==" + strSel, "Multiple", "gvd_Cobranzas", "Cob", "COBRANZAS");
});

$("body").on("click", ".AgregaContabilidad", function () {
    event.preventDefault ? event.preventDefault() : event.returnValue = false;
    var Condicion = " WHERE cod_reporte IN (2) AND cod_seccion IN (6) ";
    var strSel = fn_ElementosSeleccionados($("[id*=gvd_Contabilidad]"), $('[id*=lbl_ClaveCon]'), $('[id*=chk_SelCon]'), false);
    fn_CargaCatalogo("spS_CatalogosOP ==Rep==,==" + Condicion + "==" + strSel, "Multiple", "gvd_Contabilidad", "Con", "CONTABILIDAD");
});

$("body").on("click", ".AgregaBroker", function () {
    event.preventDefault ? event.preventDefault() : event.returnValue = false;
    var strSel = fn_ElementosSeleccionados($("[id*=gvd_Broker]"), $('[id*=lbl_ClaveBro]'), $('[id*=chk_SelBro]'), false);
    fn_CargaCatalogo("spS_CatalogosOP ==Bro==,====" + strSel, "Multiple", "gvd_Broker", "Bro", "BROKERS");
});

//Detecta la clase Agregar Compañia y abre el Catalogo
$("body").on("click", ".AgregaCia", function () {
    event.preventDefault ? event.preventDefault() : event.returnValue = false;
    var strSel = fn_ElementosSeleccionados($("[id*=gvd_Compañia]"), $('[id*=lbl_ClaveCia]'), $('[id*=chk_SelCia]'), false);
    fn_CargaCatalogo("spS_CatalogosOP ==Cia==,====" + strSel, "Multiple", "gvd_Compañia", "Cia", "COMPAÑIAS");
});

$("body").on("click", ".AgregaRamoCont", function () {
    event.preventDefault ? event.preventDefault() : event.returnValue = false;
    var strSel = fn_ElementosSeleccionados($("[id*=gvd_RamoContable]"), $('[id*=lbl_ClaveRamC]'), $('[id*=chk_SelRamC]'), true);
    fn_CargaCatalogo("spS_CatalogosOP ==RamC==,====" + strSel, "Multiple", "gvd_RamoContable", "RamC", "RAMOS CONTABLES");
});

$("body").on("click", ".AgregaProducto", function () {
    event.preventDefault ? event.preventDefault() : event.returnValue = false;
    var strSel = fn_ElementosSeleccionados($("[id*=gvd_Producto]"), $('[id*=lbl_ClavePro]'), $('[id*=chk_SelPro]'), true);
    fn_CargaCatalogo("spS_CatalogosOP ==Pro==,====" + strSel, "Multiple", "gvd_Producto", "Pro", "PRODUCTOS");
});

$("body").on("click", ".AgregaAdicional", function () {
    event.preventDefault ? event.preventDefault() : event.returnValue = false;
    var Condicion = " WHERE cod_reporte IN (2) AND cod_seccion IN (1,2,3,4,5,6) ";
    var strSel = fn_ElementosSeleccionados($("[id*=gvd_Adicionales]"), $('[id*=lbl_ClaveAdi]'), $('[id*=chk_SelAdi]'), false);
    fn_CargaCatalogo("spS_CatalogosOP ==Rep==,==" + Condicion + "==" + strSel, "Multiple", "gvd_Adicionales", "Adi", "FILTROS ADICIONALES");
});

$("body").on("click", ".modal-flotante", function () {
    // set ohters element to the initial level
    $(this).siblings('.modal-flotante').css('z-index', 10);
    // set clicked element to a higher level
    $(this).css('z-index', 11);
});

$("body").on("click", "[id*=gvd_Adicionales] .ValoresMultiples", function () {
    fn_AbrirModal('#Multivalores');
});
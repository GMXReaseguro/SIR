﻿<%@ Page Title="" Language="VB" MasterPageFile="~/Pages/SiteMaster.master" AutoEventWireup="false" CodeFile="Tablero.aspx.vb" Inherits="MesaControl_Tablero" %>
<%@ MasterType VirtualPath="~/Pages/SiteMaster.master" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cph_principal" Runat="Server" >
    <script src="../Scripts/TableroControl.js"></script>
    <asp:HiddenField runat="server" ID="hid_Ventanas" Value="0|1|1|1|1|0|0|0|0|0|" />

    <div class="zona-principal">

        <table>
            <tr>
                <td>
                    <div class="panel-seccion-fija Encabezado">
                        <asp:UpdatePanel runat="server" ID="upGenerales">
                            <ContentTemplate>
                                <div class="cuadro-titulo">
                                    Criterios
                                </div>
                                <div class="clear padding4"></div>
                                <div class="row">
                                    <div class="col-md-4">
                                        <asp:label runat="server" class="col-md-1 etiqueta-control" Width="30%">Folio</asp:label>
                                        <asp:TextBox runat="server" ID="txt_Folio" CssClass="estandar-control" placeholder="Ejem. Reas-20181,Reas-201810" Width="70%"></asp:TextBox>
                                    </div>    
                                    <div class="col-md-4">
                                        <asp:label runat="server" class="col-md-1 etiqueta-control" Width="30%">Oficina</asp:label>
                                        <asp:TextBox runat="server" ID="txt_ClaveOfi" CssClass="NoDisplay"></asp:TextBox>
                                        <asp:TextBox runat="server" ID="txt_SearchOfi" CssClass="col-md-1 estandar-control" Enabled="false" placeholder="Sucursal" Width="55%"></asp:TextBox>
                                        <asp:LinkButton id="btn_SelOficina" runat="server" class="btn botones boton-chico AgregaOficina" data-toggle="modal" data-target="#EsperaModal">
                                            <span>
                                                <img class="btn-buscar"/>
                                            </span>
                                        </asp:LinkButton>
                                    </div>
                                    <div class="col-md-4">
                                        <asp:label runat="server" class="col-md-1 etiqueta-control" Width="30%">Fecha Corte</asp:label>
                                        <asp:TextBox runat="server" ID="txtFecGeneraDe" CssClass="col-md-1 estandar-control Fecha Centro" TextMode="Date" PlaceHolder="dia/mes/año" Width="30%" ></asp:TextBox>
                                        <asp:label runat="server" class="col-md-1 etiqueta-control" Width="5%">A</asp:label>
                                        <asp:TextBox runat="server" ID="txtFecGeneraA" CssClass="estandar-control Fecha Centro" TextMode="Date" PlaceHolder="dia/mes/año" Width="30%" ></asp:TextBox>
                                    </div>        
                                </div>
                                <div class="clear padding4"></div>
                                <div class="row">
                                    <div class="col-md-4">
                                        <asp:label runat="server" class="col-md-1 etiqueta-control" Width="30%">Moneda</asp:label>
                                        <asp:DropDownList runat="server" ID="ddl_Moneda" CssClass="estandar-control" Width="70%" ></asp:DropDownList>
                                    </div>    
                                    <div class="col-md-4">
                                        <asp:label runat="server" class="col-md-1  etiqueta-control" Width="30%">Responsable</asp:label>
                                        <asp:TextBox runat="server" ID="txt_ClaveResp" CssClass="NoDisplay"></asp:TextBox>
                                        <asp:TextBox runat="server" ID="txt_SearchResp" CssClass="col-md-1 estandar-control" placeholder="Usuario Responsable" Enabled="false" Width="55%"></asp:TextBox>
                                        <asp:LinkButton id="btn_SelResponsable" runat="server" class="btn botones boton-chico AgregaResponsable" data-toggle="modal" data-target="#EsperaModal">
                                            <span>
                                                <img class="btn-buscar"/>
                                            </span>
                                        </asp:LinkButton>
                                    </div>
                                    <div class="col-md-4">

                                    </div>        
                                </div>
                            </ContentTemplate>
                        </asp:UpdatePanel>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="cuadro-subtitulo">
                                    <input type="image" src="../Images/contraer_mini.png" id="coVentana1" class="contraer"  />
                                    <input type="image" src="../Images/expander_mini.png"   id="exVentana1" class="expandir"  />
                                    Agrupador
                                </div>
                                <div class="panel-subcontenido ventana1">
                                        <asp:UpdatePanel runat="server" ID="upAgrupador">
                                        <ContentTemplate>
                                                <asp:Panel runat="server" ID="pn_Agrupador" Width="100%" Height="120px" ScrollBars="Both">
                                                <asp:GridView runat="server" ID="gvd_Agrupador" AutoGenerateColumns="false" 
                                                                CssClass="grid-view" HeaderStyle-CssClass="header" AlternatingRowStyle-CssClass="altern"
                                                                GridLines="Horizontal"  ShowHeaderWhenEmpty="true" DataKeyNames="Clave" >
                                                    <Columns>
                                                        <asp:TemplateField HeaderText="">
                                                            <ItemTemplate>
                                                                    <asp:HiddenField runat="server" ID="chk_SelAgr" value="false"/>
                                                            </ItemTemplate>
                                                        </asp:TemplateField >
                                                        <asp:TemplateField HeaderText="Clave">
                                                            <ItemTemplate>
                                                                <asp:Label runat="server" ID="lbl_ClaveAgr" Text='<%# Eval("Clave") %>' Width="50px"></asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Descripción">
                                                            <ItemTemplate>
                                                                <asp:Label runat="server" ID="lbl_Desc" Text='<%# Eval("Descripcion") %>' Width="410px"></asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField>
                                                            <ItemTemplate>
                                                                <asp:imagebutton ImageUrl="~/Images/delete_rojo.png" CommandName="Delete" Height="26" runat="server" CssClass="btn Delete" />
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                    </Columns>
                                                </asp:GridView>
                                            </asp:Panel>
                                            <div style="width:100%;  text-align:right">
                                                <asp:LinkButton id="btn_AddRamoContable" runat="server" class="btn botones AgregaAgrupadores" data-toggle="modal" data-target="#EsperaModal">
                                                    <span>
                                                        <img class="btn-añadir"/>
                                                        Añadir
                                                    </span>
                                                </asp:LinkButton>
                                            </div>
                                        </ContentTemplate>
                                        </asp:UpdatePanel>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="cuadro-subtitulo">
                                    <input type="image" src="../Images/contraer_mini.png" id="coVentana2" class="contraer"  />
                                    <input type="image" src="../Images/expander_mini.png"   id="exVentana2" class="expandir"  />
                                    Ramo
                                </div>
                                <div class="panel-subcontenido ventana2">
                                        <asp:UpdatePanel runat="server" ID="up_Producto">
                                        <ContentTemplate>
                                                <asp:Panel runat="server" ID="pnl_Producto" Width="99.5%" Height="120px" ScrollBars="Both">
                                                <asp:GridView runat="server" ID="gvd_Producto" AutoGenerateColumns="false" 
                                                                CssClass="grid-view" HeaderStyle-CssClass="header" AlternatingRowStyle-CssClass="altern"
                                                                GridLines="Horizontal"  ShowHeaderWhenEmpty="true" >
                                                    <Columns>
                                                        <asp:TemplateField HeaderText="">
                                                            <ItemTemplate>
                                                                    <asp:HiddenField runat="server" ID="chk_SelPro" value="false"/>
                                                            </ItemTemplate>
                                                        </asp:TemplateField >
                                                        <asp:TemplateField HeaderText="Clave">
                                                            <ItemTemplate>
                                                                <asp:Label runat="server" ID="lbl_ClavePro" Text='<%# Eval("Clave") %>' Width="50px"></asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Descripción">
                                                            <ItemTemplate>
                                                                <asp:Label runat="server" ID="lbl_Desc" Text='<%# Eval("Descripcion") %>' Width="410px"></asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField>
                                                            <ItemTemplate>
                                                                <asp:imagebutton ImageUrl="~/Images/delete_rojo.png" CommandName="Delete" Height="26" runat="server" CssClass="btn Delete" />
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                    </Columns>
                                                </asp:GridView>
                                            </asp:Panel>
                                            <div style="width:100%;  text-align:right">
                                                <asp:LinkButton id="LinkButton1" runat="server" class="btn botones AgregaProducto" data-toggle="modal" data-target="#EsperaModal">
                                                    <span>
                                                        <img class="btn-añadir"/>
                                                        Añadir
                                                    </span>
                                                </asp:LinkButton>
                                            </div>
                                        </ContentTemplate>
                                        </asp:UpdatePanel>
                                </div>
                            </div>
                        </div>

                        <div class="clear padding5"></div>
                    
                        <div class="row">
                            <div class="col-md-6">
                                <div class="cuadro-subtitulo">
                                    <input type="image" src="../Images/contraer_mini.png" id="coVentana3" class="contraer"  />
                                    <input type="image" src="../Images/expander_mini.png"   id="exVentana3" class="expandir"  />
                                    Intermediario
                                </div>
                                <div class="panel-subcontenido ventana3">
                                        <asp:UpdatePanel runat="server" ID="upBroker">
                                            <ContentTemplate>
                                                <asp:Panel runat="server" ID="pnlBroker" Width="100%" Height="100px" ScrollBars="Both">
                                                        <asp:GridView runat="server" ID="gvd_Broker" AutoGenerateColumns="false" 
                                                                        CssClass="grid-view" HeaderStyle-CssClass="header" AlternatingRowStyle-CssClass="altern"
                                                                        GridLines="Horizontal"  ShowHeaderWhenEmpty="true" >
                                                            <Columns>
                                                                <asp:TemplateField HeaderText="">
                                                                    <ItemTemplate>
                                                                            <asp:HiddenField runat="server" ID="chk_SelBro" value="false"/>
                                                                    </ItemTemplate>
                                                                </asp:TemplateField >
                                                                <asp:TemplateField HeaderText="Clave">
                                                                    <ItemTemplate>
                                                                        <asp:Label runat="server" ID="lbl_ClaveBro" Text='<%# Eval("Clave") %>' Width="50px"></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateField>
                                                                <asp:TemplateField HeaderText="Descripción">
                                                                    <ItemTemplate>
                                                                        <asp:Label runat="server" ID="lbl_Desc" Text='<%# Eval("Descripcion") %>' Width="410px"></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateField>
                                                                <asp:TemplateField>
                                                                    <ItemTemplate>
                                                                        <asp:imagebutton ImageUrl="~/Images/delete_rojo.png" CommandName="Delete" Height="26" runat="server" CssClass="btn Delete" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateField>
                                                            </Columns>
                                                        </asp:GridView>
                                                    </asp:Panel>
                                                    <div style="width:100%;  text-align:right">
                                                        <asp:LinkButton id="btn_AddBroker" runat="server" class="btn botones AgregaBroker" data-toggle="modal" data-target="#EsperaModal">
                                                            <span>
                                                                <img class="btn-añadir"/>
                                                                Añadir
                                                            </span>
                                                        </asp:LinkButton>
                                                    </div>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="cuadro-subtitulo">
                                    <input type="image" src="../Images/contraer_mini.png" id="coVentana4" class="contraer"  />
                                    <input type="image" src="../Images/expander_mini.png"   id="exVentana4" class="expandir"  />
                                    Reasegurador
                                </div>
                                <div class="panel-subcontenido ventana4">
                                        <asp:UpdatePanel runat="server" ID="upCompañia">
                                            <ContentTemplate>
                                                <asp:Panel runat="server" ID="pnlCompañia" Width="99.5%" Height="100px" ScrollBars="Both">
                                                        <asp:GridView runat="server" ID="gvd_Compañia" AutoGenerateColumns="false" 
                                                                        CssClass="grid-view" HeaderStyle-CssClass="header" AlternatingRowStyle-CssClass="altern"
                                                                        GridLines="Horizontal"  ShowHeaderWhenEmpty="true">
                                                            <Columns>
                                                                <asp:TemplateField HeaderText="" ItemStyle-CssClass="SelCia">
                                                                    <ItemTemplate>
                                                                        <asp:HiddenField runat="server" ID="chk_SelCia" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateField>
                                                                <asp:TemplateField HeaderText="Clave" ItemStyle-CssClass="ClaveCia">
                                                                    <ItemTemplate>
                                                                        <asp:Label runat="server" ID="lbl_ClaveCia" Text='<%# Eval("Clave") %>' Width="50px" ></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateField>
                                                                <asp:TemplateField HeaderText="Descripción" ItemStyle-CssClass="DescripcionCia">
                                                                    <ItemTemplate>
                                                                        <asp:Label runat="server" ID="lbl_Desc" Text='<%# Eval("Descripcion") %>' Width="410px"></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateField>
                                                                <asp:TemplateField>
                                                                    <ItemTemplate>
                                                                        <asp:imagebutton ImageUrl="~/Images/delete_rojo.png" CommandName="Delete" Height="26" runat="server" CssClass="btn Delete" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateField>
                                                            </Columns>
                                                        </asp:GridView>
                                                    </asp:Panel>
                                                    <div style="width:100%;  text-align:right">
                                                        <asp:LinkButton id="btn_AddCia" runat="server" class="btn botones AgregaCia" data-toggle="modal" data-target="#EsperaModal">
                                                            <span>
                                                                <img class="btn-añadir"/>
                                                                Añadir
                                                            </span>
                                                        </asp:LinkButton>
                                                    </div>
                                            </ContentTemplate>
                                        </asp:UpdatePanel> 
                                </div>
                            </div>
                        </div>
                        <div class="clear padding10"></div>
                        <div style="width:100%; text-align:right; border-top-style:inset;border-width:1px; border-color:#003A5D">
                            <asp:UpdatePanel runat="server" ID="upBusqueda">
                                <ContentTemplate>
                                    <asp:LinkButton id="btn_Monitor" runat="server" class="btn botones">
                                        <span>
                                            <img class="btn-monitor"/>
                                            Monitor
                                        </span>
                                    </asp:LinkButton>

                                    <asp:LinkButton id="btn_Actualizar" runat="server" class="btn botones">
                                        <span>
                                            <img class="btn-refresh"/>
                                            Actualiza
                                        </span>
                                    </asp:LinkButton>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </div>

                        <ul class="nav nav-tabs">
                            <li class="active"><a data-toggle="tab" href="#menu1" class="Generales">Negocios</a></li>
                            <li><a data-toggle="tab" href="#menu2" class="Colocacion">Graficos y Estadisticas</a></li>
                        </ul>
                    </div>
                </td>
            </tr>
        </table>

        <div class="clear padding5"></div>
        <div class="tab-content">
            <div id="menu1" class="tab-pane fade in active">
                <asp:UpdatePanel runat="server" ID="upMonitor">
                    <ContentTemplate>
                        <div class="panel-seccion">
                            <div class="cuadro-titulo panel-encabezado">
                                TABLERO DE CONTROL
                            </div>
                            <div>
                                <div class="clear padding10"></div>
                                <asp:Panel runat="server" ID="pnl_Monitor" Width="99%" Height="300px" ScrollBars="Both">
                                    <asp:GridView runat="server" ID="gvd_Monitor" AutoGenerateColumns="false" 
                                                    CssClass="grid-view" HeaderStyle-CssClass="header" AlternatingRowStyle-CssClass="altern"
                                                    GridLines="Horizontal"  ShowHeaderWhenEmpty="true" DataKeyNames="id_folio,cod_moneda">
                                        <Columns>
                                            <asp:TemplateField HeaderText="Folio">
                                                <ItemTemplate>
                                                    <asp:linkbutton runat="server" ID="lnk_Folio" Text='<%# Eval("folio") %>' CssClass="estandar-control Tablero Folio Centro" Width="150px" ></asp:linkbutton>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Asegurado">
                                                <ItemTemplate>
                                                    <asp:textbox runat="server" ID="txt_Asegurado" Text='<%# Eval("nombre_asegurado") %>' Enabled="false" CssClass="estandar-control Tablero" Width="300px" ></asp:textbox>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Moneda">
                                                <ItemTemplate>
                                                    <asp:textbox runat="server" ID="txt_Moneda" Text='<%# Eval("Moneda") %>' Enabled="false" CssClass="estandar-control Tablero" Width="100" ></asp:textbox>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Inicio Vig.">
                                                <ItemTemplate>
                                                    <asp:textbox runat="server" ID="txt_VigIni" Text='<%# Eval("fec_inivig") %>' Enabled="false" CssClass="estandar-control Tablero Centro" Width="70" ></asp:textbox>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Fin Vig.">
                                                <ItemTemplate>
                                                    <asp:textbox runat="server" ID="txt_VigFin" Text='<%# Eval("fec_finvig") %>' Enabled="false" CssClass="estandar-control Tablero Centro" Width="70" ></asp:textbox>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Emisión">
                                                <ItemTemplate>
                                                    <asp:textbox runat="server" ID="txt_Emision" Text='<%# Eval("fec_emi") %>' Enabled="false" CssClass="estandar-control Tablero Centro" Width="70" ></asp:textbox>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Regional">
                                                <ItemTemplate>
                                                    <asp:textbox runat="server" ID="txt_Regional" Text='<%# Eval("sucursal_ofi") %>' Enabled="false" CssClass="estandar-control Tablero" Width="90px" ></asp:textbox>
                                                </ItemTemplate>
                                            </asp:TemplateField>                                           
                                            <asp:TemplateField HeaderText="Agente">
                                                <ItemTemplate>
                                                    <asp:textbox runat="server" ID="txt_Agente" Text='<%# Eval("agente") %>' Enabled="false" CssClass="estandar-control Tablero" Width="200" ></asp:textbox>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Suscriptor">
                                                <ItemTemplate>
                                                    <asp:textbox runat="server" ID="txt_Suscriptor" Text='<%# Eval("suscriptor") %>' Enabled="false" CssClass="estandar-control Tablero" Width="200" ></asp:textbox>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Giro Negocio">
                                                <ItemTemplate>
                                                    <asp:textbox runat="server" ID="txt_Giro" Text='<%# Eval("giro_negocio") %>' Enabled="false" CssClass="estandar-control Tablero" Width="300" ></asp:textbox>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Giro Asegurado">
                                                <ItemTemplate>
                                                    <asp:textbox runat="server" ID="txt_GiroAseg" Text='<%# Eval("giro_asegurado") %>' Enabled="false" CssClass="estandar-control Tablero" Width="200" ></asp:textbox>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Tipo Endoso">
                                                <ItemTemplate>
                                                    <asp:textbox runat="server" ID="txt_Endoso" Text='<%# Eval("grupo_endoso") %>' Enabled="false" CssClass="estandar-control Tablero" Width="150" ></asp:textbox>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                             <asp:TemplateField HeaderText="Movimiento">
                                                <ItemTemplate>
                                                    <asp:textbox runat="server" ID="txt_Movimiento" Text='<%# Eval("tipo_endoso") %>' Enabled="false" CssClass="estandar-control Tablero" Width="150" ></asp:textbox>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Responsable">
                                                <ItemTemplate>
                                                    <asp:textbox runat="server" ID="txt_Responsable" Text='<%# Eval("cod_usuario_crea") %>' Enabled="false" CssClass="estandar-control Tablero" Width="200" ></asp:textbox>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                    </asp:GridView>
                                </asp:Panel>
                            </div>
                        </div>
                    </ContentTemplate>
               </asp:UpdatePanel>
            </div>

            <div id="menu2" class="tab-pane fade">
                <div class="panel-seccion">
                    <div class="cuadro-titulo panel-encabezado">
                        GRAFICOS Y ESTADISTICAS
                    </div>
                    <div>
                        <div class="clear padding10"></div>
                        <asp:UpdatePanel runat="server" ID="upGraficas">
                            <ContentTemplate>
                                <div class="row">
                                    <div class="col-md-5">
                                        <div class="cuadro-subtitulo-grid">
                                            NEGOCIOS RECIBIDOS EN EL PERIODO
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <asp:label runat="server" Width="100%" class="etiqueta-control Tablero Centro">ESTATUS</asp:label>
                                                <asp:Panel runat="server" ID="pnlEstatus" CssClass="Centrado" Width="100%" Height="100px" ScrollBars="Horizontal">
                                                    <asp:GridView runat="server" ID="gvd_Estatus" AutoGenerateColumns="false" 
                                                                    CssClass="grid-view" HeaderStyle-CssClass="header" AlternatingRowStyle-CssClass="altern"
                                                                    GridLines="Horizontal"  ShowHeaderWhenEmpty="true">
                                                        <Columns>
                                                            <asp:TemplateField HeaderText="Total">
                                                                <ItemTemplate>
                                                                    <asp:textbox runat="server" ID="txt_Estatus" Text='<%# Eval("estatus") %>' Enabled="false" CssClass="estandar-control Tablero" Width="130px" ></asp:textbox>
                                                                </ItemTemplate>
                                                            </asp:TemplateField>
                                                            <asp:TemplateField HeaderText="0">
                                                                <ItemTemplate>
                                                                    <asp:textbox runat="server" ID="txt_Cantidad" Text='<%# Eval("cantidad") %>' Enabled="false" CssClass="estandar-control Tablero Monto" Width="50px" ></asp:textbox>
                                                                </ItemTemplate>
                                                            </asp:TemplateField>
                                                        </Columns>
                                                    </asp:GridView>
                                                </asp:Panel>
                                            </div>
                                            <div class="col-md-6">
                                                <asp:label runat="server" Width="100%" class="etiqueta-control Tablero Centro">TIPO DE COLOCACIÓN</asp:label>
                                                <asp:Panel runat="server" ID="pnlColocacion" CssClass="Centrado" Width="100%" Height="100px" ScrollBars="Horizontal">
                                                    <asp:GridView runat="server" ID="gvd_Colocacion" AutoGenerateColumns="false" 
                                                                    CssClass="grid-view" HeaderStyle-CssClass="header" AlternatingRowStyle-CssClass="altern"
                                                                    GridLines="Horizontal"  ShowHeaderWhenEmpty="true">
                                                        <Columns>
                                                            <asp:TemplateField HeaderText="Total">
                                                                <ItemTemplate>
                                                                    <asp:textbox runat="server" ID="txt_Colocacion" Text='<%# Eval("colocacion") %>' Enabled="false" CssClass="estandar-control Tablero" Width="130px" ></asp:textbox>
                                                                </ItemTemplate>
                                                            </asp:TemplateField>
                                                            <asp:TemplateField HeaderText="0">
                                                                <ItemTemplate>
                                                                    <asp:textbox runat="server" ID="txt_Cantidad" Text='<%# Eval("cantidad") %>' Enabled="false" CssClass="estandar-control Tablero Monto" Width="50px" ></asp:textbox>
                                                                </ItemTemplate>
                                                            </asp:TemplateField>
                                                        </Columns>
                                                    </asp:GridView>
                                                </asp:Panel>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-7">
                                        <div class="cuadro-subtitulo-grid">
                                            NEGOCIO FACULTATIVO POR RAMO Y OFICINA
                                        </div>    

               
                                        <asp:Panel runat="server" ID="pnlNegocioXRamo" Width="100%" Height="300px" ScrollBars="Both">
                                            <asp:GridView runat="server" ID="gvd_NegocioXRamo" AutoGenerateColumns="false" 
                                                            CssClass="grid-view" HeaderStyle-CssClass="header" AlternatingRowStyle-CssClass="altern"
                                                            GridLines="Horizontal"  ShowHeaderWhenEmpty="true">
                                                <Columns>
                                                    <asp:TemplateField HeaderText="">
                                                        <ItemTemplate>
                                                            <asp:textbox runat="server" ID="txt_Ramo" Text='<%# Eval("ramo") %>' Enabled="false" CssClass="estandar-control Tablero" Width="130px" ></asp:textbox>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Colocación">
                                                        <ItemTemplate>
                                                            <asp:textbox runat="server" ID="txt_Colocacion" Text='<%# Eval("colocacion") %>' Enabled="false" CssClass="estandar-control Tablero" Width="100px" ></asp:textbox>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Sucursal1">
                                                        <ItemTemplate>
                                                            <asp:textbox runat="server" ID="txt_Sucursal1" Text='<%# Eval("sucursal1") %>' Enabled="false" CssClass="estandar-control Tablero Monto" Width="100px" ></asp:textbox>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Sucursal2">
                                                        <ItemTemplate>
                                                            <asp:textbox runat="server" ID="txt_Sucursal2" Text='<%# Eval("sucursal2") %>' Enabled="false" CssClass="estandar-control Tablero Monto" Width="100px" ></asp:textbox>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Sucursal3">
                                                        <ItemTemplate>
                                                            <asp:textbox runat="server" ID="txt_Sucursal3" Text='<%# Eval("sucursal3") %>' Enabled="false" CssClass="estandar-control Tablero Monto" Width="100px" ></asp:textbox>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Sucursal4">
                                                        <ItemTemplate>
                                                            <asp:textbox runat="server" ID="txt_Sucursal4" Text='<%# Eval("sucursal4") %>' Enabled="false" CssClass="estandar-control Tablero Monto" Width="100px" ></asp:textbox>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Sucursal5">
                                                        <ItemTemplate>
                                                            <asp:textbox runat="server" ID="txt_Sucursal5" Text='<%# Eval("sucursal5") %>' Enabled="false" CssClass="estandar-control Tablero Monto" Width="100px" ></asp:textbox>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Sucursal6">
                                                        <ItemTemplate>
                                                            <asp:textbox runat="server" ID="txt_Sucursal6" Text='<%# Eval("sucursal6") %>' Enabled="false" CssClass="estandar-control Tablero Monto" Width="100px" ></asp:textbox>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Sucursal7">
                                                        <ItemTemplate>
                                                            <asp:textbox runat="server" ID="txt_Sucursal7" Text='<%# Eval("sucursal7") %>' Enabled="false" CssClass="estandar-control Tablero Monto" Width="100px" ></asp:textbox>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Sucursal8">
                                                        <ItemTemplate>
                                                            <asp:textbox runat="server" ID="txt_Sucursal8" Text='<%# Eval("sucursal8") %>' Enabled="false" CssClass="estandar-control Tablero Monto" Width="100px" ></asp:textbox>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Sucursal9">
                                                        <ItemTemplate>
                                                            <asp:textbox runat="server" ID="txt_Sucursal9" Text='<%# Eval("sucursal9") %>' Enabled="false" CssClass="estandar-control Tablero Monto" Width="100px" ></asp:textbox>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Sucursal10">
                                                        <ItemTemplate>
                                                            <asp:textbox runat="server" ID="txt_Sucursal10" Text='<%# Eval("sucursal10") %>' Enabled="false" CssClass="estandar-control Tablero Monto" Width="100px" ></asp:textbox>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Sucursal11">
                                                        <ItemTemplate>
                                                            <asp:textbox runat="server" ID="txt_Sucursal11" Text='<%# Eval("sucursal11") %>' Enabled="false" CssClass="estandar-control Tablero Monto" Width="100px" ></asp:textbox>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Sucursal12">
                                                        <ItemTemplate>
                                                            <asp:textbox runat="server" ID="txt_Sucursal12" Text='<%# Eval("sucursal12") %>' Enabled="false" CssClass="estandar-control Tablero Monto" Width="100px" ></asp:textbox>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Sucursal13">
                                                        <ItemTemplate>
                                                            <asp:textbox runat="server" ID="txt_Sucursal13" Text='<%# Eval("sucursal13") %>' Enabled="false" CssClass="estandar-control Tablero Monto" Width="100px" ></asp:textbox>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Sucursal14">
                                                        <ItemTemplate>
                                                            <asp:textbox runat="server" ID="txt_Sucursal14" Text='<%# Eval("sucursal14") %>' Enabled="false" CssClass="estandar-control Tablero Monto" Width="100px" ></asp:textbox>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Sucursal15">
                                                        <ItemTemplate>
                                                            <asp:textbox runat="server" ID="txt_Sucursal15" Text='<%# Eval("sucursal15") %>' Enabled="false" CssClass="estandar-control Tablero Monto" Width="100px" ></asp:textbox>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Total General">
                                                        <ItemTemplate>
                                                            <asp:textbox runat="server" ID="txt_Total" Text='<%# Eval("total") %>' Enabled="false" CssClass="estandar-control Tablero Monto" Width="100px" ></asp:textbox>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                </Columns>
                                            </asp:GridView>
                                        </asp:Panel>
                     

                                        <div class="clear padding5"></div>

                                        <asp:Panel runat="server" ID="pnlNegocioXOficina" Width="100%" Height="100px" ScrollBars="Horizontal">
                                            <asp:GridView runat="server" ID="gvd_NegocioXOficina" AutoGenerateColumns="false" 
                                                            CssClass="grid-view" HeaderStyle-CssClass="header" AlternatingRowStyle-CssClass="altern"
                                                            GridLines="Horizontal"  ShowHeaderWhenEmpty="true">
                                                <Columns>
                                                    <asp:TemplateField HeaderText="Colocación">
                                                        <ItemTemplate>
                                                            <asp:textbox runat="server" ID="txt_Colocacion" Text='<%# Eval("colocacion") %>' Enabled="false" CssClass="estandar-control Tablero" Width="100px" ></asp:textbox>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="">
                                                        <ItemTemplate>
                                                            <asp:textbox runat="server" ID="txt_Sucursal1" Text='<%# Eval("sucursal1") %>' Enabled="false" CssClass="estandar-control Tablero Monto" Width="100px" ></asp:textbox>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="">
                                                        <ItemTemplate>
                                                            <asp:textbox runat="server" ID="txt_Sucursal2" Text='<%# Eval("sucursal2") %>' Enabled="false" CssClass="estandar-control Tablero Monto" Width="100px" ></asp:textbox>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="">
                                                        <ItemTemplate>
                                                            <asp:textbox runat="server" ID="txt_Sucursal3" Text='<%# Eval("sucursal3") %>' Enabled="false" CssClass="estandar-control Tablero Monto" Width="100px" ></asp:textbox>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="">
                                                        <ItemTemplate>
                                                            <asp:textbox runat="server" ID="txt_Sucursal4" Text='<%# Eval("sucursal4") %>' Enabled="false" CssClass="estandar-control Tablero Monto" Width="100px" ></asp:textbox>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="">
                                                        <ItemTemplate>
                                                            <asp:textbox runat="server" ID="txt_Sucursal5" Text='<%# Eval("sucursal5") %>' Enabled="false" CssClass="estandar-control Tablero Monto" Width="100px" ></asp:textbox>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="">
                                                        <ItemTemplate>
                                                            <asp:textbox runat="server" ID="txt_Sucursal6" Text='<%# Eval("sucursal6") %>' Enabled="false" CssClass="estandar-control Tablero Monto" Width="100px" ></asp:textbox>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="">
                                                        <ItemTemplate>
                                                            <asp:textbox runat="server" ID="txt_Sucursal7" Text='<%# Eval("sucursal7") %>' Enabled="false" CssClass="estandar-control Tablero Monto" Width="100px" ></asp:textbox>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="">
                                                        <ItemTemplate>
                                                            <asp:textbox runat="server" ID="txt_Sucursal8" Text='<%# Eval("sucursal8") %>' Enabled="false" CssClass="estandar-control Tablero Monto" Width="100px" ></asp:textbox>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="">
                                                        <ItemTemplate>
                                                            <asp:textbox runat="server" ID="txt_Sucursal9" Text='<%# Eval("sucursal9") %>' Enabled="false" CssClass="estandar-control Tablero Monto" Width="100px" ></asp:textbox>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="">
                                                        <ItemTemplate>
                                                            <asp:textbox runat="server" ID="txt_Sucursal10" Text='<%# Eval("sucursal10") %>' Enabled="false" CssClass="estandar-control Tablero Monto" Width="100px" ></asp:textbox>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="">
                                                        <ItemTemplate>
                                                            <asp:textbox runat="server" ID="txt_Sucursal11" Text='<%# Eval("sucursal11") %>' Enabled="false" CssClass="estandar-control Tablero Monto" Width="100px" ></asp:textbox>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="">
                                                        <ItemTemplate>
                                                            <asp:textbox runat="server" ID="txt_Sucursal12" Text='<%# Eval("sucursal12") %>' Enabled="false" CssClass="estandar-control Tablero Monto" Width="100px" ></asp:textbox>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="">
                                                        <ItemTemplate>
                                                            <asp:textbox runat="server" ID="txt_Sucursal13" Text='<%# Eval("sucursal13") %>' Enabled="false" CssClass="estandar-control Tablero Monto" Width="100px" ></asp:textbox>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="">
                                                        <ItemTemplate>
                                                            <asp:textbox runat="server" ID="txt_Sucursal14" Text='<%# Eval("sucursal14") %>' Enabled="false" CssClass="estandar-control Tablero Monto" Width="100px" ></asp:textbox>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="">
                                                        <ItemTemplate>
                                                            <asp:textbox runat="server" ID="txt_Sucursal15" Text='<%# Eval("sucursal15") %>' Enabled="false" CssClass="estandar-control Tablero Monto" Width="100px" ></asp:textbox>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Total General">
                                                        <ItemTemplate>
                                                            <asp:textbox runat="server" ID="txt_Total" Text='<%# Eval("total") %>' Enabled="false" CssClass="estandar-control Tablero Monto" Width="100px" ></asp:textbox>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                </Columns>
                                            </asp:GridView>
                                        </asp:Panel>

                                    </div>
                                </div>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
    




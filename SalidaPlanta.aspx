<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SalidaPlanta.aspx.cs" Inherits="SalidaPlanta.SalidaPlanta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>NUEVA SALIDA DE PLANTA</h2>
    <asp:Panel ID="PnlSPDFijos" runat="server">

        <div>
            <form class="row g-3 needs-validation" novalidate>
                <div class="container mt-4">
                    <div class="row mb-4">
                        <div class="col">
                            <i class="fa-regular fa-calendar-days"></i>
                            <asp:Label ID="LblSPFecha" runat="server" Text="Fecha y hora:" CssClass="form-label"></asp:Label>
                            <asp:TextBox ID="TxtSPFecha" runat="server" Enabled="false" CssClass="form-control" required="true"></asp:TextBox>
                        </div>
                        <div class="col">
                            <i class="fa-solid fa-location-arrow"></i>
                            <asp:Label ID="LblSPDestino" runat="server" Text="Destino" CssClass="form-label"></asp:Label>
                            <asp:DropDownList ID="DDLSPDestino" runat="server" CssClass="form-select" required="true"></asp:DropDownList>
                        </div>  
                        <div class="col">
                            <asp:RadioButtonList ID="RadioButtonList1" runat="server" CssClass="list-unstyled">
                              <asp:ListItem Value="S" Text="Regresa a la planta" Selected="true" />
                              <asp:ListItem Value="N" Text="No regresa a la planta" Selected="false" />
                            </asp:RadioButtonList>
                        </div>
                        <div class="col">
                                <i class="fa-regular fa-calendar-days"></i>
                            <asp:Label ID="LblSPTRegreso" runat="server" Text="Fecha de Regreso:" CssClass="form-label"></asp:Label>
                            <asp:TextBox ID="TxtSPRegreso" TextMode="Date" runat="server" CssClass="form-control" required="true"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row mb-4">
                        <div class="col">
                            <i class="fa-solid fa-person-walking-arrow-right"></i>
                            <asp:Label ID="LblSPNombre" runat="server" Text="Nombre de quien retira" CssClass="form-label"></asp:Label>
                            <asp:TextBox ID="TxtSPNombre" runat="server" CssClass="form-control" required="true"></asp:TextBox>
                        </div>

                        <div class="col">
                            <asp:CheckBox ID="LblSPDesVehiculo" runat="server" />
                            <%--<input class="form-check-input" type="checkbox" value="" id="LblSPDesVehiculo">--%>     
                            <asp:Label ID="label" runat="server" CssClass="form-check-label" to="LblSPDesVehiculos">
                                Agregar descripción del vehículo
                            </asp:Label>
                        </div>
                    </div>
                </div>
            </form>
        </div>

        <div>
            <div class="container">
                <div class="row mb-4">
                    <div class="col">
                        <i class="fa-solid fa-car-side"></i>
                        <asp:Label ID="LblSPVehiculoTipo" runat="server" Text="Tipo:" CssClass="form-label"></asp:Label>
                        <asp:TextBox ID="TxtSPVehiculoTipo" runat="server" CssClass="form-control" required="true"></asp:TextBox>
                    </div>
                    <div class="col">
                        <i class="fa-solid fa-car-side"></i>
                        <asp:Label ID="LblSPVehiculoMarca" runat="server" Text="Marca:" CssClass="form-label"></asp:Label>
                        <asp:TextBox ID="TxtSPVehiculoMarca" runat="server" CssClass="form-control" required="true"></asp:TextBox>
                    </div>
                    <div class="col">
                        <i class="fa-solid fa-car-side"></i>
                        <asp:Label ID="LblSPVehiculoPlacas" runat="server" Text="Placas:"  CssClass="form-label"></asp:Label>
                        <asp:TextBox ID="TxtSPVehiculoPlacas" runat="server"  CssClass="form-control" required="true"></asp:TextBox>
                    </div>
                    <div class="col">
                        <i class="fa-solid fa-car-side"></i>
                        <asp:Label ID="LblSPVehiculoNEncon" runat="server" Text="N° Encon:" CssClass="form-label"></asp:Label>
                        <asp:TextBox ID="TxtSPVehiculoNEncon" runat="server" CssClass="form-control" required="true"></asp:TextBox>
                    </div>
                </div>
            </div>
        </div>
    
        <div>
            <div class="container">
                
                <br />
                <hr />
                <br />
                <div class="row mb-4">
                    <div class="col">
                        <i class="fa-solid fa-pen"></i>
                        <asp:Label ID="LblSPDesc" runat="server" Text="Descripción del artículo:" CssClass="form-label"></asp:Label>
                        <asp:TextBox ID="TxtSPDesc" runat="server" TextMode="MultiLine" CssClass="form-control" required="true"></asp:TextBox>
                    </div>
                    <div class="col">
                        <i class="fa-solid fa-list-ol"></i>
                        <asp:Label ID="LblSPCantidad" runat="server" Text="Cantidad:" CssClass="form-label"></asp:Label>
                        <asp:TextBox ID="TxtSPCantidad" TextMode="Number" runat="server" CssClass="form-control" required="true"></asp:TextBox>
                    </div>
                    <div class="col">
                        <i class="fa-solid fa-tag"></i>
                        <asp:Label ID="LblSPMarca" runat="server" Text="Marca:" CssClass="form-label"></asp:Label>
                        <asp:TextBox ID="TxtSPMarca" runat="server" CssClass="form-control" required="true"></asp:TextBox>
                    </div>
                </div>
                <div class="row mb-4">
                    <div class="col">
                        <i class="fa-solid fa-hashtag"></i>
                        <asp:Label ID="LblSPNSerie" runat="server" Text="N° Serie:" CssClass="form-label"></asp:Label>
                        <asp:TextBox ID="TxtSPNSerie" runat="server" CssClass="form-control" required="true"></asp:TextBox>
                    </div>
                    <div class="col">
                        <i class="fa-solid fa-hand-holding-dollar"></i>
                        <asp:Label ID="LblSPCosto" runat="server" Text="Costo:" CssClass="form-label"></asp:Label>
                        <asp:TextBox ID="TxtSPCosto" TextMode="Number" runat="server" CssClass="form-control" required="true"></asp:TextBox>
                    </div>
                    <div class="col">
                        <i class="fa-solid fa-circle-question"></i>
                        <asp:Label ID="LblSPMSalida" runat="server" Text="Motivo de Salida:" CssClass="form-label"></asp:Label>
                        <asp:TextBox ID="TxtSPMSalida" runat="server" CssClass="form-control" required="true"></asp:TextBox>
                    </div>
                </div>
                <div class="row mb-4">
                    <div class="col">
                        <i class="fa-solid fa-file-import"></i>
                        <asp:Label ID="LblSPAdjunto" runat="server" Text="Adjuntar Archivo" CssClass="form-label"></asp:Label>
                        <asp:FileUpload ID="FluSPAdjunto" runat="server" CssClass="form-control" AllowMultiple="true"/>
                    </div>
                    <div class="col">
                        <br />
                        <asp:Button ID="BtnSPAgregar" runat="server" Text="Agregar" CssClass="btn btn-primary"/>
                    </div>
                </div>            
                <div class="row mb-4">
                    <div class="col">
                        <asp:Button ID="Button2" runat="server" Text="Finalizar" CssClass="btn btn-success"/>
                    </div>
                </div>
            </div>
        </div>

    </asp:Panel>
    <asp:GridView ID="GVSPMateriales" runat="server"></asp:GridView>

</asp:Content>

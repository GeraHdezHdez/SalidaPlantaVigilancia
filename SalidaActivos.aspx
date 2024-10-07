<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SalidaActivos.aspx.cs" Inherits="SalidaPlanta.SalidaActivos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>NUEVA SALIDA DE ACTIVOS FIJOS</h2>
    
    <asp:Panel ID="Pnl" runat="server">
        <form class="row g-3 needs-validation" novalidate>
            <div class="container mt-4">
                <div class="row mb-4">
                    <div class="col">
                        <i class="fa-regular fa-calendar-days"></i>
                        <asp:Label ID="LblSAFecha" runat="server" Text="Fecha:" CssClass="form-label"></asp:Label>
                        <asp:TextBox ID="TxtSAFecha" runat="server" Enabled="false" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col">
                        <i class="fa-solid fa-location-dot"></i>
                        <asp:Label ID="LblSAUbicacion" runat="server" Text="Ubicación:" CssClass="form-label"></asp:Label>
                        <asp:TextBox ID="TxtSAUbicacion" runat="server" required="true" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row mb-4">
                    <div class="col">
                        <asp:Label ID="LblSPRegresa" runat="server" Text="¿Regresa a planta?" CssClass="form-label"></asp:Label>
                        <asp:RadioButtonList ID="RBtnRegresa" runat="server">
                            <asp:ListItem Text="Si" Value="S"></asp:ListItem>
                            <asp:ListItem Text="No" Value="N"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                    <div class="col">
                        <i class="fa-regular fa-calendar-days"></i>
                        <asp:Label ID="LblSAFechaRegreso" runat="server" Text="Fecha de Regreso:" CssClass="form-label"></asp:Label>
                        <asp:TextBox ID="TxtSAFechaRegreso" TextMode="Date" runat="server" required="true" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col">
                        <i class="fa-solid fa-hashtag"></i>
                        <asp:Label ID="LblSANAcvtico" runat="server" Text="N° Activo:" CssClass="form-label"></asp:Label>
                        <asp:TextBox ID="LblSAActivo" runat="server" CssClass="form-control" required="true"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row mb-4">
                    <div class="col">
                        <i class="fa-solid fa-tag"></i>
                        <asp:Label ID="LblSAMarca" runat="server" Text="Marca:" CssClass="form-label"></asp:Label>
                        <asp:TextBox ID="TxtSAMarca" runat="server" CssClass="form-control" required="true"></asp:TextBox>
                    </div>
                    <div class="col">
                        <i class="fa-solid fa-square-poll-vertical"></i>
                        <asp:Label ID="LblSAModelo" runat="server" Text="Modelo:" CssClass="form-label"></asp:Label>
                        <asp:TextBox ID="TxtSAModelo" runat="server" CssClass="form-control" required="true"></asp:TextBox>
                    </div>
                    <div class="col">
                        
                        <i class="fa-solid fa-hashtag"></i>
                        <asp:Label ID="LblSANSerie" runat="server" Text="N° de Serie:" CssClass="form-label"></asp:Label>
                        <asp:TextBox ID="TxtSANSerie" runat="server" CssClass="form-control" required="true"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row mb-4">
                    <div class="col">
                        
                        <asp:Label ID="Lbl" runat="server" Text="Salida" CssClass="form-label"></asp:Label>

                        <asp:DropDownList ID="DDL" runat="server" CssClass="form-select">
                            <asp:ListItem>En como dato a:</asp:ListItem>
                            <asp:ListItem>Almacenaje en: </asp:ListItem>
                            <asp:ListItem>Préstamo a: </asp:ListItem>
                            <asp:ListItem>Reparación en: </asp:ListItem>
                            <asp:ListItem>Venta a: </asp:ListItem>
                            <asp:ListItem>Otro: </asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col">
                        <i class="fa-solid fa-file-invoice-dollar"></i>
                        <asp:Label ID="LblSAFactura" runat="server" Text="Número de Factura" CssClass="form-label"></asp:Label>
                        <asp:TextBox ID="TxtSAFactura" runat="server" CssClass="form-control" required="true"></asp:TextBox>
                    </div>
                    <div class="col">
                        <i class="fa-solid fa-circle-question"></i>
                        <asp:Label ID="LblSAMotivoSalida" runat="server" Text="Motivo de Salida:" CssClass="form-label"></asp:Label>
                        <asp:TextBox ID="TxtSAMotivoSalida" runat="server" CssClass="form-control" required="true"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row mb-4">
                    <div class="col">
                        <i class="fa-solid fa-file-import"></i>
                         <asp:Label ID="LblSAAdjunto" runat="server" Text="Adjunto:" CssClass="form-label"></asp:Label>
                        <asp:FileUpload ID="FUAdjunto" runat="server" CssClass="form-control" required="true" />
                    </div>
                    <div class="col">
                        <i class="fa-solid fa-note-sticky"></i>
                        <asp:Label ID="LblSAObservaciones" runat="server" Text="Observaciones:" CssClass="form-label"></asp:Label>
                        <asp:TextBox ID="TxtSAObservaciones" TextMode="MultiLine" runat="server" CssClass="form-control" required="true"></asp:TextBox>
                    </div>
                    <div class="col">
                        <br />
                        <asp:Button ID="BtnSAFinalizar" runat="server" Text="Finalizar" CssClass="btn btn-success" />
                    </div>
                </div>
            </div>




        </form>
    </asp:Panel>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SalidaMaterias.aspx.cs" Inherits="SalidaPlanta.SalidaMaterias" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <h2>NUEVA SALIDA DE MATERIAS PRIMAS</h2>
   
    <asp:Panel ID="PnlSMDFijos" runat="server">
        <form class="row g-3 needs-validation" novalidate>
            <div class="container mt-4">
                <div class="row mb-4">
                    <div class="col">
                        <i class="fa-regular fa-calendar-days"></i>
                        <asp:Label ID="LblSMFecha" runat="server" Text="Fecha: y hora:" CssClass="form-label"></asp:Label>
                        <asp:TextBox ID="TxtSMFecha" runat="server" Enabled="false" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col">
                        <i class="fa-solid fa-location-dot"></i>
                        <asp:Label ID="LblSMUbicacion" runat="server" Text="Ubicación:" CssClass="form-label"></asp:Label>
                        <asp:TextBox ID="TxtSMUbicacion" runat="server" CssClass="form-control" required="true"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="container">
            <hr />
                <div class="row mb-4">
                    <p>Descripción del vehículo</p> 
                    <div class="col">
                        <i class="fa-solid fa-car-side"></i>
                        <asp:Label ID="LblSMTipo" runat="server" Text="Tipo:" CssClass="form-label"></asp:Label>
                        <asp:TextBox ID="TxtSMTipo" runat="server" CssClass="form-control" required="true"></asp:TextBox>
                    </div>
                    <div class="col">
                        <i class="fa-solid fa-car-side"></i>
                        <asp:Label ID="LblSMMarca" runat="server" Text="Marca:" CssClass="form-label"></asp:Label>
                        <asp:TextBox ID="TxtSMMarca" runat="server" CssClass="form-control" required="true"></asp:TextBox>
                    </div>
                    <div class="col">
                        <i class="fa-solid fa-car-side"></i>
                        <asp:Label ID="LblSMPlacas" runat="server" Text="Placas:" CssClass="form-label"></asp:Label>
                        <asp:TextBox ID="TxtSMPlacas" runat="server" CssClass="form-control" required="true"></asp:TextBox>
                    </div>
                </div>
            </div>

            <div class="container">
            <hr />
                <div class="row mb-4">
                    <div class="col">
                        <i class="fa-solid fa-box"></i>
                        <asp:Label ID="LblSMMaterial" runat="server" Text="Material:" CssClass="form-label"></asp:Label>
                        <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" required="true"></asp:TextBox>
                    </div>
                    <div class="col">
                        <i class="fa-solid fa-pen"></i>
                        <asp:Label ID="LblSMDescripcion" runat="server" Text="Descripción:" CssClass="form-label"></asp:Label>
                        <asp:TextBox ID="TxtSMDescripcion" TextMode="MultiLine" runat="server" CssClass="form-control" required="true"></asp:TextBox>
                    </div>
                    <div class="col">
                        <i class="fa-solid fa-list-ol"></i>
                        <asp:Label ID="LblSMCantidad" runat="server" Text="Cantidad:" CssClass="form-label"></asp:Label>
                        <asp:TextBox ID="TxtSMCantidad" TextMode="Number" runat="server" CssClass="form-control" required="true"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row mb-4">
                    <div class="col">
                        <i class="fa-solid fa-ruler"></i>
                        <asp:Label ID="LblSMUM" runat="server" Text="U.M.:" CssClass="form-label"></asp:Label>
                        <asp:TextBox ID="TxtSMUM" runat="server" CssClass="form-control" required="true"></asp:TextBox>
                    </div>
                    <div class="col">
                        <i class="fa-solid fa-boxes-stacked"></i>
                        <asp:Label ID="LblSMLote" runat="server" Text="Lote:" CssClass="form-label"></asp:Label>
                        <asp:TextBox ID="TxtSMLote" runat="server" CssClass="form-control" required="true"></asp:TextBox>
                    </div>
                    <div class="col">
                        <i class="fa-solid fa-circle-question"></i>
                         <asp:Label ID="LblSMMSalida" runat="server" Text="Motivo de Salida:" CssClass="form-label"></asp:Label>
                        <asp:TextBox ID="TxtSMMSalida" runat="server" CssClass="form-control" required="true"></asp:TextBox>
                    </div>
                </div>
                <div class="row mb-4">
                    <div class="col">
                        <asp:Button ID="BtnSMAgregar" runat="server" Text="Agregar" CssClass="btn btn-primary"/>
                    </div>
                </div>
                <hr />
                <div class="row mb-4">
                    <div class="col">
                      <asp:Button ID="BtnSMFinalizar" runat="server" Text="Finalizar" CssClass="btn btn-success" />
                    </div>
                </div>
            </div>
                       
            



        <asp:GridView ID="GVSMMateriales" runat="server"></asp:GridView>

            
        </form>
    </asp:Panel>
    
</asp:Content>

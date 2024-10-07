<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Crear_Usuario.aspx.cs" Inherits="SalidaPlanta.Crear_Usuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

    <asp:Panel ID="Panel1" runat="server">
        <div class="col mt-3 mb-5">
            <asp:Label ID="s" runat="server" Text="Crear Usuario" CssClass="form-label" Font-Size="XX-Large" Font-Bold="true"></asp:Label>
        </div>
        
        <form class="row g-3 needs-validation" novalidate>
            <div class="container">
              <div class="row mb-4">
                <div class="col">
                    <i class="fa-solid fa-user"></i>
                    <asp:Label ID="LblNombre" runat="server" Text="Nombre" CssClass="form-label"></asp:Label>
                    <asp:TextBox ID="TxbNombre" runat="server" CssClass="form-control" required="true" autocomplete="off"></asp:TextBox>
                </div>
                <div class="col">
                    <asp:Label ID="LblAPaterno" runat="server" Text="Apellido Paterno" CssClass="form-label"></asp:Label>
                    <asp:TextBox ID="TxbAPaterno" runat="server" CssClass="form-control" required="true"></asp:TextBox>
                </div>
                <div class="col">
                    <asp:Label ID="LblAMaterno" runat="server" Text="Apellido Materno" CssClass="form-label"></asp:Label>
                    <asp:TextBox ID="TxbAMaterno" runat="server" CssClass="form-control" required="true"></asp:TextBox>
                </div>
              </div>
              <div class="row mb-4">
                  <div class="col">
                      <i class="fa-solid fa-at"></i>
                      <asp:Label ID="LblCorreo" runat="server" Text="Correo:" CssClass="form-label"></asp:Label>
                      <asp:TextBox ID="TxbCorreo" runat="server" CssClass="form-control" required="true"></asp:TextBox>
                  </div>
                  <div class="col">
                    <i class="fa-solid fa-building"></i>
                    <asp:Label ID="LblSociedad" runat="server" Text="Sociedad:" CssClass="form-label"></asp:Label>
                    <asp:DropDownList ID="DDLSocied" runat="server" AutoPostBack="True" CssClass="form-select"></asp:DropDownList>
                </div>
                  <div class="col">
                    <i class="fa-regular fa-object-ungroup"></i>
                    <asp:Label ID="LblDepartamento" runat="server" Text="Departamento:" CssClass="form-label"></asp:Label>
                    <asp:DropDownList ID="DDLDepa" runat="server" AutoPostBack="True" CssClass="form-select"></asp:DropDownList>
                </div>
                  
               </div>
                <div class="row mb-4">
                    <div class="col">
                      <i class="fa-solid fa-at"></i>                                    
                        <asp:Label ID="LblNUsuario" runat="server" Text="Nombre de usuario:" CssClass="form-label"></asp:Label>
                        <asp:TextBox ID="TxbNUsuario" TextMode="Email" runat="server" CssClass="form-control" required="true"></asp:TextBox>
                    </div>
                    <div class="col">
                        <i class="fa-solid fa-person-circle-exclamation"></i>
                        <asp:Label ID="LblRol" runat="server" Text="Rol:" CssClass="form-label"></asp:Label>
                        <asp:DropDownList ID="DDLRol" runat="server" AutoPostBack="True" CssClass="form-select"></asp:DropDownList>
                    </div>
                    <div class="col">
                        <i class="fa-solid fa-list-check"></i>
                        <asp:Label ID="Label1" runat="server" Text="Permiso especial:" CssClass="form-label"></asp:Label>
                        <asp:ListBox ID="LBPespe" runat="server" AutoPostBack="True" CssClass="form-select" SelectionMode="Multiple" ></asp:ListBox>
                    </div>
                </div>

                <div class="row mb-4">
                    
                    <div class="col">
                        <i class="fa-solid fa-lock"></i>
                        <asp:Label ID="LblContraseña" runat="server" Text="Contraseña:" CssClass="form-label"></asp:Label>
                        <asp:TextBox ID="TxbContraseña" TextMode="Password" runat="server" CssClass="form-control" required="true"></asp:TextBox>
                        <i id="togglePassword1" class="fas fa-eye" onclick="togglePassword1()"></i>

                    </div>
                    <div class="col">
                        <i class="fa-solid fa-check-double"></i>
                        <asp:Label ID="LblValContraseña" runat="server" Text="Confirma la contraseña:" CssClass="form-label"></asp:Label>
                        <asp:TextBox ID="TxbValContraseña" TextMode="Password" runat="server" CssClass="form-control" required="true"></asp:TextBox>
                        <asp:CompareValidator ID="CVValidarPass" ControlToCompare="TxbContraseña" ControlToValidate="TxbValContraseña" Type="String" runat="server" ErrorMessage="La contraseña no coincide"></asp:CompareValidator>
                        <i id="togglePassword2" class="fas fa-eye" onclick="togglePassword2()"></i>
                    </div>
                    
                </div>
                <div class="row mb-4 align-content-center">
                    <div class="col">
                        <asp:Button ID="BtnAgregar" runat="server" Text="Crear usuario" OnClick="BtnAgregar_Click" CssClass="btn btn-danger" />
                    </div>
                </div>
            </div>
            <script>
                function togglePassword1() {
                    var passwordField = document.getElementById('<%=TxbContraseña.ClientID %>');
                    var eyeIcon = document.getElementById('togglePassword1');
                    if (passwordField.type === "password") {
                        passwordField.type = "text";
                        eyeIcon.classList.remove("fa-eye");
                        eyeIcon.classList.add("fa-eye-slash");
                    } else {
                        passwordField.type = "password";
                        eyeIcon.classList.remove("fa-eye-slash");
                        eyeIcon.classList.add("fa-eye");
                    }
                }
                function togglePassword2() {
                    var passwordField = document.getElementById('<%=TxbValContraseña.ClientID %>');
                    var eyeIcon = document.getElementById('togglePassword2');
                    if (passwordField.type === "password") {
                        passwordField.type = "text";
                        eyeIcon.classList.remove("fa-eye");
                        eyeIcon.classList.add("fa-eye-slash");
                    } else {
                        passwordField.type = "password";
                        eyeIcon.classList.remove("fa-eye-slash");
                        eyeIcon.classList.add("fa-eye");
                    }
                }
            </script>
        </form>
        
    </asp:Panel>
    
</asp:Content>

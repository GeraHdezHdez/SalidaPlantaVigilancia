<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SalidaPlanta.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css" integrity="sha384-r4NyP46KrjDleawBgD5tp8Y7UzmLA05oM1iAEQ17CSuDqnUK2+k9luXQOfXJCJ4I" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css2?family=Spartan:wght@300;600&display=swap" rel="stylesheet">
    <link href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="Css/login.css"/>

    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js" integrity="sha384-oesi62hOLfzrys4LxRF63OJCXdXDipiYWBnvTl9Y9/TRlw5xlKIEHpNyvvDShgf/" crossorigin="anonymous"></script>
    
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>

    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>


</head>
<body>
    <form id="form1" runat="server">
        <section>
        <div class="row g-0">
            <div class="col-lg-7 d-none d-lg-block">
                <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                      <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
                      <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
                      <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
                    </ol>
                    <div class="carousel-inner">
                      <div class="carousel-item img-1 min-vh-100 active">
                        <div class="carousel-caption d-none d-md-block">
                          <h5 class="font-weight-bold">FREXPORT</h5>
                          <a class="text-muted text-decoration-none">PRODUCCIÓN DE MERMELADA</a>
                        </div>
                      </div>
                      <div class="carousel-item img-2 min-vh-100">
                        <div class="carousel-caption d-none d-md-block">
                          <h5 class="font-weight-bold">XSANT</h5>
                          <a class="text-muted text-decoration-none">PROCESADOS</a>
                        </div>
                      </div>
                    <div class="carousel-item img-3 min-vh-100">
                      <div class="carousel-caption d-none d-md-block">
                        <h5 class="font-weight-bold">XTRA</h5>
                        <a class="text-muted text-decoration-none">PRODUCCIÓN DE BRÓCOLI</a>
                      </div>
                    </div>
                    </div>
                    <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
                      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                      <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
                      <span class="carousel-control-next-icon" aria-hidden="true"></span>
                      <span class="sr-only">Next</span>
                    </a>
                  </div>
            </div>
            <div class="col-lg-5 bg-dark d-flex flex-column align-items-end min-vh-100">
                <div class="px-lg-5 pt-lg-4 pb-lg-3 p-4 mb-auto w-100">
                    <img src="Imagenes/Logo.png" class="logo img-fluid" />
                </div>
                <div class="align-self-center w-100 px-lg-5 py-lg-4 p-4 mt-auto">
                <h1 class="font-weight-bold mb-4">SALIDAS DE PLANTA</h1>
                <div class="mb-5">
                    <div class="mb-4">
                      <label for="exampleInputEmail1" class="form-label font-weight-bold">Correo</label>
                        <asp:TextBox ID="TxtCorreo" TextMode="Email" placeholder="Ingresa tu correo" CssClass="form-control bg-dark-x border-0" runat="server"></asp:TextBox>
                    </div>
                    <div class="mb-4">
                      <label for="exampleInputPassword1" class="form-label font-weight-bold">Contraseña</label>
                        <asp:TextBox ID="TxtPassword" CssClass="form-control bg-dark-x border-0 mb-2" TextMode="Password" runat="server" placeholder="Ingresa tu contraseña"></asp:TextBox>
<%--                        <button id="show_password" type="button" class="bx">
                             <span class="fa fa-eye-slash icon" style="color: white;"></span>
                        </button>--%>
                       
                      <a href="" id="emailHelp" class="form-text text-muted text-decoration-none">¿Has olvidado tu contraseña?</a>
                    </div>
                    <asp:Button ID="BtnIngresar" CssClass="btn btn-danger w-100" runat="server" Text="Iniciar Sesión" OnClick="BtnIngresar_Click" />
                </div>
                </div>
                <div class="text-center px-lg-5 pt-lg-3 pb-lg-4 p-4 mt-auto w-100">
                    <p class="d-inline-block mb-0">Derechos reservados - Grupo Altex</p>
                </div>
            </div>
        </div>
      </section>

    </form>

</body>
</html>

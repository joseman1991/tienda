<%@taglib prefix="s" uri="/struts-tags"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
    <head>
        <title>Product</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!--===============================================================================================-->
        <link rel="icon" type="image/png" href="images/icons/favicon.png"/>
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="fonts/themify/themify-icons.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="fonts/elegant-font/html-css/style.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/slick/slick.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/noui/nouislider.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="css/util.css">
        <link rel="stylesheet" type="text/css" href="css/main.css">
        <!--===============================================================================================-->
    </head>
    <body class="animsition">

        <!-- Header -->
        <jsp:include page="header.jsp"/>

        <!-- Title Page -->
        <section class="bg-title-page p-t-50 p-b-40 flex-col-c-m" style="background-image: url(images/heading-pages-02.jpg);">
            <h2 class="l-text2 t-center text-primary">
                Hotel
            </h2>
            <p class="m-text13 t-center text-primary" >
                Lista de reservas
            </p>
        </section>


        <!-- Content page -->
        <section class="bgwhite p-t-55 p-b-65">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 col-md-4 col-lg-3 p-b-50">

                    </div>


                    <!--  -->
                    <div class="flex-sb-m flex-w p-b-35">
                        <s:set name="mensaje"><s:property value="mensaje"/></s:set>
                        <s:if test="#mensaje!=''">
                            <div class="alert alert-success "   role="alert" id="nus">
                                <a id="linkClose" href="#" class="close" data-dismiss="alert" aria-label="Close">
                                    &times;
                                </a>
                                <strong>¡Éxito!</strong> <s:property value="mensaje"/>.
                            </div>
                        </s:if>
                    </div>

                    <!-- Product -->

                    <div class="table-responsive">


                        <table class="table">
                            <thead>
                            <th>Codigo</th>
                            <th>Producto</th>
                            <th>Imagen</th>
                            <th>Nombre de Usuario</th>
                            <th>Fecha</th>                                 
                            <th>Oferta</th>                                 
                            <th>Precio Original</th>                                 
                            <th>Estado</th>
                                <s:if test='evento.equals("v")'>
                                <th>Aceptar</th>
                                <th>Rechazar</th>
                                </s:if>

                            </thead>
                            <tbody>
                                <s:iterator value="lista" >
                                    <tr>
                                        <td><s:property value="idreserva"/></td>
                                        <td><s:property value="item.nombre"/></td>
                                        <td><img src="images/<s:property value="item.imagen"/>" width="50px" height="60px"/></td>
                                        <td><s:property value="nombreusuario"/></td>
                                        <td><s:property value="fecha"/></td>
                                        <td><s:property value="total"/></td>
                                        <td><s:property value="original"/></td>
                                        <s:if test='estado.equals("E")'>
                                            <td> <B>Enviado</B></td>
                                                </s:if>
                                                <s:elseif test='estado.equals("A")'>
                                            <td> <B>Aceptado</B></td>
                                                </s:elseif >
                                                <s:elseif test='estado.equals("R")'>
                                            <td><B>Rechazado</B></td>
                                                </s:elseif>
                                                <s:if test='evento.equals("v")'>
                                            <td><form action="ofert" method="post">
                                                    <input type="submit" value="Aceptar" class="btn btn-success"/>
                                                    <input type="hidden" name="idreserva" value="<s:property value="idreserva"/>" />
                                                    <input type="hidden" name="estado" value="A" />
                                                    <input type="hidden" name="usuario" value="<s:property value="#user.nombreusuario"/>"/>
                                                </form></td>
                                            <td> <form action="ofert" method="post">
                                                    <input type="submit" value="Rechazar" class="btn btn-danger"/>
                                                    <input type="hidden" name="idreserva" value="<s:property value="idreserva"/>" />
                                                    <input type="hidden" name="estado" value="R" />
                                                    <input type="hidden" name="usuario" value="<s:property value="#user.nombreusuario"/>"/>
                                                </form>
                                            </td>
                                        </s:if>


                                    </tr>
                                </s:iterator>
                            </tbody>
                        </table>                           
                    </div>   


                </div>
            </div>
        </div>
    </section>


    <!-- Footer -->
    <footer class="bg6 p-t-45 p-b-43 p-l-45 p-r-45">
        <jsp:include page="fotter.jsp"/>           
    </footer>



    <!-- Back to top -->
    <div class="btn-back-to-top bg0-hov" id="myBtn">
        <span class="symbol-btn-back-to-top">
            <i class="fa fa-angle-double-up" aria-hidden="true"></i>
        </span>
    </div>

    <!-- Container Selection -->
    <div id="dropDownSelect1"></div>
    <div id="dropDownSelect2"></div>



    <!--===============================================================================================-->
    <script type="text/javascript" src="vendor/jquery/jquery-3.2.1.min.js"></script>
    <!--===============================================================================================-->
    <script type="text/javascript" src="vendor/animsition/js/animsition.min.js"></script>
    <!--===============================================================================================-->
    <script type="text/javascript" src="vendor/bootstrap/js/popper.js"></script>
    <script type="text/javascript" src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <!--===============================================================================================-->
    <script type="text/javascript" src="vendor/select2/select2.min.js"></script>
    <script type="text/javascript">
        $(".selection-1").select2({
            minimumResultsForSearch: 20,
            dropdownParent: $('#dropDownSelect1')
        });

        $(".selection-2").select2({
            minimumResultsForSearch: 20,
            dropdownParent: $('#dropDownSelect2')
        });
    </script>
    <!--===============================================================================================-->
    <script type="text/javascript" src="vendor/daterangepicker/moment.min.js"></script>
    <script type="text/javascript" src="vendor/daterangepicker/daterangepicker.js"></script>
    <!--===============================================================================================-->
    <script type="text/javascript" src="vendor/slick/slick.min.js"></script>
    <script type="text/javascript" src="js/slick-custom.js"></script>
    <!--===============================================================================================-->
    <script type="text/javascript" src="vendor/sweetalert/sweetalert.min.js"></script>
    <script type="text/javascript">
        var redirect = $('.redireccion');
        redirect.val(3);
        var ul = $(".header-cart ul");
        var cart = $(".cart");
        $('.block2-btn-addcart').each(function () {

            var nameProduct = $(this).parent().parent().parent().find('.block2-name').html();

            $(this).find(".add").on('click', function () {

                var boton = $(this);
                var boton2 = $(this).parent().find('.rem');





                var iditem = $(this).parent().find('input:hidden');

                var item = {
                    "items": {
                        "iditem": iditem.val()
                    }};


                $.ajax({
                    url: "add_to_cart",
                    data: JSON.stringify(item),
                    dataType: 'json',
                    contentType: 'application/json',
                    type: 'POST',
                    async: true,
                    success: function (res) {
                        var p = res.items;
                        cart.html(res.cantidad);
                        ul.append("<li class='header-cart-item'>" +
                                "<div class='header-cart-item-img'>" +
                                "<img src='images/" + p.imagen + "' alt='IMG'>" +
                                "</div>" +
                                "<div class='header-cart-item-txt'>" +
                                "<a href='#' class='header-cart-item-name'>" +
                                "" + p.nombre +
                                "</a>" +
                                "<span class='header-cart-item-info'>" +
                                "1 x $" + p.precio +
                                "</span>" +
                                "</div>" +
                                "</li>");
                        boton.css("display", "none");
                        boton2.css("display", "block");

                    }
                });
                swal(nameProduct, "is added to cart !", "success");
            });



            $(this).find(".rem").on('click', function () {
                var boton2 = $(this).parent().find('.add');
                var boton = $(this);
                if (confirm('Seguro que deseas eliminar')) {
                    var iditem = $(this).parent().find('input:hidden');
                    var item = {
                        "items": {
                            "iditem": iditem.val()
                        }};
                    $.ajax({
                        url: "del_to_car",
                        data: JSON.stringify(item),
                        dataType: 'json',
                        contentType: 'application/json',
                        type: 'POST',
                        async: true,
                        success: function (res) {
                            cart.html(res.cantidad);
                            boton.css("display", "none");
                            boton2.css("display", "block");
                        }
                    });


                }
            });


        });

        $('.block2-btn-addwishlist').each(function () {
            var nameProduct = $(this).parent().parent().parent().find('.block2-name').html();
            $(this).on('click', function () {
                swal(nameProduct, "is added to wishlist !", "success");
            });
        });
    </script>

    <!--===============================================================================================-->
    <script type="text/javascript" src="vendor/noui/nouislider.min.js"></script>
    <script type="text/javascript">
        /*[ No ui ]
         ===========================================================*/
        var filterBar = document.getElementById('filter-bar');

        noUiSlider.create(filterBar, {
            start: [50, 200],
            connect: true,
            range: {
                'min': 50,
                'max': 200
            }
        });

        var skipValues = [
            document.getElementById('value-lower'),
            document.getElementById('value-upper')
        ];

        filterBar.noUiSlider.on('update', function (values, handle) {
            skipValues[handle].innerHTML = Math.round(values[handle]);
        });
    </script>
    <!--===============================================================================================-->
    <script src="js/main.js"></script>

</body>
</html>

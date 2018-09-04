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
                Productos
            </h2>
            <p class="m-text13 t-center text-primary" >
                Los mejores del mercado
            </p>
        </section>


        <!-- Content page -->
        <section class="bgwhite p-t-55 p-b-65">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 col-md-4 col-lg-3 p-b-50">

                    </div>

                    <div class="col-sm-6 col-md-8 col-lg-9 p-b-50">
                        <!--  -->
                        <div class="flex-sb-m flex-w p-b-35">
                            <s:set var="max" value="12"/> 
                            <s:set var="count" value="listaProductos.size()"/> 
                            <s:set var="inicio" value="#max * page - #max"/> 
                            <s:set var="fin" value="#max * page - 1"/> 
                            <s:if test="#count <= #fin">
                                <s:set var="fin" value="#count-1"/> 
                            </s:if>
                            <s:else>

                            </s:else>

                            <span class="s-text8 p-t-5 p-b-5">
                                Mostrando 
                                <s:property value="getText('{0,number,#,##0}',{#inicio+1})" /> - 
                                <s:property value="getText('{0,number,#,##0}',{#fin+1})" /> de
                                <s:property value="#count"/> 
                                resultados
                            </span>
                        </div>

                        <!-- Product -->
                        <div class="row">
                            <s:iterator value="listaProductos" begin="#inicio" end="#fin">
                                <div class="col-sm-12 col-md-6 col-lg-4 p-b-50">
                                    <!-- Block2 -->
                                    <div class="block2">
                                        <div class="block2-img wrap-pic-w of-hidden pos-relative ">
                                            <img src="images/<s:property value="imagen"/>" alt="IMG-PRODUCT">
                                            <s:url action="detalle" var="detalle">
                                                <s:param name="producto"><s:property value="iditem"/></s:param>
                                            </s:url>
                                            <div class="block2-overlay trans-0-4">


                                                <div class="block2-btn-addcart w-size1 trans-0-4">
                                                    <!-- Button -->
                                                    <s:if test="#user!=null">
                                                        <s:if test="evento==1">
                                                            <s:url action="act" var="actualizar">
                                                                <s:param name="producto"><s:property value="iditem"/></s:param>
                                                            </s:url>
                                                            <s:url action="eliminar" var="eliminar">
                                                                <s:param name="producto"><s:property value="iditem"/></s:param>
                                                            </s:url>
                                                            <s:a href="%{actualizar}" cssClass=" btn btn-primary btn-xs"><i class="fa fa-pencil "></i></s:a>
                                                            <s:a href="%{eliminar}" cssClass="btn btn-danger btn-xs"><i class="fa fa-trash"></i></s:a>
                                                        </s:if>
                                                        <s:else>
                                                            <s:a href="%{detalle}" cssClass="add flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4">
                                                                Comprar
                                                            </s:a>                                                            
                                                            <input type="hidden" value="<s:property value="iditem"/>" class="iditem"/>
                                                        </s:else>
                                                    </s:if>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="block2-txt p-t-20">
                                            <s:if test="evento==1">                                                 
                                                <s:property value="nombre"/>                                             
                                            </s:if>
                                            <s:else>
                                                 <s:a href="%{detalle}" cssClass="block2-name dis-block s-text3 p-b-5">
                                                <s:property value="nombre"/>
                                            </s:a>
                                            </s:else>
                                           
                                            <s:if test="%{descuento>0}">
                                                <span class="block2-oldprice m-text7 p-r-5">
                                                    <s:property value="precio"/>
                                                </span>

                                                <span class="block2-newprice m-text8 p-r-5">
                                                    $<s:property value="desc"/>
                                                </span>
                                            </s:if>
                                            <s:else>
                                                <span class="block2-price m-text6 p-r-5">
                                                    $<s:property value="precio"/>
                                                </span>   
                                            </s:else>

                                        </div>
                                    </div>
                                </div>
                            </s:iterator>

                        </div>

                        <s:set name="mod" value="#count%#max"/>
                        <s:set name="div" value="#count/#max"/>

                        <s:if test="#mod>0">
                            <s:set name="div" value="#count/#max+1"/>
                        </s:if>  
                        <!-- Pagination -->
                        <div class="pagination flex-m flex-w p-t-26">
                            <s:iterator var="i" begin="1" end="#div">
                                <s:url action="tienda" var="clic" >
                                    <s:param name="page"><s:property value="top"/></s:param>
                                </s:url>  
                                <s:if test="top==page">
                                    <a href="<s:property value="#clic"/>" class="item-pagination flex-c-m trans-0-4 active-pagination"><s:property value="top"/></a>
                                </s:if>
                                <s:else>
                                    <a href="<s:property value="#clic"/>" class="item-pagination flex-c-m trans-0-4"><s:property value="top" /></a>
                                </s:else>
                            </s:iterator>                                 

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

<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

   <div id="all">
      <div id="content">
        <div class="container">
          <div class="row">
            <div class="col-md-12">
              <div id="main-slider" class="owl-carousel owl-theme">
                <div class="item"><img src="<%=request.getContextPath()%>/img/main-slider1.jpg" alt="" class="img-fluid"></div>
                <div class="item"><img src="<%=request.getContextPath()%>/img/main-slider2.jpg" alt="" class="img-fluid"></div>
                <div class="item"><img src="<%=request.getContextPath()%>/img/main-slider3.jpg" alt="" class="img-fluid"></div>
                <div class="item"><img src="<%=request.getContextPath()%>/img/main-slider4.jpg" alt="" class="img-fluid"></div>
              </div>
              <!-- /#main-slider-->
            </div>
          </div>
        </div>
        <!--
        *** ADVANTAGES HOMEPAGE ***
        _________________________________________________________
        -->
        <div id="advantages">
          <div class="container">
            <div class="row mb-4">
              <div class="col-md-4">
                <div class="box clickable d-flex flex-column justify-content-center mb-0 h-100">
                  <div class="icon"><i class="fa fa-heart"></i></div>
                  <h3><a href="#">nous appr&eacute;cions nos clients </a></h3>
                  <p class="mb-0">Nous pouvons vous offrir le meilleur service</p>
                </div>
              </div>
              <div class="col-md-4">
                <div class="box clickable d-flex flex-column justify-content-center mb-0 h-100">
                  <div class="icon"><i class="fa fa-tags"></i></div>
                  <h3><a href="#">Un prix imbattable</a></h3>
                  <p class="mb-0">Des offres immanquables</p>
                </div>
              </div>
              <div class="col-md-4">
                <div class="box clickable d-flex flex-column justify-content-center mb-0 h-100">
                  <div class="icon"><i class="fa fa-thumbs-up"></i></div>
                  <h3><a href="#">Satisfaction 100% garantie</a></h3>
                  <p class="mb-0">Satisfait ou rembours&eacute; pendant 3 semaines </p>
                </div>
              </div>
            </div>
            <!-- /.row-->
          </div>
          <!-- /.container-->
        </div>
        <!-- /#advantages-->
        <!-- *** ADVANTAGES END ***-->
        <!--
        *** HOT PRODUCT SLIDESHOW ***
        _________________________________________________________
        -->
        <div id="hot">
          <div class="box py-4">
            <div class="container">
              <div class="row">
                <div class="col-md-12">
                  <h2 class="mb-0">Le temps est au vapotage</h2>
                </div>
              </div>
            </div>
          </div>
          <div class="container">
            <div class="product-slider owl-carousel owl-theme">
              <div class="item">
                <div class="product">
                  <div class="flip-container">
                    <div class="flipper">
                      <div class="front"><a href="<%=request.getContextPath()%>/detail.html"><img src="<%=request.getContextPath()%>/img/product1.jpg" alt="" class="img-fluid"></a></div>
                      <div class="back"><a href="<%=request.getContextPath()%>/detail.html"><img src="<%=request.getContextPath()%>/img/product1_2.jpg" alt="" class="img-fluid"></a></div>
                    </div>
                  </div><a href="<%=request.getContextPath()%>/detail.html" class="invisible"><img src="<%=request.getContextPath()%>/img/product1.jpg" alt="" class="img-fluid"></a>
                  <div class="text">
                    <h3><a href="<%=request.getContextPath()%>/detail.html">Kit Pod BP80 - ASPIRE</a></h3>
                    <p class="price"> 
                      <del>125€</del>90,00€
                    </p>
                  </div>
                  <!-- /.text-->
                  <div class="ribbon sale">
                    <div class="theribbon">SOLD&Eacute;</div>
                    <div class="ribbon-background"></div>
                  </div>
                  <!-- /.ribbon-->
                  <div class="ribbon new">
                    <div class="theribbon">NOUVEAU</div>
                    <div class="ribbon-background"></div>
                  </div>
                  <!-- /.ribbon-->
                  <div class="ribbon gift">
                    <div class="theribbon">CADEAU</div>
                    <div class="ribbon-background"></div>
                  </div>
                  <!-- /.ribbon-->
                </div>
                <!-- /.product-->
              </div>
              <div class="item">
                <div class="product">
                  <div class="flip-container">
                    <div class="flipper">
                      <div class="front"><a href="<%=request.getContextPath()%>/detail.html"><img src="<%=request.getContextPath()%>/img/product2.jpg" alt="" class="img-fluid"></a></div>
                      <div class="back"><a href="<%=request.getContextPath()%>/detail.html"><img src="<%=request.getContextPath()%>/img/product2_2.jpg" alt="" class="img-fluid"></a></div>
                    </div>
                  </div><a href="<%=request.getContextPath()%>/detail.html" class="invisible"><img src="<%=request.getContextPath()%>/img/product2.jpg" alt="" class="img-fluid"></a>
                  <div class="text">
                    <h3><a href="<%=request.getContextPath()%>/detail.html">Kit iStick S80 - Eleaf</a></h3>
                    <p class="price"> 
                      <del></del>90,00€
                    </p>
                  </div>
                  <!-- /.text-->
                  <div class="ribbon new">
                    <div class="theribbon">NOUVEAU</div>
                    <div class="ribbon-background"></div>
                  </div>
                  </div>
                <!-- /.product-->
              </div>
              <div class="item">
                <div class="product">
                  <div class="flip-container">
                    <div class="flipper">
                      <div class="front"><a href="<%=request.getContextPath()%>/detail.html"><img src="<%=request.getContextPath()%>/img/product3.jpg" alt="" class="img-fluid"></a></div>
                      <div class="back"><a href="<%=request.getContextPath()%>/detail.html"><img src="<%=request.getContextPath()%>/img/product3_2.jpg" alt="" class="img-fluid"></a></div>
                    </div>
                  </div><a href="<%=request.getContextPath()%>/detail.html" class="invisible"><img src="<%=request.getContextPath()%>/img/product3.jpg" alt="" class="img-fluid"></a>
                  <div class="text">
                    <h3><a href="detail.html">Liquide saveur citron vert</a></h3>
                    <p class="price"> 
                      <del></del>3,00€
                    </p>
                  </div>
                  <!-- /.text-->
                </div>
                <!-- /.product-->
              </div>
              <div class="item">
                <div class="product">
                  <div class="flip-container">
                    <div class="flipper">
                      <div class="front"><a href="<%=request.getContextPath()%>/detail.html"><img src="<%=request.getContextPath()%>/img/product3.jpg" alt="" class="img-fluid"></a></div>
                      <div class="back"><a href="<%=request.getContextPath()%>/detail.html"><img src="<%=request.getContextPath()%>/img/product3_2.jpg" alt="" class="img-fluid"></a></div>
                    </div>
                  </div><a href="<%=request.getContextPath()%>/detail.html" class="invisible"><img src="<%=request.getContextPath()%>/img/product3.jpg" alt="" class="img-fluid"></a>
                  <div class="text">
                    <h3><a href="<%=request.getContextPath()%>/detail.html">Liquide saveur citron vert P&eacute;rou</a></h3>
                    <p class="price"> 
                      <del></del>5,00€
                    </p>
                  </div>
                  <!-- /.text-->
                </div>
                <!-- /.product-->
              </div>
              <div class="item">
                <div class="product">
                  <div class="flip-container">
                    <div class="flipper">
                      <div class="front"><a href="<%=request.getContextPath()%>/detail.html"><img src="<%=request.getContextPath()%>/img/product2.jpg" alt="" class="<%=request.getContextPath()%>/img-fluid"></a></div>
                      <div class="back"><a href="<%=request.getContextPath()%>/detail.html"><img src="<%=request.getContextPath()%>/img/product2_2.jpg" alt="" class="<%=request.getContextPath()%>/img-fluid"></a></div>
                    </div>
                  </div><a href="<%=request.getContextPath()%>/detail.html" class="invisible"><img src="<%=request.getContextPath()%>/img/product2.jpg" alt="" class="img-fluid"></a>
                  <div class="text">
                    <h3><a href="<%=request.getContextPath()%>/detail.html">Versace D S90</a></h3>
                    <p class="price"> 
                      <del></del>125,00€
                    </p>
                  </div>
                  <!-- /.text-->
                  <div class="ribbon gift">
                    <div class="theribbon">CADEAU</div>
                    <div class="ribbon-background"></div>
                  </div>
                  <!-- /.ribbon-->
                </div>
                <!-- /.product-->
              </div>
              <!-- /.product-->
              </div>
              <!-- /.product-slider-->
            </div>
            <!-- /.container-->
          </div>
          <!-- /#hot-->
          <!-- *** HOT END ***-->
        </div>
		<!--
        *** BLOG HOMEPAGE ***
        _________________________________________________________
        -->
        <div class="box text-center">
          <div class="container">
            <div class="col-md-12">
              <h3 class="text-uppercase">Le blog du vapoteur</h3>
              <p class="lead mb-0">Que ce passe-t-il dans le monde? <a href="<%=request.getContextPath()%>/blog.html">Consulter notre blog!</a></p>
            </div>
          </div>
        </div>
        <div class="container">
          <div class="col-md-12">
            <div id="blog-homepage" class="row">
              <div class="col-sm-6">
                <div class="post">
                  <h4><a class="text-warning" href="<%=request.getContextPath()%>/post.html">C&ocirc;té r&egrave;glementation</a></h4>
                  <p class="author-category">De <a href="#">John Slim</a> dans <a href="">La loi vous parle</a></p>
                  <hr>
                  <p class="intro">Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>
                  <p class="read-more"><a href="<%=request.getContextPath()%>/post.html" class="btn btn-primary">Lire</a></p>
                </div>
              </div>
              <div class="col-sm-6">
                <div class="post">
                  <h4><a class="text-warning" href="post.html">Je vape, tu vapes</a></h4>
                  <p class="author-category">De <a href="#">John Slim</a> dans <a href="">Pourquoi je vapote</a></p>
                  <hr>
                  <p class="intro">Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>
                  <p class="read-more"><a href="<%=request.getContextPath()%>/post.html" class="btn btn-primary">Lire</a></p>
                </div>
              </div>
            </div>
            <!-- /#blog-homepage-->
          </div>
        </div>
        <!-- /.container-->
        <!-- *** BLOG HOMEPAGE END ***-->
      </div>
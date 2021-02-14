<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <!--
    *** FOOTER ***
    _________________________________________________________
    -->
    <div id="footer">
      <div class="container">
        <div class="row gx-3">
          <div class="col-lg-4 col-md-6">
            <h4 class="mb-3">Plan du site</h4>
            <ul class="list-unstyled">
              <li><a href="<%=request.getContextPath()%>/e-cig/">Accueil</a></li>
              <li><a href="<%=request.getContextPath()%>/e-cig/produits"> Nos produits</a></li>
              <li><a href="<%=request.getContextPath()%>/e-cig/">Blog</a></li>
              <li><a href="<%=request.getContextPath()%>/faq.jsp">FAQ</a></li>
              <li><a href="<%=request.getContextPath()%>/contact.jsp">Nous contacter</a></li>
            </ul>
            <hr>
            <h4 class="mb-3">Section Abonné</h4>
            <ul class="list-unstyled">
              <li><a href="#" data-toggle="modal" data-target="#login-modal">Connexion</a></li>
              <li><a href="<%=request.getContextPath()%>/e-cig/enregistrer">S'enregistrer</a></li>
            </ul>
          </div>
          <div class="col-lg-4 col-md-6">
            <h4 class="mb-3">O&uacute; nous trouver?</h4>
            <p class="text-muted"><strong>E-cig</strong><br>1 Rue Saint S&eacute;bastien<br>13006<br>Marseille<br>FRANCE<br></p><a href="contact.html">Contactez-nous!</a>
            <hr class="d-block d-md-none">
          </div>
          <!-- /.col-lg-3-->
          <div class="col-lg-4 col-md-6">
            <h4 class="mb-3">Recevoir notre newsletter</h4>
            <p class="text-muted">Vous souhaitez rester informer des dernières nouveaut&eacute;s de notre site?</p>
            <form>
              <div class="input-group">
                <input type="text" class="form-control"><span class="input-group-append">
                  <button type="button" class="btn btn-outline-secondary">Inscrivez-vous!</button></span>
              </div>
              <!-- /input-group-->
            </form>
            <hr>
            <h4 class="mb-3">Suivez-nous</h4>
            <p class="social"><a href="#" class="facebook external"><i class="fa fa-facebook"></i></a><a href="#" class="twitter external"><i class="fa fa-twitter"></i></a><a href="#" class="instagram external"><i class="fa fa-instagram"></i></a><a href="#" class="email external"><i class="fa fa-envelope"></i></a></p>
          </div>
          <!-- /.col-lg-3-->
        </div>
        <!-- /.row-->
      </div>
      <!-- /.container-->
    </div>
    <!-- /#footer-->
    <!-- *** FOOTER END ***-->
    
    
    <!--
    *** COPYRIGHT ***
    _________________________________________________________
    -->
    <div id="copyright">
      <div class="container">
        <div class="row">
          <div class="col-lg-6 mb-2 mb-lg-0">
            <p class="text-center text-lg-left">©2021 TEAM VAPE.</p>
          </div>
          <div class="col-lg-6">
            <p class="text-center text-lg-right">Template design by <a href="https://bootstrapious.com/">Bootstrapious</a>
              <!-- If you want to remove this backlink, pls purchase an Attribution-free License @ https://bootstrapious.com/p/obaju-e-commerce-template. Big thanks!-->
            </p>
          </div>
        </div>
      </div>
    </div>
    <!-- *** COPYRIGHT END ***-->
    <!-- JavaScript files-->
    <script src="<%=request.getContextPath()%>/vendor/jquery/jquery.min.js"></script>
    <script src="<%=request.getContextPath()%>/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="<%=request.getContextPath()%>/vendor/jquery.cookie/jquery.cookie.js"> </script>
    <script src="<%=request.getContextPath()%>/vendor/owl.carousel/owl.carousel.min.js"></script>
    <script src="<%=request.getContextPath()%>/vendor/owl.carousel2.thumbs/owl.carousel2.thumbs.js"></script>
    <script src="<%=request.getContextPath()%>/js/front.js"></script>
    <script src="<%=request.getContextPath()%>/js/front.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/leaflet/1.4.0/leaflet.js"></script>
    <script src="<%=request.getContextPath()%>/js/map.js"></script>
    <script src="<%=request.getContextPath()%>/js/password.js"></script>
  </body>
</html>
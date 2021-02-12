<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="produit.metier.Produit" %>
<%@ page import="metier.lignCommande.LignCommande" %>
<%@ page import="metier.panier.Panier %>
<%@ page import="dao.Dao %>
<%@ page import="java.util.ArrayList" %>
<jsp:useBean id="panier" class="metier.panier.Panier" scope="request"/>
<% ArrayList<LignCommande> lignPanier = (ArrayList<LignCommande>) request.getAttribute("panier"); %>

<% request.setAttribute("titre", "Mon panier"); %>
<%@ include file="/WEB-INF/include/head.jsp" %>

  
  
  
<%@ include file="/WEB-INF/include/navbar.jsp" %>
    <div id="all">
      <div id="content">
        <div class="container">
          <div class="row">
            <div class="col-lg-12">
              <!-- breadcrumb-->
              <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="#">Accueil</a></li>
                  <li aria-current="page" class="breadcrumb-item active">Panier</li>
                </ol>
              </nav>
            </div>
            <div id="basket" class="col-lg-9">
              	
              <div class="box" id="overb">
                <form method="post" action="checkout1.html">
                  <h1>Votre panier</h1>
                  <p class="text-muted">Vous avez actuellement 3 produit(s) dans votre panier.</p>
                  <div class="table-responsive">
                    <table class="table">
                      <thead>
                        <tr>
                          <th colspan="2">Produit</th>
                          <th >Quantité</th>
                          <th>Prix unitaire TTC</th>
                          <th>Remise</th>
                          <th colspan="2">Total</th>
                        </tr>
                      </thead>
                      <tbody>
                      <% for (LignCommande lignCom : lignPanier) { %>
                        <tr>
                          <td><a href="#"><img src="<%=request.getContextPath() %>/img/<%=lignCom.getProduit().getImage() %>"  alt="" class="img-fluid"></a></td>
                          <td><a href="#"><%=lignCom.getProduit().getNom() %></a></td>
                          <td>
                            <input type="number" value="<%=lignCom.getQuantite() %>" class="form-control" name="alterQuant">
                          </td>
                          <td><%=lignCom.getProduit().getPrix() %></td>
                          <td>0,00€</td>
                          <td><%=lignCom.getProduit().getPrix() %>€</td>
                          <td><a href="#"><i class="fa fa-trash-o"></i></a></td>
                        </tr>
                     <%} %>
                     
                	
					
                        
                      </tbody>
                      <tfoot>
                        <tr>
                          <th colspan="5">Total</th>
                          <th colspan="2"><%=panier.getMontantPanier() %></th>
                        </tr>
                      </tfoot>
                    </table>
                  </div>
                  <!-- /.table-responsive-->
                  <div class="box-footer d-flex justify-content-between flex-column flex-lg-row">
                    <div class="left"><a href="category.html" class="btn btn-outline-secondary"><i class="fa fa-chevron-left"></i> Continuez vos achats</a></div>
                    <div class="right">
                      <button class="btn btn-outline-secondary"><i class="fa fa-refresh"></i> Mettre à jour le panier</button>
                      <button type="submit" class="btn btn-primary" ><a href="<%=request.getContextPath()%>/comClient.jsp">Valider votre panier </a> <i class="fa fa-chevron-right"></i></button>
                    </div>
                  </div>
                </form>
              </div>
              
              <!-- /.box-->
              <div class="row same-height-row">
                <div class="col-lg-3 col-md-6">
                  <div class="box same-height">
                    <h3>Vous pourriez aimer aussi ces produits</h3>
                  </div>
                </div>
                <div class="col-md-3 col-sm-6">
                  <div class="product same-height">
                    <div class="flip-container">
                      <div class="flipper">
                        <div class="front"><a href="detail.html"><img src="<%=request.getContextPath()%>/img/aegisx.png" alt="box aegis x" class="img-fluid"></a></div>
                        <div class="back"><a href="detail.html"><img src="<%=request.getContextPath()%>/img/aegisx.png" alt="box aegis x" class="img-fluid"></a></div>
                      </div>
                    </div><a href="detail.html" class="invisible"><img src="<%=request.getContextPath()%>/img/aegisx.png" alt="box aegis x" class="img-fluid"></a>
                    <div class="text">
                      <h3>Aegis X</h3>
                      <p class="price">50,90€</p>
                    </div>
                  </div>
                  <!-- /.product-->
                </div>
                <div class="col-md-3 col-sm-6">
                  <div class="product same-height">
                    <div class="flip-container">
                      <div class="flipper">
                        <div class="front"><a href="detail.html"><img src="<%=request.getContextPath()%>/img/elfamous.png" alt="e-liquide famous" class="img-fluid"></a></div>
                        <div class="back"><a href="detail.html"><img src="<%=request.getContextPath()%>/img/elfamous.png" alt="e-liquide famous" class="img-fluid"></a></div>
                      </div>
                    </div><a href="detail.html" class="invisible"><img src="<%=request.getContextPath()%>/img/elfamous.png" alt="e-liquide famous" class="img-fluid"></a>
                    <div class="text">
                      <h3>E-liquide Famous</h3>
                      <p class="price">19,90€</p>
                    </div>
                  </div>
                  <!-- /.product-->
                </div>
                <div class="col-md-3 col-sm-6">
                  <div class="product same-height">
                    <div class="flip-container">
                      <div class="flipper">
                        <div class="front"><a href="detail.html"><img src="<%=request.getContextPath()%>/img/elsupreme.png" alt="e-liquide supreme" class="img-fluid"></a></div>
                        <div class="back"><a href="detail.html"><img src="<%=request.getContextPath()%>/img/elsupreme.png" alt="e-liquide supreme" class="img-fluid"></a></div>
                      </div>
                    </div><a href="detail.html" class="invisible"><img src="<%=request.getContextPath()%>/img/elsupreme.png" alt="e-liquide supreme" class="img-fluid"></a>
                    <div class="text">
                      <h3>E-liquide Suprème</h3>
                      <p class="price">6,90€</p>
                    </div>
                  </div>
                  <!-- /.product-->
                </div>
              </div>
            </div>
            <!-- /.col-lg-9-->
            <div class="col-lg-3">
              <div id="order-summary" class="box">
                <div class="box-header">
                  <h3 class="mb-0">Votre commande</h3>
                </div>
                <p class="text-muted">Les frais de port et les coûts additionnels sont calculés en se basant sur les informations entrées.</p>
                <div class="table-responsive">
                  <table class="table">
                    <tbody>
                      <tr>
                        <td>Total de votre panier</td>
                        <th>69,60€</th>
                      </tr>
                      <tr>
                        <td>Frais de port et livraison</td>
                        <th>offert</th>
                      </tr>
                      
                      <tr class="total">
                        <td>Total</td>
                        <th>69,60€</th>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
              <div class="box">
                <div class="box-header">
                  <h4 class="mb-0">Coupon</h4>
                </div>
                <p class="text-muted">Si vous avez un coupon, veuillez entrer le code ici.</p>
                <form>
                  <div class="input-group">
                    <input type="text" class="form-control" placeholder="entrez votre code"><span class="input-group-append">
                      <button type="button" class="btn btn-primary"><i class="fa fa-gift"></i></button></span>
                  </div>
                  <!-- /input-group-->
                </form>
              </div>
            </div>
            <!-- /.col-md-3-->
          </div>
        </div>
      </div>
    </div>
   <%@ include file="/WEB-INF/include/footer.jsp" %>
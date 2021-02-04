<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<% request.setAttribute("titre", "Ma commande"); %>
<%@ include file="/WEB-INF/include/head.jsp" %>

  
  
  
<%@ include file="/WEB-INF/include/navbar.jsp" %>
            <div class="col-lg-3">
              <!--
              *** CUSTOMER MENU ***
              _________________________________________________________
              -->
              <div class="card sidebar-menu">
                <div class="card-header">
                  <h3 class="h4 card-title">Customer section</h3>
                </div>
                <div class="card-body">
                  <ul class="nav nav-pills flex-column"><a href="customer-orders.html" class="nav-link active"><i class="fa fa-list"></i> My orders</a><a href="customer-wishlist.html" class="nav-link"><i class="fa fa-heart"></i> My wishlist</a><a href="customer-account.html" class="nav-link"><i class="fa fa-user"></i> My account</a><a href="index.html" class="nav-link"><i class="fa fa-sign-out"></i> Logout</a></ul>
                </div>
              </div>
              <!-- /.col-lg-3-->
              <!-- *** CUSTOMER MENU END ***-->
            </div>
            <div id="customer-order" class="col-lg-9">
              <div class="box">
                <h1>Order #1735</h1>
                <p class="lead">>La commande #1735 a été effectuée le <strong>22/01/2021</strong> et est <strong>en préparation</strong>.</p>
                <p class="text-muted">If you have any questions, please feel free to <a href="contact.html">contact us</a>, our customer service center is working for you 24/7.</p>
                <hr>
                <div class="table-responsive mb-4">
                  <table class="table">
                    <thead>
                      <tr>
                        <th colspan="2">Produit</th>
                        <th>Quantité</th>
                        <th>Prix unitaire</th>
                        <th>Remise</th>
                        <th>Total</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td><a href="#"><img src="<%=request.getContextPath()%>/img/aegis.png" alt=" boxe Aegis"></a></td>
                        <td><a href="#">Aegis box</a></td>
                        <td>1</td>
                        <td>48,90€</td>
                        <td>0.00€</td>
                        <td>48,90€</td>
                      </tr>
                      <tr>
                        <td><a href="#"><img src="<%=request.getContextPath()%>/img/eliquid.png" alt="e-liquide"></a></td>
                        <td><a href="#">E liquide</a></td>
                        <td>3</td>
                        <td>6,90€</td>
                        <td>0.00€</td>
                        <td>20,70€</td>
                      </tr>
                    </tbody>
                    <tfoot>
                      <tr>
                        <th colspan="5" class="text-right">Sous total</th>
                        <th>69,60€</th>
                      </tr>
                      <tr>
                        <th colspan="5" class="text-right">Frais de port</th>
                        <th>0,00€</th>
                      </tr>
                      <tr>
                        <th colspan="5" class="text-right">Taxe</th>
                        <th>0,00€</th>
                      </tr>
                      <tr>
                        <th colspan="5" class="text-right">Total</th>
                        <th>69,60€</th>
                      </tr>
                    </tfoot>
                  </table>
                </div>
                <!-- /.table-responsive-->
                <div class="row addresses">
                  <div class="col-lg-6">
                    <h2>Invoice address</h2>
                    <p>John Brown<br>13/25 New Avenue<br>New Heaven<br>45Y 73J<br>England<br>Great Britain</p>
                  </div>
                  <div class="col-lg-6">
                    <h2>Shipping address</h2>
                    <p>John Brown<br>13/25 New Avenue<br>New Heaven<br>45Y 73J<br>England<br>Great Britain</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
     <%@ include file="/WEB-INF/include/footer.jsp" %>
<%-- 
    Document   : content_letf
    Created on : 6/09/2022, 4:05:01 p. m.
    Author     : rober
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="accessdataclasses.CategoriaAccessDataClasses"%>
<%@page import="JavaBeans.Categoria"%>

<div class="left-sidebar">
						<h2>Categorías</h2>
						<div class="panel-group category-products" id="accordian"><!--categoria-productos-->
                                                    <%! 
                                                        ArrayList<Categoria> lista=CategoriaAccessDataClasses.listar();
                                                        int codigo = 0;
                                                    %><!-- creando definición metodo Java -->
                                                    <% 
                                                       for(int i = 0; lista.size() > i; i++){ 
                                                       codigo = lista.get(i).getCodigo();
                                                    %> <!-- Agregando ScriptLets Java -->
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
                                                                            <a <% if(CategoriaAccessDataClasses.ctgrSuperior(codigo)) { %>data-toggle="collapse" data-parent="#accordian" <% } %> href="#<%= codigo %>">
											<% if(CategoriaAccessDataClasses.ctgrSuperior(codigo)) { %> <span class="badge pull-right"><i class="fa fa-plus"></i></span> <% } %>
                                                                                        <%= lista.get(i).getNombre() %> <!-- Expresión para obtener el listado de productos -->
										</a>
									</h4>
								</div>
								<div id="<%= codigo %>" class="panel-collapse collapse">
									<div class="panel-body">
                                                                            <ul>
                                                                                <% ArrayList<Categoria> listaSub=CategoriaAccessDataClasses.listarSubCategoria(codigo); %>
                                                                                <% 
                                                                                    for(int a = 0; listaSub.size() > a; a++){ 
                                                                                    codigo = listaSub.get(a).getCodigo();
                                                                                 %> 

                                                                                            <li><a href="#"><%= listaSub.get(a).getNombre() %></a></li>
                                                                                            

                                                                                  <% } %>
                                                                              </ul>
									</div>
								</div>
							</div>
							<% } %>
						</div><!--/categoria-productos-->
					
						<div class="brands_products"><!--inicio marcas_productos-->
							<h2>Marcas</h2>
							<div class="brands-name">
								<ul class="nav nav-pills nav-stacked">
									<li><a href="#"> <span class="pull-right">(56)</span>Nike</a></li>
									<li><a href="#"> <span class="pull-right">(27)</span>Adidas</a></li>
									<li><a href="#"> <span class="pull-right">(32)</span>Polo</a></li>
									<li><a href="#"> <span class="pull-right">(5)</span>Puma</a></li>
									<li><a href="#"> <span class="pull-right">(9)</span>Boude</a></li>
									<li><a href="#"> <span class="pull-right">(4)</span>ACB</a></li>
								</ul>
							</div>
						</div><!--fin marcas_productos-->

						<div class="shipping text-center"><!--shipping-->
							<img src="images/home/shipping.jpg" alt="" />
						</div><!--/shipping-->
					
					</div>

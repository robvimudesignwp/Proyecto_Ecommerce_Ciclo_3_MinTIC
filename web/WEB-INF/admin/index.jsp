<%-- 
    Document   : index
    Created on : 6/09/2022, 8:27:20 p. m.
    Author     : rober
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Gestión de Productos</title>
    <%@include file="../../WEB-INF/css.jsp" %>
</head><!--/head-->

<body>
    <%@include file="../../WEB-INF/header.jsp" %>
	
        <section>
		<div class="container">
			<div class="row">
			     <div class="col-sm-3">
                                   	
			     </div>
				
				<div class="col-sm-5 clearfix">
                                    <h3>Gestionar Producto</h3>
                                
                                    <form action="ControlProducto">
                                        <div class="form-group">
                                          <label for="nombre producto">Nombre Producto</label>
                                          <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="Nombre Producto">
                                        </div>
                                        <div class="form-group">
                                            <label for="precio producto">Precio Producto</label>
                                            <input type="text" class="form-control" aria-label="Amount (to the nearest dollar)" placeholder="Precio Producto $0.00">
                                        </div>
                                        <div class="form-group">
                                          <label for="categoria">Categoria Producto</label>
                                          <select class="form-control" id="exampleFormControlSelect1">
                                            <option>1</option>
                                            <option>2</option>
                                            <option>3</option>
                                            <option>4</option>
                                            <option>5</option>
                                          </select>
                                        </div>
                                        <div class="form-group">
                                          <label for="descripcion producto">Descripción Producto</label>
                                          <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
                                        </div>
                                        <div class="form-group">
                                          <label for="imagen producto">Seleccionar imagen del producto</label>
                                          <input type="file" class="form-control-file" id="exampleFormControlFile1">
                                        </div>
                                        <div class="form-group">
                                          <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="gridCheck">
                                            <label class="form-check-label" for="gridCheck">
                                              Nuevo
                                            </label>
                                          </div>
                                          <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="gridCheck">
                                            <label class="form-check-label" for="gridCheck">
                                              Recomendado
                                            </label>
                                          </div>
                                          <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="gridCheck">
                                            <label class="form-check-label" for="gridCheck">
                                              Visible
                                            </label>
                                          </div>
                                        </div><!<!-- end form-group form-check -->
                                        <button type="submit" class="btn btn-primary">Registrar</button>
                                        <button type="submit" class="btn btn-primary">Consultar</button>
                                        <button type="submit" class="btn btn-primary">Actualizar</button>
                                        <button type="submit" class="btn btn-primary">Borrar</button>
                                    </form>
				</div>
			</div>
		</div>
	</section>
	
                                    <%@include file="../../WEB-INF/footer.jsp" %>
	
                                    <%@include file="../../WEB-INF/scripts_js.jsp" %>
</body>
</html>
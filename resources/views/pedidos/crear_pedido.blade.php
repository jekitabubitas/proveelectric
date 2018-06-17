@extends('crudbooster::admin_template')
@section('content')
    <link rel="stylesheet" href="{{asset("css/kendo.common.min.css")}}">
    <link rel="stylesheet" href="{{asset("css/kendo.bootstrap.min.css")}}">


  <!-- Your html goes here -->
  {{--<div id="clientes" class="modal" tabindex="-1" role="dialog">
      <div class="modal-dialog modal-lg" role="document">
          <div class="modal-content">
              <div class="modal-header">
                  <h5 class="modal-title">LISTADO DE CLIENTES</h5>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                  </button>
              </div>
              <div class="modal-body">
                  <div id="grid"></div>

              </div>
              <div class="modal-footer">
                  <button type="button" class="btn btn-primary">SELECCIONAR</button>
                  <button type="button" class="btn btn-secondary" data-dismiss="modal">CERRAR</button>
              </div>
          </div>
      </div>
  </div>--}}
  <div class='panel panel-default'>
    <div class='panel-body'>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <form method='post' action='{{CRUDBooster::mainpath('add-save')}}' class="form-inline">
                        <div class='form-group'>
                            <label>CLIENTE</label>
                            <div id="cliente"></div>

                            {{-- <input type='text' name='cliente' required class='form-control'/>
                             <input type='button' name='label1' required value="BUSCAR" class='btn btn-success'  data-toggle="modal" data-target="#clientes"/>--}}
                        </div>
                        <div class='form-group'>
                            <label>VENDEDOR</label>
                            <div id="vendedor"></div>
                        </div>

                        <div class='form-group'>
                            <label>PEDIDO No.</label>
                            <input id="numero_pedido" style="text-align: right;font-size: 14pt" disabled="" value="{{$pedido->numero_pedido+1}}"/>

                        </div>
                        <!-- etc .... -->

                    </form>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <form action="" class="form-inline">
                        <div class='form-group'>
                            <label>PRODUCTO</label>
                            <div id="producto"></div>
                        </div>
                        <div class='form-group'>
                            <label>CANTIDAD</label>
                            <input type="number" id="cantidad"/>
                        </div>
                        <div class='form-group'>
                            <br>
                            <button id="agregar" type="button" class="btn btn-success">AGREGAR</button>
                        </div>

                    </form>
                </div>
            </div>
            <br>
            <div class="row">
                <div class="col-xs-10" id="detallePedido"></div>

            </div>

            <div class="row">
                <div class="col-xs-offset-5 col-xs-3">
                    <div class="container">
                        <div class="row">
                            <label for="">Descuento:</label>
                            <input style="text-align: right;" id="porcentaje_descuento" type="number">%
                        </div>
                    </div>
                </div>
                <div class="col-xs-2">
                    <table class="">
                        <tr>
                            <td>SUBTOTAL</td>
                            <td><input id="subtotal" style="text-align: right;width: 130px" type="text" value=""></td>
                        </tr>
                        <tr>
                            <td>DESCUENTO</td>
                            <td><input id="descuento" style="text-align: right;width: 130px" type="text" value="0"></td>
                        </tr>
                        <tr>
                            <td>IVA</td>
                            <td><input id="iva" style="text-align: right;width: 130px" type="text" value=""></td>
                        </tr>
                        <tr>
                            <td>TOTAL</td>
                            <td><input id="total" style="text-align: right;width: 130px;font-weight: bold;" type="text" value=""></td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>


    <div class='panel-footer'>
      <input id="guardar" type='submit' class='btn btn-primary' value='GUARDAR'/>
    </div>
  </div>
    <script src="{{asset("js/jquery-3.3.1.min.js")}}"></script>
    <script>
        $(document).ready(function () {
            $("#cliente").kendoComboBox({
                dataTextField: "NOMBRE",
                dataValueField: "ID",
                dataSource:{
                    transport:{
                        read:"http://localhost/proveelectric/public/clientesData"
                    }
                },
                filter: "contains",
                suggest: true,
                index: 3
            });
            $("#vendedor").kendoComboBox({
                dataTextField: "NOMBRE",
                dataValueField: "ID",
                dataSource:[
                    {ID:1,NOMBRE:"MARCELO CASTRO"},
                    {ID:1,NOMBRE:"OFICINA"},
                    {ID:1,NOMBRE:"MIGUEL PORTILLO"},
                    {ID:1,NOMBRE:"JUAN CARLOS LEON"},
                    {ID:1,NOMBRE:"ANDRES ORTEGA"}
                ],
                filter: "contains",
                suggest: true,
                index: 3
            });


            $("#producto").kendoComboBox({
                dataTextField: "nombre",
                dataValueField: "id",
                dataSource:{
                    transport:{
                        read:"http://localhost/proveelectric/public/productosData"
                    }
                },
                filter: "contains",
                suggest: true
            });
            $("#detallePedido").kendoGrid({
                dataSource: {
                    transport: {
                        read:function (e) {
                            e.success([])
                        }
                    },
                    pageSize: 20
                },
                height: "250px",
                width:200,
                filterable:true,
                selectable:true,
                sortable: true,
                columns: [{
                    field: "codigo",
                    title:"CODIGO"
                },{
                    field: "cantidad",
                    title:"CANTIDAD"
                },
                    {
                    field: "descripcion",
                    title:"DESCRIPCION"
                },

                    {
                        field: "precio_unit",
                        title:"P/UNIT"
                    },{
                        field: "precio_total",
                        title:"P/TOTAL",
                        template:'<div style="text-align: right">#=kendo.toString(precio_total,"n2")#</div>',
                    }]
            });
        });

        ///BOTON AGREGAR
        //1.-
        $("#agregar").click(function () {
            var seleccionado= $("#producto").data('kendoComboBox').dataItem();
            var linea = {
                codigo:seleccionado.codigo,
                cantidad:$("#cantidad").val(),
                descripcion:seleccionado.descripcion,
                precio_unit:seleccionado.precio,
                precio_total:$("#cantidad").val()*seleccionado.precio,
                producto_id:seleccionado.id

            };
            $("#detallePedido").data("kendoGrid").dataSource.add(linea);

            var subtotal=0;
            var total=0;
            var descuento = parseFloat($("#descuento").val());

            $("#detallePedido").data("kendoGrid").dataSource.data().forEach(function (item) {
                subtotal+=item.precio_total
            });

            $("#subtotal").val(subtotal.toFixed(2));


            $("#iva").val(((subtotal-descuento)*0.12).toFixed(2));

            total=parseFloat((subtotal-descuento)+parseFloat($("#iva").val()));

            $("#total").val(total.toFixed(2));

            $("#producto").data('kendoComboBox').value(null)
            $("#cantidad").val(null)
            //$("#descuento").val(total*#descuento.toFixed())
        })


        ///BOTON GUARDAR
        $("#guardar").click(function () {
            //console.log($("#cliente").data('kendoComboBox').value())
            var cliente=$("#cliente").data('kendoComboBox').dataItem();
            var formdata = new FormData();
            formdata.append("cliente_id",cliente.ID);
            formdata.append("numero_pedido",$("#numero_pedido").val());
            formdata.append("subtotal",$("#subtotal").val());
            formdata.append("descuento",$("#descuento").val());
            formdata.append("iva",$("#iva").val());
            formdata.append("total",$("#total").val());
            console.log(JSON.stringify($("#detallePedido").data("kendoGrid").dataSource.data()));
            formdata.append("detalle",JSON.stringify($("#detallePedido").data("kendoGrid").dataSource.data()));


            $.ajax({
                url:"/proveelectric/public/guardarPedido",
                type:"POST",
                data:formdata,
                dataType:"html",
                cache:false,
                contentType:false,
                processData:false
            }).done(function (res) {
                if(res == 'true'){
                    window.location.href = 'http://localhost/proveelectric/public/admin/pedidos19';
                }
            }).error(function (err) {
                //alert(err.message)
            })
        });

        //CAMPO DE DESCUENTO
        $("#porcentaje_descuento").on("keydown",function (e) {
           if(e.keyCode == 13){
               var porcentaje = $("#porcentaje_descuento").val();
               var subtotal = $("#subtotal").val();
               var descontar = (subtotal*porcentaje)/100;
               //var total_descuento = subtotal - descontar;

               if(subtotal > 0 ){
                   $("#descuento").val(descontar.toFixed(2));
                   var iva = (subtotal-descontar)*0.12;
                   $("#iva").val(iva.toFixed(2));
                   var total = (subtotal-descontar)+iva;
                   $("#total").val(total.toFixed(2));
               }else{
                   e.preventDefault();
                   swal("Agregue productos al pedido");
               }
           }
        });

    </script>
@endsection
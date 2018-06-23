<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link href="{{asset('css/bootstrap.min.css')}}" rel="stylesheet" id="bootstrap-css">
</head>
<body onload="window.print()">
<h4 style="text-align: center;">IMPORTADORA PROVEELECTRIC</h4>

<div class="container">
    <div class="row">
        <div class="col-xs-12">
            <div class="invoice-t>itle">
               <h3 class="pull-right">N.PEDIDO {{$pedido->numero_pedido}}</h3>
            </div>
            <hr>
            <div class="row">
                <div class="col-xs-6">
                    <address>
                        <strong>CLIENTE:</strong>
                        {{$pedido->cliente['NOMBRE']}}
                    </address>
                </div>
                <div class="col-xs-6 text-right">
                    <address>
                        &nbsp
                        <strong>CIUDAD:</strong>
                        {{$pedido->cliente['CIUDAD']}}
                        &nbsp
                    </address>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-6">
                    <address>
                        <strong>DIRECCION:</strong>
                        {{$pedido->cliente['DIRECCION']}}


                    </address>
                </div>
                <div class="col-xs-6 text-right">
                    <address>
                        &nbsp
                        <strong>VENDEDOR:</strong>
                        {{$pedido->vendedor}}
                        &nbsp
                    </address>
                </div>
                <div class="col-xs-6 text-right">
                    <address>
                        &nbsp
                        <strong>FECHA/HORA:</strong>
                        {{$pedido->created_at}}
                        &nbsp
                    </address>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 style="text-align: center;">DETALLE DE PEDIDO</h4>
                </div>
                <div class="panel-body">
                    <div class="table-responsive">
                        <table class="table table-condensed">
                            <thead>
                            <tr>
                                <td><strong>CODIGO</strong></td>
                                <td class="text-center"><strong>DESCRIPCION</strong></td>
                                <td class="text-center"><strong>CANTIDAD</strong></td>
                                <td class="text-right"><strong>PRECIO</strong></td>
                            </tr>
                            </thead>
                            <tbody>
                            <!-- foreach ($order->lineItems as $line) or some such thing here -->
                            <tr>
                                <td>Crosin</td>
                                <td class="text-center">100 mg</td>
                                <td class="text-center">10</td>
                                <td class="text-right">30 INR</td>
                            </tr>
                            <tr>
                                <td>Paracetamol</td>
                                <td class="text-center">20 mg</td>
                                <td class="text-center">3</td>
                                <td class="text-right">50 INR</td>
                            </tr>
                            <tr>
                                <td class="thick-line"></td>
                                <td class="thick-line"></td>
                                <td class="thick-line text-center"><strong>SUBTOTAL</strong></td>
                                <td class="thick-line text-right">80 INR</td>
                            </tr>
                            <tr>
                                <td class="no-line"></td>
                                <td class="no-line"></td>
                                <td class="no-line text-center"><strong>DESCUENTO</strong></td>
                                <td class="no-line text-right">15 INR</td>
                            </tr>
                            <tr>
                                <td class="no-line"></td>
                                <td class="no-line"></td>
                                <td class="no-line text-center"><strong>IVA</strong></td>
                                <td class="no-line text-right">15 INR</td>
                            </tr>
                            <tr>
                                <td class="no-line"></td>
                                <td class="no-line"></td>
                                <td class="no-line text-center"><strong>TOTAL</strong></td>
                                <td class="no-line text-right">95 INR</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
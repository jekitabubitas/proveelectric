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
<h4 style="text-align: center;">Importadora Proveelectric</h4>
{{$pedido->cliente['NOMBRE']}}
<div class="container">
    <div class="row">
        <div class="col-xs-12">
            <div class="invoice-title">
                <h2>Invoice</h2><h3 class="pull-right">Order Id # hxs1234567</h3>
            </div>
            <hr>
            <div class="row">
                <div class="col-xs-6">
                    <address>
                        <strong>Billed To:</strong><br>
                        Jeenal Yatishkumar Bhatt<br>
                        jbhatt@healthxapp.com
                    </address>
                </div>
                <div class="col-xs-6 text-right">
                    <address>
                        <strong>Shipped To:</strong><br>
                        206/3 Signet hub near akshar chowk <br>
                        Vadodara, Gujratn<br>
                        India, 390023
                    </address>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-6">
                    <address>
                        <strong>Payment Method:</strong><br>
                        <br>

                    </address>
                </div>
                <div class="col-xs-6 text-right">
                    <address>
                        <strong>Order Date:</strong><br>
                        March 7th, 2018<br><br>
                    </address>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title"><strong>Order summary</strong></h3>
                </div>
                <div class="panel-body">
                    <div class="table-responsive">
                        <table class="table table-condensed">
                            <thead>
                            <tr>
                                <td><strong>Medication</strong></td>
                                <td class="text-center"><strong>Strength</strong></td>
                                <td class="text-center"><strong>Quantity</strong></td>
                                <td class="text-right"><strong>Price</strong></td>
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
                                <td class="thick-line text-center"><strong>Subtotal</strong></td>
                                <td class="thick-line text-right">80 INR</td>
                            </tr>
                            <tr>
                                <td class="no-line"></td>
                                <td class="no-line"></td>
                                <td class="no-line text-center"><strong>Shipping</strong></td>
                                <td class="no-line text-right">15 INR</td>
                            </tr>
                            <tr>
                                <td class="no-line"></td>
                                <td class="no-line"></td>
                                <td class="no-line text-center"><strong>Total</strong></td>
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
<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pedido extends Model
{
    protected $table="pedidos";

    public function detalle(){
        return $this->hasMany('App\DetallePedido',"pedidos_id");
    }

    public function cliente(){
        return $this->belongsTo('App\Cliente','cliente_id','id');
    }
}

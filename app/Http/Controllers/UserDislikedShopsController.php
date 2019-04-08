<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\UserDislikedShop;

class UserDislikedShopsController extends Controller
{
    public function dislikeShop(Request $request){
        try{
       $dislikeShop = new UserDislikedShop();
       $dislikeShop->shop_id = $request["shop_id"];
       $dislikeShop->user_id = $request["user_id"];
       $dislikeShop->save();
       return "Shop Disliked";
    }
    catch(\Exception $e){

            return "Error Disliking Shop";
    }


    }
}

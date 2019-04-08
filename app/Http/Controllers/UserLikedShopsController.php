<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\UserLikedShop;
use App\Shop;
use Auth;
use Session;
class UserLikedShopsController extends Controller
{



   
    public function index(){
        $userLikedShops = UserLikedShop::where('user_id',Auth::id())->get();

        $preferredShops = array();

        foreach($userLikedShops as $shop){
           $shop = Shop::findOrFail ($shop->shop_id);
           array_push($preferredShops,$shop);   

        }

        return view('preferred-shops',compact('preferredShops'));

    }


    public function likeShop(Request $request){
        try{
       $likeShop = new UserLikedShop();
       $likeShop->shop_id = $request["shop_id"];
       $likeShop->user_id = $request["user_id"];
       $likeShop->save();
       return "Shop Liked";        

    }
    catch(\Exception $e){
        return "Error Liking Shop"; 
    }


    }



    public function deleteLikedShop(Request $request){

        try {
         UserLikedShop::where('shop_id',$request->shop_id)->where('user_id',Auth::id())->delete();
         return "Shop Deleted";
        }

        catch(\Exception $e){
            return "Error Deleting Liked Shop"; 
    

        }

    }


}

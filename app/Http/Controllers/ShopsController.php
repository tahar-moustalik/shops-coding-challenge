<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Shop;
use App\UserLikedShop;
use App\UserDislikedShop;
use DB;
use Auth;
class ShopsController extends Controller
{
       public static function getShops(){
        $userLikedShops = self::getUserLikedShops();
        $userDislikedShops = self::getUserDislikedShops();
        $defaultShops = Shop::whereNotIn('shop_id',$userLikedShops)->whereNotIn('shop_id',$userDislikedShops)
                    ->get();

        // Testing if user allowed access to his/her location 
        // if not then default shops without sorting by distance is displayed 
        if( empty(Auth::user()->user_lat)){
            $nearByeShops = $defaultShops;
        }
        else {
      // this array will hold shop objects as values and the distance to shop as key 
      $nearByeShops = array();

      foreach ($defaultShops as $shop) {
          $distanceToShop = self::distanceCalculation(Auth::user()->user_lat,Auth::user()->user_lng,
          $shop->shop_latitude,$shop->shop_longitude,5);
          $nearByeShops[$distanceToShop] = $shop;
    
      }
      // here ksort is used to sort the array by key which in this is the distance to each shop by ascending order
      ksort($nearByeShops);
        }
  
        return $nearByeShops;
    }

    private static function getUserLikedShops(){
        $userLikedShops = UserLikedShop::select('shop_id')->where('user_id',Auth::id())->get();
        return $userLikedShops;
    }

    private static function getUserDislikedShops(){
        $userDislikedShops = UserDislikedShop::select('shop_id')->where('user_id',Auth::id())->get();
        return $userDislikedShops;
    }

   private static function distanceCalculation($point1_lat, $point1_long, $point2_lat, $point2_long, $decimals = 2) {
       
        $degrees = rad2deg(acos((sin(deg2rad($point1_lat))*sin(deg2rad($point2_lat))) + (cos(deg2rad($point1_lat))*cos(deg2rad($point2_lat))*cos(deg2rad($point1_long-$point2_long)))));
                $distance = $degrees * 111.13384;
        return round($distance, $decimals);
    }
}

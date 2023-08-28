<?php

namespace App\Http\Traits;

use App\Models\Product;
use App\Models\Talabat;
use Carbon\Carbon;
use Illuminate\Support\Facades\DB;

trait YearsTrait {

    public function years($user_id) {
        $id_products = Product::select('id')->where('user_id',$user_id)->get();
        $full_count = Talabat::whereIn('product_id',$id_products)->count();
        $time_years = Carbon::now();


        $top_one_height = Talabat::whereIn('product_id',$id_products)->whereYear('created_at',$time_years->isoFormat( "Y" ))->count() / $full_count * 100;
        $top_one_customers = Talabat::whereIn('product_id',$id_products)->whereYear('created_at',$time_years->isoFormat( "Y" ))
            ->select(DB::raw('customer_id'))
            ->groupBy('customer_id')
            ->get();
        $top_one_earns = Talabat::whereIn('product_id',$id_products)->whereYear('created_at',$time_years->isoFormat( "Y" ))->get();
        $top_one_total = 0;
        foreach ($top_one_earns as $top_one_earn){
            $top_one_total += $top_one_earn->many * $top_one_earn->price;
        }


        $top_two_height = Talabat::whereIn('product_id',$id_products)->whereYear('created_at',$time_years->isoFormat( "Y" )-1)->count() / $full_count * 100;
        $top_two_customers = Talabat::whereIn('product_id',$id_products)->whereYear('created_at',$time_years->isoFormat( "Y" )-1)
            ->select(DB::raw('customer_id'))
            ->groupBy('customer_id')
            ->get();
        $top_two_earns = Talabat::whereIn('product_id',$id_products)->whereYear('created_at',$time_years->isoFormat( "Y" )-1)->get();
        $top_two_total = 0;
        foreach ($top_two_earns as $top_two_earn){
            $top_two_total += $top_two_earn->many * $top_two_earn->price;
        }


        $top_three_height = Talabat::whereIn('product_id',$id_products)->whereYear('created_at',$time_years->isoFormat( "Y" )-2)->count() / $full_count * 100;
        $top_three_customers = Talabat::whereIn('product_id',$id_products)->whereYear('created_at',$time_years->isoFormat( "Y" )-2)
            ->select(DB::raw('customer_id'))
            ->groupBy('customer_id')
            ->get();
        $top_three_earns = Talabat::whereIn('product_id',$id_products)->whereYear('created_at',$time_years->isoFormat( "Y" )-2)->get();
        $top_three_total = 0;
        foreach ($top_three_earns as $top_three_earn){
            $top_three_total += $top_three_earn->many * $top_three_earn->price;
        }


        $top_four_height = Talabat::whereIn('product_id',$id_products)->whereYear('created_at',$time_years->isoFormat( "Y" )-3)->count() / $full_count * 100;
        $top_four_customers = Talabat::whereIn('product_id',$id_products)->whereYear('created_at',$time_years->isoFormat( "Y" )-3)
            ->select(DB::raw('customer_id'))
            ->groupBy('customer_id')
            ->get();
        $top_four_earns = Talabat::whereIn('product_id',$id_products)->whereYear('created_at',$time_years->isoFormat( "Y" )-3)->get();
        $top_four_total = 0;
        foreach ($top_four_earns as $top_four_earn){
            $top_four_total += $top_four_earn->many * $top_four_earn->price;
        }


        $top_five_height = Talabat::whereIn('product_id',$id_products)->whereYear('created_at',$time_years->isoFormat( "Y" )-4)->count() / $full_count * 100;
        $top_five_customers = Talabat::whereIn('product_id',$id_products)->whereYear('created_at',$time_years->isoFormat( "Y" )-4)
            ->select(DB::raw('customer_id'))
            ->groupBy('customer_id')
            ->get();
        $top_five_earns = Talabat::whereIn('product_id',$id_products)->whereYear('created_at',$time_years->isoFormat( "Y" )-4)->get();
        $top_five_total = 0;
        foreach ($top_five_earns as $top_five_earn){
            $top_five_total += $top_five_earn->many * $top_five_earn->price;
        }


        $top_six_height = Talabat::whereIn('product_id',$id_products)->whereYear('created_at',$time_years->isoFormat( "Y" )-5)->count() / $full_count * 100;
        $top_six_customers = Talabat::whereIn('product_id',$id_products)->whereYear('created_at',$time_years->isoFormat( "Y" )-5)
            ->select(DB::raw('customer_id'))
            ->groupBy('customer_id')
            ->get();
        $top_six_earns = Talabat::whereIn('product_id',$id_products)->whereYear('created_at',$time_years->isoFormat( "Y" )-5)->get();
        $top_six_total = 0;
        foreach ($top_six_earns as $top_six_earn){
            $top_six_total += $top_six_earn->many * $top_six_earn->price;
        }


        $top_sevin_height = Talabat::whereIn('product_id',$id_products)->whereYear('created_at',$time_years->isoFormat( "Y" )-6)->count() / $full_count * 100;
        $top_sevin_customers = Talabat::whereIn('product_id',$id_products)->whereYear('created_at',$time_years->isoFormat( "Y" )-6)
            ->select(DB::raw('customer_id'))
            ->groupBy('customer_id')
            ->get();
        $top_sevin_earns = Talabat::whereIn('product_id',$id_products)->whereYear('created_at',$time_years->isoFormat( "Y" )-6)->get();
        $top_sevin_total = 0;
        foreach ($top_sevin_earns as $top_sevin_earn){
            $top_sevin_total += $top_sevin_earn->many * $top_sevin_earn->price;
        }


        return [
            $time_years->isoFormat( "Y" )=>[
                'height'=>$top_one_height,
                'customer'=>$top_one_customers->count(),
                'earn'=>$top_one_total
            ],
            $time_years->isoFormat( "Y" )-1=>[
                'height'=>$top_two_height,
                'customer'=>$top_two_customers->count(),
                'earn'=>$top_two_total
            ],
            $time_years->isoFormat( "Y" )-2=>[
                'height'=>$top_three_height,
                'customer'=>$top_three_customers->count(),
                'earn'=>$top_three_total
            ],
            $time_years->isoFormat( "Y" )-3=>[
                'height'=>$top_four_height,
                'customer'=>$top_four_customers->count(),
                'earn'=>$top_four_total
            ],
            $time_years->isoFormat( "Y" )-4=>[
                'height'=>$top_five_height,
                'customer'=>$top_five_customers->count(),
                'earn'=>$top_five_total
            ],
            $time_years->isoFormat( "Y" )-5=>[
                'height'=>$top_six_height,
                'customer'=>$top_six_customers->count(),
                'earn'=>$top_six_total
            ],
            $time_years->isoFormat( "Y" )-6=>[
                'height'=>$top_sevin_height,
                'customer'=>$top_sevin_customers->count(),
                'earn'=>$top_sevin_total
            ],
        ];
    }

    public function months($user_id) {
        $id_products = Product::select('id')->where('user_id',$user_id)->get();
        $time_year = Carbon::now();
        $full_count = Talabat::whereIn('product_id',$id_products)->whereYear('created_at',$time_year->isoFormat( "Y" ))->count();

        $top_one_height = Talabat::whereIn('product_id',$id_products)->whereYear('created_at',$time_year->isoFormat( "Y" ))->whereMonth('created_at',$time_year->isoFormat( "M" ))->count() / $full_count * 100;
        $top_one_customers = Talabat::whereIn('product_id',$id_products)->whereYear('created_at',$time_year->isoFormat( "Y" ))->whereMonth('created_at',$time_year->isoFormat( "M" ))
            ->select(DB::raw('customer_id'))
            ->groupBy('customer_id')
            ->get();
        $top_one_earns = Talabat::whereIn('product_id',$id_products)->whereYear('created_at',$time_year->isoFormat( "Y" ))->whereMonth('created_at',$time_year->isoFormat( "M" ))->get();
        $top_one_total = 0;
        foreach ($top_one_earns as $top_one_earn){
            $top_one_total += $top_one_earn->many * $top_one_earn->price;
        }


        $top_two_height = Talabat::whereIn('product_id',$id_products)->whereYear('created_at',$time_year->isoFormat( "Y" ))->whereMonth('created_at',$time_year->subWeek(4)->isoFormat( "M" ))->count() / $full_count * 100;
        $top_two_customers = Talabat::whereIn('product_id',$id_products)->whereYear('created_at',$time_year->isoFormat( "Y" ))->whereMonth('created_at',$time_year->isoFormat( "M" ))
            ->select(DB::raw('customer_id'))
            ->groupBy('customer_id')
            ->get();
        $top_two_earns = Talabat::whereIn('product_id',$id_products)->whereYear('created_at',$time_year->isoFormat( "Y" ))->whereMonth('created_at',$time_year->isoFormat( "M" ))->get();
        $top_two_total = 0;
        foreach ($top_two_earns as $top_two_earn){
            $top_two_total += $top_two_earn->many * $top_two_earn->price;
        }


        $top_three_height = Talabat::whereIn('product_id',$id_products)->whereYear('created_at',$time_year->isoFormat( "Y" ))->whereMonth('created_at',$time_year->subWeek(4)->isoFormat( "M" ))->count() / $full_count * 100;
        $top_three_customers = Talabat::whereIn('product_id',$id_products)->whereYear('created_at',$time_year->isoFormat( "Y" ))->whereMonth('created_at',$time_year->isoFormat( "M" ))
            ->select(DB::raw('customer_id'))
            ->groupBy('customer_id')
            ->get();
        $top_three_earns = Talabat::whereIn('product_id',$id_products)->whereYear('created_at',$time_year->isoFormat( "Y" ))->whereMonth('created_at',$time_year->isoFormat( "M" ))->get();
        $top_three_total = 0;
        foreach ($top_three_earns as $top_three_earn){
            $top_three_total += $top_three_earn->many * $top_three_earn->price;
        }


        $top_four_height = Talabat::whereIn('product_id',$id_products)->whereYear('created_at',$time_year->isoFormat( "Y" ))->whereMonth('created_at',$time_year->subWeek(4)->isoFormat( "M" ))->count() / $full_count * 100;
        $top_four_customers = Talabat::whereIn('product_id',$id_products)->whereYear('created_at',$time_year->isoFormat( "Y" ))->whereMonth('created_at',$time_year->isoFormat( "M" ))
            ->select(DB::raw('customer_id'))
            ->groupBy('customer_id')
            ->get();
        $top_four_earns = Talabat::whereIn('product_id',$id_products)->whereYear('created_at',$time_year->isoFormat( "Y" ))->whereMonth('created_at',$time_year->isoFormat( "M" ))->get();
        $top_four_total = 0;
        foreach ($top_four_earns as $top_four_earn){
            $top_four_total += $top_four_earn->many * $top_four_earn->price;
        }


        $top_five_height = Talabat::whereIn('product_id',$id_products)->whereYear('created_at',$time_year->isoFormat( "Y" ))->whereMonth('created_at',$time_year->subWeek(4)->isoFormat( "M" ))->count() / $full_count * 100;
        $top_five_customers = Talabat::whereIn('product_id',$id_products)->whereYear('created_at',$time_year->isoFormat( "Y" ))->whereMonth('created_at',$time_year->isoFormat( "M" ))
            ->select(DB::raw('customer_id'))
            ->groupBy('customer_id')
            ->get();
        $top_five_earns = Talabat::whereIn('product_id',$id_products)->whereYear('created_at',$time_year->isoFormat( "Y" ))->whereMonth('created_at',$time_year->isoFormat( "M" ))->get();
        $top_five_total = 0;
        foreach ($top_five_earns as $top_five_earn){
            $top_five_total += $top_five_earn->many * $top_five_earn->price;
        }


        $top_six_height = Talabat::whereIn('product_id',$id_products)->whereYear('created_at',$time_year->isoFormat( "Y" ))->whereMonth('created_at',$time_year->subWeek(4)->isoFormat( "M" ))->count() / $full_count * 100;
        $top_six_customers = Talabat::whereIn('product_id',$id_products)->whereYear('created_at',$time_year->isoFormat( "Y" ))->whereMonth('created_at',$time_year->isoFormat( "M" ))
            ->select(DB::raw('customer_id'))
            ->groupBy('customer_id')
            ->get();
        $top_six_earns = Talabat::whereIn('product_id',$id_products)->whereYear('created_at',$time_year->isoFormat( "Y" ))->whereMonth('created_at',$time_year->isoFormat( "M" ))->get();
        $top_six_total = 0;
        foreach ($top_six_earns as $top_six_earn){
            $top_six_total += $top_six_earn->many * $top_six_earn->price;
        }


        $top_sevin_height = Talabat::whereIn('product_id',$id_products)->whereYear('created_at',$time_year->isoFormat( "Y" ))->whereMonth('created_at',$time_year->subWeek(4)->isoFormat( "M" ))->count() / $full_count * 100;
        $top_sevin_customers = Talabat::whereIn('product_id',$id_products)->whereYear('created_at',$time_year->isoFormat( "Y" ))->whereMonth('created_at',$time_year->isoFormat( "M" ))
            ->select(DB::raw('customer_id'))
            ->groupBy('customer_id')
            ->get();
        $top_sevin_earns = Talabat::whereIn('product_id',$id_products)->whereYear('created_at',$time_year->isoFormat( "Y" ))->whereMonth('created_at',$time_year->isoFormat( "M" ))->get();
        $top_sevin_total = 0;
        foreach ($top_sevin_earns as $top_sevin_earn){
            $top_sevin_total += $top_sevin_earn->many * $top_sevin_earn->price;
        }

        $time_years = Carbon::now();
        return [
            $time_years->isoFormat( "M" )=>[
                'height'=>$top_one_height,
                'customer'=>$top_one_customers->count(),
                'earn'=>$top_one_total
            ],
            $time_years->subWeek(4)->isoFormat( "M" )=>[
                'height'=>$top_two_height,
                'customer'=>$top_two_customers->count(),
                'earn'=>$top_two_total
            ],
            $time_years->subWeek(4)->isoFormat( "M" )=>[
                'height'=>$top_three_height,
                'customer'=>$top_three_customers->count(),
                'earn'=>$top_three_total
            ],
            $time_years->subWeek(4)->isoFormat( "M" )=>[
                'height'=>$top_four_height,
                'customer'=>$top_four_customers->count(),
                'earn'=>$top_four_total
            ],
            $time_years->subWeek(4)->isoFormat( "M" )=>[
                'height'=>$top_five_height,
                'customer'=>$top_five_customers->count(),
                'earn'=>$top_five_total
            ],
            $time_years->subWeek(4)->isoFormat( "M" )=>[
                'height'=>$top_six_height,
                'customer'=>$top_six_customers->count(),
                'earn'=>$top_six_total
            ],
            $time_years->subWeek(4)->isoFormat( "M" )=>[
                'height'=>$top_sevin_height,
                'customer'=>$top_sevin_customers->count(),
                'earn'=>$top_sevin_total
            ],
        ];
    }
}

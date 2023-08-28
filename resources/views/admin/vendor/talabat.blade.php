@extends('layouts.admin')

@section('content')
    <main>
        <div class="container-fluid disable-text-selection">


            <div class="col-lg-12 col-md-12 mb-4">
                <div class="card" style="overflow: auto">
                    <div class="card-body">
                        <table class="table">
                            <thead>
                            <tr>
                                <th scope="col" class="text-center">اسم المنتج</th>
                                <th scope="col" class="text-center">السعر</th>
                                <th scope="col" class="text-center">العدد</th>
                                <th scope="col" class="text-center">اسم المشتري</th>
                                <th scope="col" class="text-center">رقم هاتفه</th>
                                <th scope="col" class="text-center">تاريخ الشراء</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($datas as $data)
                                <tr>
                                    <td class="text-center">{{\App\Models\Product::getTitle($data->product_id)}}</td>
                                    <td class="text-center">{{$data->price}}</td>
                                    <td class="text-center">{{$data->many}}</td>
                                    <td class="text-center">{{\App\Models\Customer::getData($data->customer_id)->name}}</td>
                                    <td class="text-center">{{\App\Models\Customer::getData($data->customer_id)->phone}}</td>
                                    <td class="text-center">{{$data->created_at}}</td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </main>
@endsection

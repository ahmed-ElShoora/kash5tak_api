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
                                <th scope="col" class="text-center"> الاسم المستخدم</th>
                                <th scope="col" class="text-center">البريد الاكتروني</th>
                                <th scope="col" class="text-center">اسم المتجر</th>
                                <th scope="col" class="text-center">رقم الهاتف</th>
                                <th scope="col" class="text-center">مجموع الأرباح</th>
                                <th scope="col" class="text-center">عرض الطلبات</th>
                            </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="text-center">{{$data->name_ar}}</td>
                                    <td class="text-center">{{$data->email}}</td>
                                    <td class="text-center">{{$data->title_ar}}</td>
                                    <td class="text-center">{{$data->phone}}</td>
                                    <td class="text-center">{{$data->total}}</td>
                                    <td class="text-center"><a href="{{Route('admin.vendor.talapats',$data->id)}}" class="btn btn-sm btn-outline-success">عرض</a></td>
                                </tr>
                            </tbody>
                        </table>
                        <br><br>

<form method="post" action="{{Route('admin.vendor.info.store.rate')}}">
                                @csrf
                                <input hidden type="text" value="{{$data->id}}" name="id">
                                <div class="tooltip-label-right">
                                    <div class="error-l-100 position-relative form-group">
                                        <h5 class="">عدد نجوم التاجر</h5>
                                        <input name="num" class="form-control" value="{{$data->rate}}">
                                    </div>
                                </div>
                                <button class="btn btn-primary mt-5" type="submit">تاكيد</button>
                            </form>
                                                    <br><br>

                        <table class="table">
                            <thead>
                            <tr>
                                <th scope="col" class="text-center">الصورة</th>
                                <th scope="col" class="text-center">اسم المنتج</th>
                                <th scope="col" class="text-center">السعر</th>
                                <th scope="col" class="text-center">الوصف</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($response as $data)
                                <tr>
                                    <th scope="col" class="text-center"><img src="{{$data->image}}" style="width:40px"/></th>
                                    <td class="text-center">{{$data->title}}</td>
                                    <td class="text-center">{{$data->price}}</td>
                                    <td class="text-center">{{$data->desc}}</td>
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

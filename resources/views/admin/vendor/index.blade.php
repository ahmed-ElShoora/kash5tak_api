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
                                <th scope="col" class="text-center">الاسم</th>
                                <th scope="col" class="text-center">البريد الاكتروني</th>
                                <th scope="col" class="text-center">بيانات المستخدم</th>
                                <th scope="col" class="text-center">حذف</th>
                                <th scope="col" class="text-center">عدد الزيارات</th>
                                <th scope="col" class="text-center">الاشخاص الذي تواصلوا معه</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($users as $user)
                                <tr>
                                    <td class="text-center">{{$user->name_ar}}</td>
                                    <td class="text-center">{{$user->email}}</td>
                                    <td class="text-center"><a href="{{Route('admin.vendor.info',$user->id)}}" class="btn btn-sm btn-outline-success">عرض</a></td>
                                    <td class="text-center"><a href="{{Route('admin.vendor.delete',$user->id)}}" class="btn btn-sm btn-outline-danger">حذف</a></td>
                                    <td class="text-center">{{App\Models\Move::getMoves($user->id)}}</td>
                                    <td class="text-center"><a href="{{Route('admin.vendor.show',$user->id)}}" class="btn btn-sm btn-outline-success">عرض</a></td>
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

@extends('layouts.admin')

@section('content')
    <main>
        <div class="container-fluid disable-text-selection">
            <div class="row">
                <div class="col-12">
                    <div class="mb-2">
                        <h1>قائمة الشركات</h1>
                        <div class="top-right-button-container">
                                    <a href="{{Route('admin.create.ship')}}" class="btn btn-primary btn-lg top-right-button mr-1">انشاء شركة</a>
                        </div>
                    </div>

                    <div class="separator mb-5"></div>
                </div>
            </div>

            <div class="col-lg-12 col-md-12 mb-4">
                <div class="card" style="overflow: auto">
                    <div class="card-body">

                        <table class="table">
                            <thead>
                            <tr>
                                <th scope="col" class="text-center">الاسم</th>
                                <th scope="col" class="text-center">حذف</th>
                                <th scope="col" class="text-center">تعديل</th>
                                <th scope="col" class="text-center">عدد الزيارات</th>
                                <th scope="col" class="text-center">الزائرين</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($ships as $ship)
                                <tr>
                                    <td class="text-center">{{$ship->title_ar}}</td>
                                    <td class="text-center"><a href="{{Route('admin.ship.delete',$ship->id)}}" class="btn btn-sm btn-outline-danger">حذف</a></td>
                                    <td class="text-center"><a href="{{Route('admin.ship.edit',$ship->id)}}" class="btn btn-sm btn-outline-success">تعديل</a></td>
                                    <td class="text-center">{{\App\Models\View_Ship::getViews($ship->id)->count()}}</td>
                                    <td class="text-center"><a href="{{Route('admin.ship.show',$ship->id)}}" class="btn btn-sm btn-outline-success">عرض</a></td>
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

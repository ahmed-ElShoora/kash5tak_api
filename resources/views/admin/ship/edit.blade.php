
@extends('layouts.admin')


@section('content')
    <main>
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">


                    <h5 class="mb-4">تعديل معلومات شركة شحن</h5>


                    <div class="card mb-4">
                        <div class="card-body">
                            <form method="post" action="{{Route('admin.ship.update')}}" enctype="multipart/form-data">
                                @csrf
                                <input hidden name="id" type="text" value="{{$id}}">
                                <div class="tooltip-label-right">
                                    <div class="error-l-100 position-relative form-group">
                                        <label>لعنوان بالعربية</label>
                                        <input name="title_ar" value="{{$ship->title_ar}}" required="" id="Name" type="text" class="form-control">
                                        <div class="invalid-tooltip">Name</div>
                                    </div>
                                </div>

                                <div class="tooltip-label-right">
                                    <div class="error-l-100 position-relative form-group">
                                        <label>العنوان بالانجليزية</label>
                                        <input name="title_en" value="{{$ship->title_en}}" required="" id="Name" type="text" class="form-control">

                                        <div class="invalid-tooltip">Name</div>
                                    </div>
                                </div>
                                <div class="tooltip-label-right">
                                    <div class="error-l-100 position-relative form-group">
                                        <label>الوصف بالعربية</label>
                                        <input name="desc_ar" value="{{$ship->desc_ar}}" required="" id="Name" type="text" class="form-control">

                                        <div class="invalid-tooltip">Name</div>
                                    </div>
                                </div>
                                <div class="tooltip-label-right">
                                    <div class="error-l-100 position-relative form-group">
                                        <label>الوصف بالانجليزية</label>
                                        <input name="desc_en" value="{{$ship->desc_en}}" required="" id="Name" type="text" class="form-control">

                                        <div class="invalid-tooltip">Name</div>
                                    </div>
                                </div>
                                <div class="tooltip-label-right">
                                    <div class="error-l-100 position-relative form-group">
                                        <label>الرابط</label>
                                        <input name="link" value="{{$ship->link}}" required="" id="Name" type="url" class="form-control">

                                        <div class="invalid-tooltip">Name</div>
                                    </div>
                                </div>
                                <div class="tooltip-label-right">
                                    <div class="error-l-100 position-relative form-group">
                                        <label>رقم الهاتف</label>
                                        <input name="phone" value="{{$ship->phone}}" required="" id="Name" type="text" class="form-control">

                                        <div class="invalid-tooltip">Name</div>
                                    </div>
                                </div>
                                <div class="tooltip-label-right">
                                    <div class="error-l-100 position-relative form-group">
                                        <h5 class="">الصوره </h5>
                                        <input hidden name="old_logo" type="text" value="{{$ship->logo}}">
                                        <input type="file" id="image_phone" name="logo" accept=".jpg,.jpeg,.png,.gif,.bmp,.tiff">
                                    </div>
                                </div>
                                <button class="btn btn-primary mt-5" type="submit">تاكيد</button>
                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
@endsection

@extends('layouts.admin')

@section('content')
    <main>
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">

                    <h5 class="mb-4">تعديل الروابط</h5>

                    <div class="card mb-4">
                        <div class="card-body">
                                <form method="post" action="{{Route('admin.images.store')}}" enctype="multipart/form-data">
                                    @csrf
                                    <input name="splash_screen_old" type="text" value="{{$data->splash_screen}}" hidden >
                                    <input name="male_screen_old" type="text" value="{{$data->male_screen}}" hidden >
                                    <input name="female_screen_old" type="text" value="{{$data->female_screen}}" hidden >
                                    <input name="baby_screen_old" type="text" value="{{$data->baby_screen}}" hidden >
                                    <div class="tooltip-label-right">
                                        <div class="error-l-100 position-relative form-group">
                                            <h5 class="">الصوره الرئيسية</h5>
                                            <input type="file" id="image_phone" name="splash" accept=".jpg,.jpeg,.png,.gif,.bmp,.tiff">
                                        </div>
                                    </div>
                                    <div class="tooltip-label-right">
                                        <div class="error-l-100 position-relative form-group">
                                            <h5 class="">صورة قسم الرجال</h5>
                                            <input type="file" id="image_phone" name="male" accept=".jpg,.jpeg,.png,.gif,.bmp,.tiff">
                                        </div>
                                    </div>
                                    <div class="tooltip-label-right">
                                        <div class="error-l-100 position-relative form-group">
                                            <h5 class="">الصورة قسم النساء</h5>
                                            <input type="file" id="image_phone" name="female" accept=".jpg,.jpeg,.png,.gif,.bmp,.tiff">
                                        </div>
                                    </div>
                                    <div class="tooltip-label-right">
                                        <div class="error-l-100 position-relative form-group">
                                            <h5 class="">الصورة قسم الاطفال</h5>
                                            <input type="file" id="image_phone" name="baby" accept=".jpg,.jpeg,.png,.gif,.bmp,.tiff">
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

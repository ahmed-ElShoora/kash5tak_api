
@extends('layouts.admin')


@section('content')
    <main>
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">


                    <h5 class="mb-4">تحديث سياسة الخصوصية</h5>


                    <div class="card mb-4">
                        <div class="card-body">
                            <form method="post" action="{{Route('privacy.policy.store')}}" enctype="multipart/form-data">
                                @csrf
                                <input type='text' name="option" value='1' hidden>
                                <div class="tooltip-label-right">
                                    <div class="error-l-100 position-relative form-group">
                                        <h5 class="">النص بالعربية</h5>
                                        <textarea name="desc_ar" class="form-control">{{$data->desc_ar}}</textarea>
                                    </div>
                                </div>
                                <div class="tooltip-label-right">
                                    <div class="error-l-100 position-relative form-group">
                                        <h5 class="">النص بالانجليزية</h5>
                                        <textarea name="desc_en" class="form-control">{{$data->desc_en}}</textarea>
                                    </div>
                                </div>
                                <button class="btn btn-primary mt-5" type="submit">تاكيد</button>
                            </form>
<br><br>

<form method="post" action="{{Route('privacy.policy.store')}}">
                                @csrf
                                <div class="tooltip-label-right">
                                    <div class="error-l-100 position-relative form-group">
                                        <h5 class="">قيمة صاحب التطبيق</h5>
                                        <input name="num" class="form-control" value="{{$data_num->value}}">
                                    </div>
                                </div>
                                <div class="tooltip-label-right">
                                    <div class="error-l-100 position-relative form-group">
                                        <label>حالة قيمة صاحب التطبيق</label>
                                        <select name="earn_vil" required class="form-control">
                                          <option value="true" @if($data_num_vil->value == 'true')
                                          selected
                                          @endif>تشغيل</option>
                                          <option value="false" @if($data_num_vil->value == 'false')
                                          selected
                                          @endif>ايقاف</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="tooltip-label-right">
                                    <div class="error-l-100 position-relative form-group">
                                        <h5 class="">قيمة الشحن فالتطبيق</h5>
                                        <input name="shoping" class="form-control" value="{{$data_shoping->value}}">
                                    </div>
                                </div>
                                <div class="tooltip-label-right">
                                    <div class="error-l-100 position-relative form-group">
                                        <label>حالة الشحن فالتطبيق</label>
                                        <select name="shoping_vil" required class="form-control">
                                          <option value="true" @if($data_shoping_vil->value == 'true')
                                          selected
                                          @endif>تشغيل</option>
                                          <option value="false" @if($data_shoping_vil->value == 'false')
                                          selected
                                          @endif>ايقاف</option>
                                        </select>
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

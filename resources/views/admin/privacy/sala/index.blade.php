
@extends('layouts.admin')


@section('content')
    <main>
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">


                    <h5 class="mb-4">تحديث سياسة الخصوصية</h5>


                    <div class="card mb-4">
                        <div class="card-body">
                            <form method="post" action="{{Route('privacy.policy.sala.store')}}" enctype="multipart/form-data">
                                @csrf
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

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
@endsection

@extends('layouts.admin')


@section('content')
    <main>
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">


                    <h5 class="mb-4">انشاء قسم جديد</h5>


                    <div class="card mb-4">
                        <div class="card-body">
                            <form method="post" action="{{Route('admin.category.store')}}" enctype="multipart/form-data">
                                @csrf
                                <div class="tooltip-label-right">
                                    <div class="error-l-100 position-relative form-group">
                                        <label>لعنوان بالعربية</label>
                                        <input name="title_ar" required="" id="Name" type="text" class="form-control">
                                        @error('title_ar')
                                        <div class="alert alert-danger" role="alert" style="text-align: center">
                                            {{ $message }}
                                        </div>
                                        @enderror
                                        <div class="invalid-tooltip">Name</div>
                                    </div>
                                </div>

                                <div class="tooltip-label-right">
                                    <div class="error-l-100 position-relative form-group">
                                        <label>العنوان بالانجليزية</label>
                                        <input name="title_en" required="" id="Name" type="text" class="form-control">
                                        @error('title_en')
                                        <div class="alert alert-danger" role="alert" style="text-align: center">
                                            {{ $message }}
                                        </div>
                                        @enderror
                                        <div class="invalid-tooltip">Name</div>
                                    </div>
                                </div>
                                <div class="tooltip-label-right">
                                    <div class="error-l-100 position-relative form-group">
                                        <h5 class="">الصوره </h5>
                                        <input type="file" id="image_phone" name="logo" required accept=".jpg,.jpeg,.png,.gif,.bmp,.tiff">
                                    </div>
                                </div>
                                <div class="tooltip-label-right">
                                    <div class="error-l-100 position-relative form-group">
                                        <label>القسم الرئيسي</label>
                                        <select name="type" required class="form-control">
                                          <option value="male">Male</option>
                                          <option value="female">Female</option>
                                          <option value="baby">Baby</option>
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

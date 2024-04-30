
@extends('admin.master')

@section('title')
    Visitor Details
@endsection

@section('content')

    <section>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header fs-3 fw-bold">Visitor Details </div>
                        <p class="text-success text-center">{{session('message')}}</p>
                        <div class="card-body">
                                <table class="table table-bordered">
                                    <tr>
                                        <th> Visit Id </th>
                                        <td>{{$visitor->id}}</td>
                                    </tr>
                                    <tr>
                                        <th> Visitor IP Address </th>
                                        <td>
                                            {{$visitor->ip_address}}
                                        </td>
                                    </tr>
                                    <tr>
                                        <th> Visit Url </th>
                                        <td>
                                            {{$visitor->url}}
                                        </td>
                                    </tr>
                                    <tr>
                                        <th> Visit Date </th>
                                        <td>{{ date('Y-m-d', strtotime($visitor->start_time)) }}</td>
                                    </tr>
                                    <tr>
                                        <th> Visit Time </th>
                                        <td>{{ date('h:ia', strtotime($visitor->start_time)) }}</td>
                                    </tr>
                                    {{--                                <tr>--}}
                                    {{--                                    <th> Visitor Status</th>--}}
                                    {{--                                    <td>--}}
                                    {{--                                        @if($visitor->home_status == 'active')--}}
                                    {{--                                            <a href="{{ route('change.status.home.blog', $blog->id) }}" class="btn btn-success">Active</a>--}}
                                    {{--                                        @else($blog->home_status == 'inActive')--}}
                                    {{--                                            <a href="{{ route('change.status.home.blog', $blog->id) }}" class="btn btn-danger">InActive</a>--}}
                                    {{--                                        @endif--}}
                                    {{--                                    </td>--}}
                                    {{--                                </tr>--}}
                                    <tr>
                                        <th>Action</th>
                                        <td>
                                            <div class="d-flex">
                                                <form action="{{ route('activity-log.destroy', $visitor->id )}}" method="post" onclick="return confirm('Are you sure to delete this activity log?')">
                                                    @csrf
                                                    @method('DELETE')
                                                    <button class="text-danger border-0 mx-2" type="submit"><i class="fa fa-trash"></i></button>
                                                </form>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.0/jquery.easing.js" type="text/javascript"></script>

@endsection

@extends('admin.master')
@section('title')
    Visitor Activity Log
@endsection

@section('content')

    <section class="py-5">

        <!--breadcrumb-->
        <div class="page-breadcrumb d-none d-sm-flex align-items-center mb-3">
            <div class="breadcrumb-title pe-3">Visitor Activity Log</div>
            <div class="ps-3">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb mb-0 p-0">
                        <li class="breadcrumb-item"><a href="javascript:;"><i class="bx bx-home-alt"></i></a>
                        </li>
                        <li class="breadcrumb-item active" aria-current="page">Manage Visitor Activity Log</li>
                    </ol>
                </nav>
            </div>
        </div>
        <!--end breadcrumb-->

        {{--        message--}}
        <p class="text-center text-muted">{{session('message')}}</p>

        <hr/>
        <div class="card">
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered text-nowrap border-bottom w-100" id="file-datatable" style="width:100%">
                        <thead>
                        <tr>
                            <th> SL </th>
                            <th> Visitor IP </th>
                            <th> Visitor Url </th>
                            <th> Visit Start Date </th>
                            <th> Visit Start Time </th>
                            <th> Actions </th>
                        </tr>
                        </thead>
                        <tbody>
                        @foreach($visitors as $visitor)
                            <tr>
                                <td>{{$loop->iteration}}</td>
                                <td>{{$visitor->ip_address}}</td>
                                <td>{{$visitor->url}}</td>
                                <td>{{ date('Y-m-d', strtotime($visitor->start_time)) }}</td>
                                <td>{{ date('h:ia', strtotime($visitor->start_time)) }}</td>
                                <td>
                                    <div class="table-actions d-flex align-items-center gap-3 fs-6">
                                        <a href="{{route('activity-log.show', $visitor->ip_address)}}" class="text-primary mx-1" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Views"><i class="fa fa-eye"></i></a>
                                        <form action="{{ route('activity-log.destroy', $visitor->id )}}" method="post" onclick="return confirm('Are you sure to delete this activity log?')">
                                            @csrf
                                            @method('DELETE')
                                            <button class="text-danger border-0" type="submit"><i class="fa fa-trash"></i></button>
                                        </form>
                                    </div>
                                </td>
                            </tr>
                        @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

    </section>

@endsection




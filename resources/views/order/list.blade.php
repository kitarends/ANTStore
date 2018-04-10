
@extends('home.layout')
@section('content')

    <section class="content ecommerce-page">
        <div class="block-header">
            <div class="row">
                <div class="col-lg-7 col-md-6 col-sm-12">
                    <h2>Product List
                        <small class="text-muted">Incart products</small>
                    </h2>
                </div>
                <div class="col-lg-5 col-md-6 col-sm-12">
                    <ul class="breadcrumb float-md-right">
                        <li class="breadcrumb-item"><a href="/"><i class="zmdi zmdi-home"></i> NATStore</a>
                        </li>
                        <li class="breadcrumb-item active">Cart</li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="container-fluid">
            <div class="row clearfix">
                <div class="col-lg-12">
                    <div class="card product_item_list">
                        <div class="body table-responsive">
                            <table class="table table-hover m-b-0 footable footable-1 footable-paging footable-paging-center breakpoint-lg"
                                   style="">
                                <thead>
                                <tr class="footable-header">
                                    <th class="footable-sortable footable-first-visible" style="display: table-cell;">
                                        ID<span class="fooicon fooicon-sort"></span></th>
                                    <th class="footable-sortable" style="display: table-cell;">Image<span
                                                class="fooicon fooicon-sort"></span></th>
                                    <th class="footable-sortable" style="display: table-cell;">Product Name<span
                                                class="fooicon fooicon-sort"></span></th>
                                    <th class="footable-sortable" style="display: table-cell;">Price<span
                                                class="fooicon fooicon-sort"></span></th>
                                    <th class="footable-sortable" style="display: table-cell;">Quantity<span
                                                class="fooicon fooicon-sort"></span></th>
                                </tr>
                                </thead>
                                <tbody>
                                @foreach($items as $item)
                                    @include('order.product_row',['item'=>$item])
                                @endforeach
                                </tbody>
                                <tfoot></tfoot>
                            </table>
                        </div>
                        <div class="content text-center">
                            <h3>Total: {{$total}}$</h3>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
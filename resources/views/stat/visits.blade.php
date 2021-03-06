@extends('layouts.default')

@section('content')
    <script src="/bower_components/chart.js/dist/Chart.min.js"></script>
    <script src="/bower_components/moment/min/moment.min.js"></script>
    <script src="/bower_components/semantic-ui-daterangepicker-master/daterangepicker.js"></script>
    <link rel="stylesheet" href="/bower_components/semantic-ui-daterangepicker-master/daterangepicker.css"/>

    <div class="ui container">
        <h3 class="ui huge header">Statistics</h3>
        <div class="ui one column grid">
            <div class="column">
                <div class="ui right floated buttons">
                    <button id="reportrange" class="ui  icon labeled  button">
                        <i class="calendar icon" style="margin:0"></i>
                        <span>{{old('start')}} - {{old('end')}}</span>
                    </button>
                </div>
            </div>
        </div>

        <h4 class="ui header">Top viewed products</h4>
        <table class="ui celled table">
            <thead>
            <tr>
                <th>Product</th>
                <th>Viewed</th>
            </tr>
            </thead>
            <tbody>
            @foreach($top_views as $item)
                @if($item->product!=null)
                    <tr>
                        <td>
                            <a href="/products/{{$item->product_id}}">{{$item->product->name}}</a>
                        </td>
                        <td>
                            {{$item->views}}
                        </td>
                    </tr>
                @endif
            @endforeach
            </tbody>
        </table>

        <h4 class="ui header">Top sold products</h4>
        <table class="ui celled table">
            <thead>
            <tr>
                <th>Product</th>
                <th>Sold</th>
            </tr>
            </thead>
            <tbody>
            @foreach($top_solds as $item)
                @if($item->product!=null)

                    <tr>
                        <td>
                            <a href="/products/{{$item->product_id}}">{{$item->product->name}}</a>
                        </td>
                        <td>
                            {{$item->solds}}
                        </td>
                    </tr>
                @endif
            @endforeach
            </tbody>
        </table>
    </div>

    <script>
        var cb = function (start, end, label) {
            console.log(start.toISOString(), end.toISOString(), label);
            $("#start_time").val(start.format('MMMM D, YYYY'));
            $("#end_time").val(end.format('MMMM D, YYYY'));
            $('#reportrange span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
            $('#time_form').submit();
        };

        var optionSet = {
            startDate: moment().subtract(7, 'days'),
            endDate: moment(),
            opens: 'left',
            ranges: {
                'Today': [moment(), moment()],
                'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                'Last 7 Days': [moment().subtract(6, 'days'), moment()],
                'Last 30 Days': [moment().subtract(29, 'days'), moment()],
                'This Month': [moment().startOf('month'), moment().endOf('month')],
                'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
            }
        };

        $(function () {
            $('#reportrange').daterangepicker(optionSet, cb);
        });

        //visits chart
        visits_chart_canvas = $('#visits_chart').get(0).getContext('2d');
        new Chart(visits_chart_canvas, {
            type: 'line',
            data: {
                labels: {!! $visits->pluck('date') !!},
                datasets: [{
                    label: '# of Visits',
                    data: {!! $visits->pluck('total') !!},
                    borderColor: '#3c8dbc',
                    borderWidth: 2
                }]
            }
        });
    </script>
@endsection
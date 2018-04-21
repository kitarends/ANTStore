@extends('layouts.default')

@section('content')
    <script src="/bower_components/chart.js/dist/Chart.min.js"></script>
    <script src="/bower_components/moment/min/moment.min.js"></script>
    <script src="/bower_components/semantic-ui-daterangepicker-master/daterangepicker.js"></script>
    <link rel="stylesheet" href="/bower_components/semantic-ui-daterangepicker-master/daterangepicker.css"/>

    <div class="ui container">
        <h3 class="ui huge header">Statistics</h3>
        <button id="reportrange" class="ui right floated icon labeled basic button">
            <i class="calendar icon" style="margin:0"></i>
            <span>Select time</span>
        </button>
        <canvas id="visits_chart"></canvas>
    </div>

    <script>
        var cb = function (start, end, label) {
            console.log(start.toISOString(), end.toISOString(), label);
            $('#reportrange span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
        };

        var optionSet2 = {
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
            $('#reportrange').daterangepicker(optionSet2, cb);
        });
        visits_chart_canvas = $('#visits_chart').get(0).getContext('2d');
        //        visits_chart = new Chart();
        var myChart = new Chart(visits_chart_canvas, {
            type: 'line',
            data: {
                labels: {!! $visits->pluck('date') !!},
                datasets: [{
                    label: '# of Votes',
                    data: {!! $visits->pluck('total') !!},
                    borderColor: '#3c8dbc',
//                    backgroundColor: 'white',
                    borderWidth: 2
                }]
            }
        });
    </script>
@endsection
@extends('layouts.admin')

@section('content')
       
@endsection


@section('admin_scripts')

<!-- chart chartist js -->
    <script src="{{ asset('/assets/vendor/charts/chartist-bundle/chartist.min.js') }}"></script>
    <script src="{{ asset('/assets/vendor/charts/chartist-bundle/Chartistjs.js') }}"></script>
    <script src="{{ asset('/assets/vendor/charts/chartist-bundle/chartist-plugin-threshold.js') }}"></script>
    <!-- chart C3 js -->
    <script src="{{ asset('/assets/vendor/charts/c3charts/c3.min.js') }}"></script>
    <script src="{{ asset('/assets/vendor/charts/c3charts/d3-5.4.0.min.js') }}"></script>
    <!-- chartjs js -->
    <script src="{{ asset('/assets/vendor/charts/charts-bundle/Chart.bundle.js') }}"></script>
    <script src="{{ asset('/assets/vendor/charts/charts-bundle/chartjs.js') }}"></script>
    <!-- sparkline js -->
    <script src="{{ asset('/assets/vendor/charts/sparkline/jquery.sparkline.js') }}"></script>
    <!-- dashboard finance js -->
    <script src="{{ asset('/assets/libs/js/dashboard-finance.js') }}"></script>
    <!-- main js -->
    <script src="{{ asset('/assets/libs/js/main-js.js') }}"></script>
    <!-- gauge js -->
    <script src="{{ asset('/assets/vendor/gauge/gauge.min.js') }}"></script>
    <!-- morris js -->
    <script src="{{ asset('/assets/vendor/charts/morris-bundle/raphael.min.js') }}"></script>
    <script src="{{ asset('/assets/vendor/charts/morris-bundle/morris.js') }}"></script>
    <script src="{{ asset('/assets/vendor/charts/morris-bundle/morrisjs.html') }}"></script>
    <!-- daterangepicker js -->
    <script src="http://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
    <script src="http://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>

@endsection()
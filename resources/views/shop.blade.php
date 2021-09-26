@extends('layouts.app')

@section('content')
<div class="jumbotron bg-style jumbotron-fluid" style="background-image: url('{{ asset('images/banner.jpg') }}');  ">
    <div class="container text-center">
        <h1 class="display-4">{{ $label }}</h1>
    </div>
</div>
<div class="container" >
    <div class="row" >
        <div class="col-3">
            <form>
                
            <h4> Price</h4>
            <div id="slider-range"></div>
            <span id="amount"></span>
            <input type="hidden" name="max" value="{{@$selected_max}}" id="amount1">
            <input type="hidden" name="min" {{@$selected_min}} id="amount2">
            <h4 class="mt-2"> Categories</h4>
            <ul>
                @foreach($categories as $category)
                @php($checked = false)
                @if(@$search)
                @php($checked = (in_array($category->id, $searched_categories)))
                @else
                @php($checked = true)
                @endif
                <li>
                    <label>
                        <input type="checkbox" name="categories[]" value="{{$category->id}}" @if(@$checked) checked="" @endif> {{$category->name}}
                    </label>
                </li>
                @endforeach
            </ul>
            <h4> Brands</h4>
            <ul>
                @foreach($brands as $brand)
                @php($checked = false)
                @if(@$search)
                @php($checked = (in_array($brand->id, $searched_brands)))
                @else
                @php($checked = true)
                @endif
                <li>
                    <label>
                        <input type="checkbox" name="brands[]" value="{{$brand->id}}" @if(@$checked) checked="" @endif> {{$brand->name}}
                    </label>
                </li>
                @endforeach
            </ul>
            <div>
                <button type="submit" name="search" value="1" class="btn">Search</button>
            </div>
            </form>

        </div>
        <div class="col-9">
            <div class="row">
                <div class="col-12">{{@$count}} Results</div>
                @foreach($list['data'] as $row)

                <div class="col-4 hover-pointer" onclick="window.location.href = '{{ url('details/'.$row['id']) }}';">
                    <div style="height: 200px; overflow: hidden;">
                        <img src="{{ $row['image'] }}" class="img-fluid" style="min-height: 200px;">
                    </div>
                    <h4>{{ $row['name'] }}</h4>
                    <div class="rating">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star-half-o"></i>
                        <i class="fa fa-star-o"></i>
                    </div>
                    <p>RS:{{ $row['price'] }}</p>
                </div>
                @endforeach

            </div>
            {{ $list['pagination'] }}
        </div>
    </div>

</div>
@endsection
@section('scripts')
<script type="text/javascript">
    $(document).ready(function(){
        $( "#slider-range" ).slider({
            range: true,
            min: {{$min}},
            max: {{$max}},
            values: [ {{$selected_min}}, {{$selected_max}} ],
            slide: function( event, ui ) {
                $( "#amount" ).html( "Rs" + ui.values[ 0 ] + " - Rs" + ui.values[ 1 ] );
                $( "#amount1" ).val(ui.values[ 0 ]);
                $( "#amount1" ).html(ui.values[ 0 ]);
                $( "#amount2" ).val(ui.values[ 1 ]);
            }
        });
        $( "#amount" ).html( "Rs. " + $( "#slider-range" ).slider( "values", 0 ) +
         " - Rs" + $( "#slider-range" ).slider( "values", 1 ) );

    })
</script>
@endsection

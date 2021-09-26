@extends('layouts.app')

@section('content')
<div class="jumbotron bg-style jumbotron-fluid" style="background-image: url('{{ asset('images/banner.jpg') }}');  ">
    <div class="container text-center">
        <h1 class="display-4">{{ $row['name'] }}</h1>
    </div>
</div>
<div class="container">
    <div class="row">
        <div class="col-6">
            <img src="{{ $row['image'] }}" class="img-fluid">
        </div>
        <div class="col-6">
            <p><a href="{{url('/')}}"> Home</a></p>
            <h1>{{ $row['name'] }}</h1>
            <h4>RS: {{ $row['price'] }}</h4>
            <small>
                <h6><b>Brand: </b><a href="{{ url('shop?brands%5B%5D='.$row['brand_id'].'&search=1') }}">{{$row['brand']['name']}}</a></h6>
                <h6><b>Category: </b><a href="{{ url('shop?categories%5B%5D='.$row['cat_id'].'&search=1') }}">{{$row['category']['name']}}</a></h6>
            </small>
            <form action="{{ url('add_to_cart') }}" method="POST">
                @csrf
                <input type="hidden" name="product_id" value="{{ $row['id'] }}">
                <input type="number" name="quantity" value="1"><br><br>
                @if (!Auth::check())
                <a href="{{ route('login') }}" class="btn">Login</a>
                @else
                <button type="submit" name="add_to_cart" value="true" class="btn">Add to Cart</button>
                <button type="submit" name="buy_now" value="true" class="btn">Buy Now</button>
                @endif
            </form>
        </div>
        <div class="col-12 mb-5 pb-5">
            <h3>Product Details</h3>
            {{ $row['description'] }}
        </div>
    </div>
</div>
@endsection

@extends('layouts.app')

@section('content')
<!-- add slidshow -->
<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner" >
        <div class="carousel-item active">
            <img  src="{{ asset('images/slide1.jpeg') }}" alt="First slide" style="height: 500px; width:100%; object-fit: cover;">  
        </div>
        <div class="carousel-item">
            <img  src="{{ asset('images/slide2.jpg') }}" alt="second slide" style="height: 500px; width:100%; object-fit: cover;">
        </div>
        <div class="carousel-item">
            <img  src="{{ asset('images/slide3.jpg') }}" alt="third slide" style="height: 500px; width:100%; object-fit: cover;">
        </div>
        <div class="carousel-item" >
            <img  src="{{ asset('images/slide4.jpeg') }}" alt="Fourth slide" style="height: 500px; width:100%; object-fit: cover;">
        </div>
    </div>
    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>
<!-- slideshow end -->
<!-- featured category -->
<div class="categories">
    <div class="container">
        <div class="row">
            <div class="col-3">
                <div>
                    <img  src="{{ asset('images/bride1.jpg') }}" alt="" style="height: 400px; width:100%; object-fit: cover;">
                </div>
            </div>
            <div class="col-3">
                <div>
                    <img  src="{{ asset('images/Groom1.jpg') }}" alt="" style="height: 400px; width:100%; object-fit: cover;">
                </div>
            </div>
            <div class="col-3">
                <div>
                    <img  src="{{ asset('images/partywear.jpg') }}" alt="" style="height: 400px; width:100%; object-fit: cover;">
                </div>
            </div>
            <div class="col-3">
                <div>
                    <img  src="{{ asset('images/kids.jpg') }}" alt="" style="height: 400px; width:100%; object-fit: cover;">
                </div>
            </div>
        </div>
    </div>
</div>

<!-- featured products -->
<div class="container">
    <h1 class="title my-5 pt-5"> Featured Products</h1>
    <div class="row mt-5">
        @foreach($featured as $row)
        
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
    <!-- featured products end -->
    <!-- latest products -->
    <h1 class="title mt-5 pt-5"> Latest Products</h1>
    <div class="row">
        @foreach($latest as $row)
        
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
    <!-- latest products end -->
    <!-- offer -->
</div>
<!-- offer -->
<div>
    <div class="offer container-fluid">
        <div class="row no-gutter">
            <div class="col-6"><img  src="{{ asset('images/19.jpg') }}" class="offer-img" style="width:100%"></div>
            <div class="col-6">
                <p> <b>Exclusively Available on TheWedRobe </b></p>
                <h1>Heavy Embroidered Royal Blue Chiffon PARTY Dress</h1>
                <small>
                    Heavy Embroidered Royal Blue Chiffon Party Dress Price in Pakistan (Code: M011611) offer by
                    TheWedRobe are just Rs.20000/- instead of Rs.25000/-. You can also find the price for other
                    related products like Womens Clothing, Womens Dresses, Chiffon Suits, Lehenga Dresses, Blue
                    Dress in Pakistan at TheWedRobe.com!
                </small><br><br>
                <a href="{{ url('details/'.$featured[0]['id']) }}" class="btn"> <b>Buy Now</b> &#8594;</a>
            </div>
        </div>
    </div>
</div>
<!-- testimonial -->
<div class="testimonial">
    <div class="container">
        <div class="row">
            <div class="col-3 text-center">
                <i class="fa fa-quote-left"></i>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laudantium iste modi ut facilis
                    voluptatum est minima quos consectetur, eos qui.</p>
                    <div class="rating">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                    </div>
                    <img  src="{{ asset('images/20.jpg') }}" class="img-fluid rounded-circle" style="height: 100px; width: 100px; object-fit: cover;">
                    <h5>Ayesha XureXhi</h5>
                </div>
                <div class="col-3 text-center">
                    <i class="fa fa-quote-left"></i>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laudantium iste modi ut facilis
                        voluptatum est minima quos consectetur, eos qui.</p>
                        <div class="rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star-o"></i>
                        </div>
                        <img  src="{{ asset('images/21.jpg') }}" class="img-fluid rounded-circle" style="height: 100px; width: 100px; object-fit: cover;">
                        <h5>Sidrah</h5>
                    </div>
                    <div class="col-3 text-center" >
                        <i class="fa fa-quote-left"></i>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laudantium iste modi ut facilis
                            voluptatum est minima quos consectetur, eos qui.</p>
                            <div class="rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star-o"></i>
                            </div>
                            <img  src="{{ asset('images/23.jpg') }}" class="img-fluid rounded-circle" style="height: 100px; width: 100px; object-fit: cover;">
                            <h5>Sonia Raja</h5>
                        </div>
                        <div class="col-3 text-center">
                            <i class="fa fa-quote-left"></i>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laudantium iste modi ut facilis
                                voluptatum est minima quos consectetur, eos qui.</p>
                                <div class="rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star-o"></i>
                                </div>
                                <img  src="{{ asset('images/22.jpg') }}" class="img-fluid rounded-circle" style="height: 100px; width: 100px; object-fit: cover;">
                                <h5>Fatima Rehan</h5>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- brands -->
                <div class="brands">
                    <div class="container">
                        <div class="row">
                            <div class="col-2">
                                <img class="img-fluid" src= "{{ asset('images/kashees-1.png') }}">
                            </div>
                            <div class="col-2">
                                <img class="img-fluid" src="{{ asset('images/mb.png') }}">
                            </div>
                            <div class="col-2">
                                <img class="img-fluid" src="{{ asset('images/hsy2.png') }}">
                            </div>
                            <div class="col-2">
                                <img class="img-fluid" src="{{ asset('images/deepk.png') }}">
                            </div>
                            <div class="col-2">
                                <img class="img-fluid" src="{{ asset('images/nabeel.png') }}">
                            </div>
                            <div class="col-2">
                                <img class="img-fluid" src="{{ asset('images/nomi.png') }}">
                            </div>
                        </div>
                    </div>
                </div>
                @endsection
                
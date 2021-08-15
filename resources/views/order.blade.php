@extends('layouts.app')

@section('content')
<div class="jumbotron jumbotron-fluid" style="background-image: url('images/sd.jpg');">
    <div class="container text-center">
        <h1 class="display-4">ORDERS</h1>
    </div>
</div>

<div class="px-4 px-lg-0">
  <div class="pb-5">
    <div class="container">
      <div class="row">
        <div class="col-lg-12 p-5 bg-white rounded shadow-sm mb-5">

          <!-- Shopping cart table -->
          <div class="table-responsive">
            <table class="table">
              <thead>
                <tr>
                  <th scope="col" class="border-0 bg-light">
                    <div class="p-2 px-3 text-uppercase">Order ID</div>
                  </th>
                  <th scope="col" class="border-0 bg-light">
                    <div class="py-2 text-uppercase">Total Price</div>
                  </th>
                  <th scope="col" class="border-0 bg-light">
                    <div class="py-2 text-uppercase">Date</div>
                  </th>
                </tr>
              </thead>
              <tbody>
                  @php($sum = 0)
                  @foreach ( $list as $row ) 
                <tr>
                  <th scope="row" class="border-0">
                    <div class="p-2">
                      <div class="ml-3 d-inline-block align-middle">
                        <h5 class="mb-0"> <a href="#" class="text-dark d-inline-block align-middle">{{ @$row['id'] }}</a></h5>
                      </div>
                    </div>
                  </th>
                  <td class="border-0 align-middle"><strong>RS: {{ @$row['total_price'] }}</strong></td>
                  <td class="border-0 align-middle"><strong>{{ @$row['created_at'] }}</strong></td>
                </tr>
                @endforeach
                
              </tbody>
            </table>
          </div>
          <!-- End -->
        </div>
      </div>

    </div>
  </div>
</div>
@endsection

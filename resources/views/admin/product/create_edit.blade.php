<div class="modal-content">
    <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">
            {{@$page_title}}
        </h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">
                ×
            </span>
        </button>
    </div>
    <form action="{{$action}}" method="post" class="make_ajax" enctype="multipart/form-data"  >

        <div class="modal-body">
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="name" class="control-label">name</label>
                        <input type='text' name="name" id="name" class="form-control" required=""  value="{{@$row['name']}}" />
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="price" class="control-label">price</label>
                        <input type='text' name="price" id="price" class="form-control" required=""  value="{{@$row['price']}}" />
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="image" class="control-label">image</label>
                        <input type='file' name="image" id="image" class="form-control" required="" />
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="brand_id" class="control-label">brand_id</label>
                        <select name="brand_id" id="brand_id" class="form-control">
                            @foreach($brands as $brand)
                                <option @if(@$row['brand_id'] == $brand['id'] ) selected @endif value="{{$brand['id']}}">
                                 {{$brand['name']}}
                                </option>
                            @endforeach
                        </select>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="cat_id" class="control-label">cat_id</label>
                        <select name="cat_id" id="cat_id" class="form-control">
                            @foreach($categories as $cat)
                                <option @if(@$row['cat_id'] == $cat['id'] ) selected @endif value="{{$cat['id']}}">
                                 {{$cat['name']}}
                                </option>
                            @endforeach
                        </select>
                        
                    </div>
                </div>

                
                <div class="col-md-12">
                    <div class="form-group">
                        <label for="description" class="control-label"> description</label>
                        <textarea name="description" id="description" class="form-control" required="">{{@$row['description']}}</textarea>
                    </div>
                </div>
            </div>
        </div>
        <div class="modal-footer">
            <button type="submit" class="btn btn-info m-btn m-btn--icon" id="add_oh_period"><span><i class="la la-check"></i><span>{{ @$button_text }}</span></span></button>
            <button type="button" class="btn btn-secondary m-btn m-btn--icon" data-dismiss="modal"><span>Close</span></button>
        </div>
    </form>
</div> 
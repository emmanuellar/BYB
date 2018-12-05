@extends('layouts.dashboard.masters')
@section('content')
<div class="content-wrapper">
          <div>
              <div class="col-12 grid-margin">
                  <div class="card">
                    <div class="card-body">
                      <h2 class="card-title text-center">Schedule a training session</h2>

                      @foreach($errors->all() as $error)
                      <div class="alert alert-danger">{{$error}}</div>
                      
                      @endforeach
                      <form class="form-sample" method="post">
                        @csrf     
                        <p class="card-description text-center">
                            Please note that you are to fill this form a minimum of 7 days before your proposed date
                        </p>
                        <input type="hidden" name="user_id" value="{{$user->id}}">
                        <div class="container-fluid books-cont">
                          
                          <div class="row">
                              <div class="col-md-6">
                                <div class="form-group row">
                                    <input class="books-input" type="text" class="form-control" value="{{$user->first_name}}" readonly/>
                                 
                                </div>
                              </div>
                              <div class="col-md-6">
                                <div class="form-group row">
                                <input type="text" class="form-control" value="{{$user->last_name}}" readonly/>
                              
                                </div>
                              </div>
                            </div>
                        
                        
                        
                        </div>
                      </form>
                    </div>
                  </div>
                </div>
          </div>
        </div>
@endsection

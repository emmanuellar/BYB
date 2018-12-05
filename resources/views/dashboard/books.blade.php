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
                                    <input type="text" class="form-control books-input" value="{{$user->first_name}}" readonly/>
                                 
                                </div>
                              </div>
                              <div class="col-md-6">
                                <div class="form-group row">
                                <input type="text" class="form-control books-input" value="{{$user->last_name}}" readonly/>
                              
                                </div>
                              </div>
                            </div>
                            <div class="row">
                              <div class="col-md-6">
                                <div class="form-group row">
                                    <input type="text" class="form-control books-input" value="{{$user->email}}" readonly/>
                                 
                                </div>
                              </div>
                              <div class="col-md-6">
                              <div class="form-group row">
                                  <input type="text" class="form-control books-input" name="name_organisation" placeholder="Name of Organisation"/>
                              </div>
                            </div>
                            </div>
                          <div class="row">
                          <div class="col-md-6">
                            <div class="form-group row">
                                <input type="text" class="form-control books-input" name="expected" placeholder="Expected Nos of Participants"/>
                            </div>
                          </div>
                          <div class="col-md-6">
                            <div class="form-group row">
                                <input class="form-control books-input" name="venue" placeholder="Training Venue"/>
                            </div>
                          </div>
                        </div>
                        <div class="row">
                          <div class="col-md-6">
                            <div class="form-group row">
                             
                                <select class="books-in" name="location">
                                  <option>Aba South</option>
                                  <option>Aba North</option>
                                  <option>Arochukwu</option>
                                  <option>Bende</option>
                                  <option>Ikwuano</option>
                                  <option>Isiala Ngwa North</option>
                                  <option>Isiala Ngwa South</option>
                                  <option>Isiukwuato</option>
                                  <option>Obingwa</option>
                                  <option>Ohafia</option>
                                  <option>Osisioma Ngwa</option>
                                  <option>Ugwunagbo</option>
                                  <option>Ukwa East</option>
                                  <option>Ukwa West</option>
                                  <option>Umuahia North</option>
                                  <option>Umuahia South</option>
                                  <option>Umunneochi</option>
                                </select>
                              
                            </div>
                          </div>
                          <div class="col-md-6">
                            <div class="form-group row">
                         
                                <input class="form-control books-input" type="date" name="trainnig" placeholder="Proposed Training Date"/>
                             
                            </div>
                          </div>
                        </div>
                        <div class="row">
                          <div class="col-md-12">
                            <div class="form-group row">
                                <input type="text" class="form-control books-date" type="time" name="time" placeholder="Proposed Time"/>
                            </div>
                          </div>
                          
                        </div>
                        <div class="row">
                        <div class="col-md-12 text-center">
                        <div class="form-group row">
                              <label class="col-sm-2 col-form-label"></label>
                              <div class="col-sm-8">

                                <button class="btn btn-success botton btn-block">Book session
                                  <i class=""></i>
                                </button>
                              </div>
                              <label class="col-sm-2 col-form-label"></label>
                        
                                
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

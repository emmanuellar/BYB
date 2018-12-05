@extends('layouts.master')
@section('content')
<div class="container-fluid">
                <div class="home-background-img"></div>
                <div class="text-below">
                    <img src="{{ asset('img/logo.png') }}" class="logo">
                </div>
                <div class="row align-items-center wrapper">
                    <div class="col ">
                        <div class="text-below">
                            <h1>BOOST YOUR BUSINESS</h1>
                            <span>with</span>
                            <h3 class="facebook-color">facebook</h3>
                            <p class="index-p"><em>Login to get started in becoming a trainer and booking a session</em></p>
                            <a href="{{URL('/login')}}"><button type="button" class="btn btn-primary logina index-button index-p">Log in<i class="far fa-arrow-alt-circle-right fa-color"></i></button></a>
                        </div>
                    </div>
                </div>
            </div>
@endsection 
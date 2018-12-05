@extends('layouts.dashboard.masters')
@section('content')
<div class="container content-wrapper">
    <div class="row">
		<div class="col-md-12">
				<div class="alert alert-success trainers" role="alert" style="background-color: #fff;border-color: #fff;color: black;">
  					<h3 class="alert-heading" style="margin-bottom: 20px;">Welcome to trainers home</h3>
            <h6>Carefully read before you proceed</h6>
  					<hr style="margin-bottom: 60px; border: 0px;">
  					<ol>
              <li>Update your profile before you proceed!</li>
  						<li>Carefully check the information you enter while booking a session, </li>
  						<li>You can only book a session at least 7 days before the proposed date.</li>
  						<li>Remember to log in and check for the session approval before due date.</li>
  						<li>Reports are to be made within 24 hours of training.</li>
  					</ol>
				</div>
			</div>
	</div><br>
	<div>Training statistics</div>
		<div class="row">
            <div class="col-xl-4 col-lg-4 col-md-4 col-sm-6 grid-margin stretch-card">
              <div class="card card-statistics" style="height: 100px;">
                <div class="card-body">
                  <div class="clearfix">
                    <div class="float-left">
                      <h4 class="mb-0 text-left">782</h4>
                      <div class="fluid-container">
                        <h6 class="font-weight-medium text-right mb-0">Total trainings booked</h6>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>

             <div class="col-xl-4 col-lg-4 col-md-4 col-sm-6 grid-margin stretch-card">
              <div class="card card-statistics" style="height: 100px;">
                <div class="card-body">
                  <div class="clearfix">
                    <div class="float-left">
                      <h4 class="mb-0 text-left">426</h4>
                      <div class="fluid-container">
                        <h6 class="font-weight-medium text-right mb-0">Total trainees approved</h6>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>

           <div class="col-xl-4 col-lg-4 col-md-4 col-sm-6 grid-margin stretch-card">
              <div class="card card-statistics" style="height: 100px;">
                <div class="card-body">
                  <div class="clearfix">
                    <div class="float-left">
                      <h4 class="mb-0 text-left" style="color: green;">#726,052</h4>
                      <div class="fluid-container">
                        <h6 class="font-weight-medium text-right mb-0">Total earnings</h6>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
</div>
@endsection
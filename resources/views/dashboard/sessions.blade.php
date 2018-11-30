@extends('layouts.dashboard.masters')
@section('content')
<div class="content-wrapper">
          <div>
              <div class="col-lg-12 grid-margin stretch-card">
                  <div class="card">
                    <div class="card-body">
                      <h4 class="card-title">All training sessions</h4>
                      <div class="table-responsive">
                        <table class="table table-striped">
                          <thead>
                            <tr>
                              <th>
                                Session ID
                              </th>
                              <th>
                                Trainers name
                              </th>
                              <th>
                               All attended trainee
                              </th>
                              <th>
                                Training date
                              </th>
                              <th>
                                Training time
                              </th>
                              <th>
                                Status
                              </th>
                              <th>
                                Paid
                              </th>
                              <th>
                              Action
                              </th>
                            </tr>
                          </thead>
                          <tbody>
                            @if($sessions->isEmpty())
                            <tr>
                              there are no orders
                            </tr>
                            @else
                            @foreach($sessions as $session)
                            <tr>
                              <td class="py-1">
                              {{$loop->index+1}}
                              </td>
                              <td>
                                {{$session->user->first_name}} {{$session->user->last_name}}
                              </td>
                              <td>
                                {{$session->report['total']}}
                              </td>
                              <td>
                                {{$session->trainnig}}
                              </td>
                              <td>
                                {{$session->time}}
                              </td>
                              <td>
                                @if($session->status==0)
                                 {{'Pending'}}
                                @elseif($session->status==1)
                                {{'Granted'}}
                                @else
                                {{'Rejected'}}
                                @endif
                              </td>
                              <td>
                                {{$session->report['paid']==0?'Not paid':'Paid' }}
                              </td>
                              @if($session->status==1)
                                @if(!isset($session->report))
                                  <td>
                                    <a class="btn btn-primary" href="{{route('report', $session->id)}}">Submit Report</a>
                                  </td>
                                @else
                                <td>
                                  <a class="btn btn-primary" href="{{route('report.edit', $session->id)}}">Edit Report</a>
                                </td>
                                @endif
                              @endif
                              
                            </tr>
                            @endforeach
                            @endif
                          </tbody>
                        </table>
                      </div>
                    </div>
                  </div>
                </div>
          </div>
        </div>
@endsection
<nav class="navbar default-layout col-lg-12 col-12  fixed-top d-flex flex-row">
      <div> </div>
      <div class="container navbar-menu-wrapper d-flex align-items-center">
        <ul class=" navbar-nav  header-links d-none d-md-flex">
         <li class="nav-item">
            <a href="{{route('resources')}}" class="nav-link"><b>BYB</b></a>
          </li>
          <li class="nav-item active">
            <a href="#" class="nav-link">with&nbspFacebook</a>
          </li>
        </ul>
        <ul class="navbar-nav navbar-nav-right">
          <li class="nav-item dropdown d-none d-xl-inline-block">
            <a class="nav-link " id="" href="#" data-toggle="dropdown" aria-expanded="false">
              <i class="mdi mdi-settings mr-1 mdi-24px" aria-hidden="true" style="padding: 20px;"></i>
              @if(Auth::user()->profile)
             
             
              @endif
               <i class="mdi mdi-account-circle mr-1 mdi-24px" aria-hidden="true"></i>
            </a>
            <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="UserDropdown">
              <!--<a class="dropdown-item p-0">-->
              <!--  <div class="d-flex border-bottom">-->
              <!--    <div class="py-3 px-4 d-flex align-items-center justify-content-center">-->
              <!--      <i class="mdi mdi-bookmark-plus-outline mr-0 text-gray"></i>-->
              <!--    </div>-->
              <!--    <div class="py-3 px-4 d-flex align-items-center justify-content-center border-left border-right">-->
              <!--      <i class="mdi mdi-account-outline mr-0 text-gray"></i>-->
              <!--    </div>-->
              <!--    <div class="py-3 px-4 d-flex align-items-center justify-content-center">-->
              <!--      <i class="mdi mdi-alarm-check mr-0 text-gray"></i>-->
              <!--    </div>-->
              <!--  </div>-->
              <!--</a>-->
              <a href="{{route('profile')}}" class="dropdown-item mt-2">
                Profile
              </a>
              <a href="{{URL('trainer/password/reset')}}" class="dropdown-item">
                Change Password
              </a>
              <!--<a class="dropdown-item">-->
              <!--  Check Inbox-->
              <!--</a>-->
              <a class="dropdown-item" href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                        {{ __('Logout') }}
                                    </a>

                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                        @csrf
                                    </form>
            </div>
          </li>
        </ul>
        <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas" style="margin-left: 300px;">
          <span class="mdi mdi-menu"></span>
        </button>
      </div>
    </nav>
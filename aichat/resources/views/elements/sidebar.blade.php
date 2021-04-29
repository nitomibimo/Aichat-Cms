 <!-- Main sidebar -->
            <div class="sidebar sidebar-main">
                <div class="sidebar-content">


                    <div class="sidebar-user">
                        <div class="category-content">
                            <div class="media">
                                <a href="#" class="media-left"><img src="{{ url('') }}/assets/images/logo-aichat.png" class="img-circle img-sm" alt=""></a>
                                <div class="media-body">
                                    <span class="media-heading text-semibold">Ai Chat</span>
                                    <div class="text-size-mini text-muted">
                                        <i class="icon-pin text-size-small"></i> &nbsp;Jakarta,Indonesia
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>



                    <!-- Main navigation -->
                    <div class="sidebar-category sidebar-category-visible">
                        <div class="category-content no-padding">
                            <ul class="navigation navigation-main navigation-accordion">

                                <!-- Main -->
                                <li class="navigation-header"><span>Main</span> <i class="icon-menu" title="Main pages"></i></li>
                                <li><a href="{{route('dashboard')}}"><i class="icon-home4"></i> <span>Dashboard</span></a></li>
                                <li><a href="{{route('getuser')}}"><i class="icon-user"></i> <span>User</span></a></li>
                                <li><a href="{{route('getprize')}}"><i class="icon-pen"></i> <span>Prize List</span></a></li>
                                <li><a href="{{route('winner_filter')}}"><i class="icon-book"></i> <span>Winner Filter</span></a>
                                  <ul>
                                      <li><a href="{{route('winner_filter')}}">Winner Filter All</a></li>
                                      <li><a href="{{route('winner_filter_period')}}">Winner Filter by Period</a></li>
                                      <li><a href="{{route('winner_filter_prize')}}">Winner Filter by Prize</a></li>
                                  </ul></li>
                                <li><a href="{{route('getreport')}}"><i class="icon-stack2"></i> <span>Winner List</span></a></li>
                            </ul>
                        </div>
                    </div>
                    <!-- /main navigation -->

                </div>
            </div>
            <!-- /main sidebar -->

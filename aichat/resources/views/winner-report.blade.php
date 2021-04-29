<!DOCTYPE html>
<html>
@include('layouts.app')

<body>
  @include('elements.main_navbar')


    <!-- Page container -->
    <div class="page-container">

        <!-- Page content -->
        <div class="page-content">

            @include('elements.sidebar')
			<!-- Main content -->
			<div class="content-wrapper">

				<!-- Page header -->
				<div class="page-header page-header-default">
					<div class="page-header-content">
						<div class="page-title">
							<h4><i class="icon-arrow-left52 position-left"></i> <span class="text-semibold">All User</span></h4>
						</div>
					</div>

					<div class="breadcrumb-line">
						<ul class="breadcrumb">
							<li><a href="{{route('dashboard')}}"><i class="icon-home2 position-left"></i> Home</a></li>
							<li><a href="datatable_basic.html">All Winner</a></li>
						</ul>
					</div>
				</div>
				<!-- /page header -->


				<!-- Content area -->
				<div class="content">
        <a href="{{route('exportview')}}"><i class="icon-file-excel"></i>Export to excel</a>
        <a href="{{route('exportjson')}}"><i class="icon-file-excel"></i>Export to json</a>

					<!-- Basic datatable -->
					<div class="panel panel-flat">

						<table class="table datatable-basic">
							<thead>
								<tr>
                  <th>Winner Voucher ID</th>
                  <th>Winner Prize</th>
									<th>Winner Voucher Code</th>
                  <th>Winner Name</th>
                  <th>Winner Imei</th>
								</tr>
							</thead>
							<tbody>
                @foreach($report as $index=>$key)
								<tr>
                  <td>{{ $key->voucher_id }}</td>
                  <td>{{ $key->prize[0]->prize_name }}</td>
                  <td>{{ $key->voucher_code }}</td>
									<td><a href="#">{{ $key->user[0]->user_fullname }}</a></td>
                  <td>{{ $key->user[0]->user_imei }}</td>
				{{--					<td class="text-center">
										<ul class="icons-list">
											<li class="dropdown">
												<a href="#" class="dropdown-toggle" data-toggle="dropdown">
													<i class="icon-menu9"></i>
												</a>

												<ul class="dropdown-menu dropdown-menu-right">
													<li><a href="{{route('exportexcel')}}"><i class="icon-file-excel"></i>Export to excel</a></li>
												</ul>
											</li>
										</ul>
									</td> --}}
								</tr>
                @endforeach
							</tbody>
						</table>
					</div>
					<!-- /basic datatable -->



             </div>
           </div>
         </div>
         <!-- /registration form -->


			@include('elements.footer')

				</div>
				<!-- /content area -->

			</div>
			<!-- /main content -->

		</div>
		<!-- /page content -->

	</div>
	<!-- /page container -->

</body>
</html>

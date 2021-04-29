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
							<li><a href="datatable_basic.html">All client</a></li>
						</ul>
					</div>
				</div>
				<!-- /page header -->


				<!-- Content area -->
				<div class="content">

					<!-- Basic datatable -->
					<div class="panel panel-flat">

						<table class="table datatable-basic">
							<thead>
								<tr>
									<th>ID</th>
									<th>Prize ID</th>
                  <th>User ID</th>
                  <th>Period ID</th>
                  <th>Voucher Code</th>
                  <th>Voucher Winner</th>
                  <th>Voucher Valid</th>
									<th class="text-center">Actions</th>
								</tr>
							</thead>
							<tbody>
                @foreach($voucher as $index=>$key)
								<tr>
									<td>{{ $key->voucher_id }}</td>
									<td><a href="#">{{ $key->prize_id }}</a></td>
                  <td>{{ $key->user_id }}</td>
                  <td>{{ $key->period_id }}</td>
                  <td>{{ $key->voucher_code }}</td>
                  <td>{{ $key->voucher_winner }}</td>
                  <td>{{ $key->voucher_valid }}</td>
									<td class="text-center">
										<ul class="icons-list">
											<li class="dropdown">
												<a href="#" class="dropdown-toggle" data-toggle="dropdown">
													<i class="icon-menu9"></i>
												</a>

												<ul class="dropdown-menu dropdown-menu-right">
													<li><a href="#"><i class="icon-file-pdf"></i> View</a></li>
													<li><a href="#"><i class="icon-file-excel"></i> Edit</a></li>
													<li><a href="#"><i class="icon-file-word"></i> Delete</a></li>
												</ul>
											</li>
										</ul>
									</td>
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

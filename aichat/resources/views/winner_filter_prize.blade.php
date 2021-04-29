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
            <form method="POST" action="{{route('filter-post-prize')}}">
          <div class="col-md-8">
              {{csrf_field()}}
              <div class="form-group">
                <label>Filter by Prize</label><br>
                <select class="bootstrap-select" id="prize_id" name="prize_id"  data-live-search="true" data-width="100%">
                  @foreach($prize_name as $index=>$key)
                  <option value="{{ $key->prize_id }}">{{ $key->prize_name }}</option>
                  @endforeach
                </select>
              </div>
            </div>

              <div class="form-group col-md-8">
                <button type="submit" class="btn bg-blue btn">Submit <i class="icon-circle-right2 position-right"></i></button>
              </div>
            </form>
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

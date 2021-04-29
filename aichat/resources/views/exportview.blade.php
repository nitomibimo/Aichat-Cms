<!DOCTYPE html>
<html>


						<table class="table datatable-basic">
							<thead>
								<tr>
                  <th>Winner Voucher ID</th>
                  <th>Winner Prize ID</th>
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
								</tr>
                @endforeach
							</tbody>
						</table>
            <a href="{{route('exportexcel')}}"><i class="icon-file-excel"></i>Export to excel</a>

</html>

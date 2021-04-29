<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\Request;
use App\Model\Report;
use App\Model\User;
use App\Model\Prize;
use App\Model\Voucher;
use App\Model\Period;
use App\Exports\DataExports;
use Maatwebsite\Excel\Facades\Excel;
use Symfony\Component\HttpFoundation\BinaryFileResponse;

class PageController extends Controller
{
    public function dashboard()
    {
        return view('index');
    }

    public function report()
    {
        $report = Voucher::select()
              ->where('voucher_valid', '1')
              ->get();

        foreach ($report as $index => $key) {
            $user = User::where('user_id', $key->user_id)
                          ->get();

            $report[$index]['user'] = $user;
        }

        foreach ($report as $index => $key) {
            $prize = Prize::where('prize_id', $key->prize_id)
                          ->get();

            $report[$index]['prize'] = $prize;
        }


        return view('winner-report', array(
            'report' => $report,
        ));

        // dd($report);
    }

    public function user()
    {
        $user = User::select()
              ->get();

        return view('user', array(
            'user' => $user,
        ));
    }

    public function prize()
    {
        $prize = Prize::select()
              ->get();

        return view('prize', array(
            'prize' => $prize,
        ));
    }

    public function winner_filter()
    {
        $prize_name = Prize::select()
                      ->get();

        $period = Period::select()
                    ->get();

        return view('winner_filter', array(
            'prize_name' => $prize_name,
            'period' => $period
        ));
    }

    public function filter_post(Request $request)
    {
        $voucher = Voucher::where('prize_id', $request->input('prize_id'))
                ->where('period_id', $request->input('id_period'))
                ->get();

        // dd($voucher);

        return view('filter_result', array(
            'voucher' => $voucher,
        ));
    }

    public function winner_filter_period()
    {
        $period = Period::select()
                    ->get();

        return view('winner_filter_period', array(
            'period' => $period
        ));
    }

    public function filter_post_period(Request $request)
    {
        $voucher = Voucher::where('period_id', $request->input('id_period'))
                ->get();

        return view('filter_result_period', array(
            'voucher' => $voucher,
        ));
    }

    public function winner_filter_prize()
    {
        $prize_name = Prize::select()
                    ->get();

        return view('winner_filter_prize', array(
            'prize_name' => $prize_name
        ));
    }

    public function filter_post_prize(Request $request)
    {
        $voucher = Voucher::where('prize_id', $request->input('prize_id'))
                ->get();

        return view('filter_result_prize', array(
            'voucher' => $voucher,
        ));
    }

    public function exportExcel()
    {
        return Excel::download(new DataExports(), 'report.xlsx');
    }

    public function exportview()
    {
        $report = Voucher::select()
            ->where('voucher_valid', '1')
            ->get();

        foreach ($report as $index => $key) {
            $user = User::where('user_id', $key->user_id)
                        ->get();

            $report[$index]['user'] = $user;
        }
        foreach ($report as $index => $key) {
            $prize = Prize::where('prize_id', $key->prize_id)
                          ->get();

            $report[$index]['prize'] = $prize;
        }


        return view('exportview', array(
            'report' => $report,
        ));
    }

    public function exportjson()
    {
        $report = Voucher::select()
            ->where('voucher_valid', '1')
            ->get();

        foreach ($report as $index => $key) {
            $user = User::where('user_id', $key->user_id)
                        ->get();

            $report[$index]['user'] = $user;
        }
        foreach ($report as $index => $key) {
            $prize = Prize::where('prize_id', $key->prize_id)
                          ->get();

            $report[$index]['prize'] = $prize;
        }


        return response()->json(array(
            'data' => $report));
    }
}

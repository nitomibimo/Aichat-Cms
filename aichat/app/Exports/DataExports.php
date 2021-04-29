<?php
namespace App\Exports;

use App\Model\Voucher;
use App\Model\User;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;

class DataExports implements FromView, WithHeadings
{
    public function view(): View
    {
        $report = Voucher::select()
            ->where('voucher_valid', '1')
            ->get();

        foreach ($report as $index => $key) {
            $user = User::where('user_id', $key->user_id)
                        ->get();

            $report[$index]['user'] = $user;
        }


        return view('exportview', array(
            'report' => $report,
        ));
    }

    public function headings(): array
    {
        return array(
            'ID',
            'Prize ID',
            'User ID',
            'Period ID',
            'Voucher Code',
        );
    }
}

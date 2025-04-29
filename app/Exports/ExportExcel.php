<?php

namespace App\Exports;
use Generator;
use Illuminate\Support\Facades\DB;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\FromQuery;
use Maatwebsite\Excel\Concerns\Exportable;
use Maatwebsite\Excel\Concerns\FromGenerator;
use Maatwebsite\Excel\Concerns\FromView;
use Illuminate\Contracts\View\View;
// use Illuminate\Support\Facades\View;
use Carbon\Carbon;

// class coba implements FromQuery, FromGenerator
// class ExportExcel implements FromGenerator
class ExportExcel implements FromView
{
    // /**
    // * @return \Illuminate\Support\Collection
    // */
    // public function collection()
    // {
    //     return DB::table('dbmcoy')->get();
    // }
    use Exportable;

    public function __construct(Array $pick,Int $status)
    {
        // $this->pick = [json_decode($pick)];
        $this->pick = $pick;
        $this->status = $status;
    }

    public function view(): View
    {
        // dd($this->status);
        if($this->status == 1) return view("admin.report.stok-item.excel-resume",$this->pick);
        else return view("admin.report.stok-avalan.excel-resume",$this->pick);
    }
    // public function generator(): Generator
    // {
    //     // dd($this->pick->data3BulanTerakhir);

    //     if($this->pick['type']==1) //pending
    //     {   
    //         $data=$this->pick;
    //         $exportArray=array();
    //         // dd($this->pick['dataCoy']." INI SuDAH DALAM GENERATOR");
    //         $headerLaporan=['','','','','','','','LAPORAN HASIL PELAKSANAAN CEK STOK'];
    //         $blank=[];
    //         $subHeader1=['I. PELAKSANA CEK STOK'];
    //         $blank=[];

    //         // dd($data['dataCso']->startcsodate.' tanggal');
    //         $date=Carbon::parse($data['dataCso']->startcsodate)->translatedFormat('j F Y');
    //         $coyName=['Nama Perusahaan: ','','','','',$data['dataCoy']];
    //         $date=['Tanggal pelaksaanaan cek stok: ','','','',''
    //         ,$date];
    //         $loc=['Lokasi/kelompok produk yang di cek stok :','','',''
    //         ,'',$data['dataCso']->csomaterial];

    //         $cso=['II. SUSUNAN TIM CEK STOK OPNAME'];
    //         $picCSO=['PIC CSO: '];
    //         $analisator=['Analisator'];

    //         // dd(count($data['dataAnalisator'])." test");
    //         array_push($exportArray,$headerLaporan,$blank,$subHeader1,$blank,
    //         $coyName,$date,$loc,$blank,$blank,$cso,$picCSO,$analisator);

    //         foreach ($data['dataAnalisator'] as $i => $dataAnalisator) {
    //             $analisator=array();
    //             if($i == 0)
    //             {
    //                 $header=['NO','Nama Analisator','','Departemen','Catatan tentang Analisator'];
    //                 array_push($exportArray,$header);
    //             }
    //             $analisator=[str($i+1),$dataAnalisator->name,'',
    //             $dataAnalisator->dept,$dataAnalisator->note];
    //             array_push($exportArray,$analisator);
    //         }

    //         $pelaku=['Pelaku'];
    //         array_push($exportArray,$blank,$pelaku);
    //         foreach ($data['dataPelaku'] as $i => $dataPelaku) {
    //             $pelaku=array();
    //             if($i == 0)
    //             {
    //                 $header=['NO','Nama Pelaku','','Departemen','Catatan tentang Pelaku'];
    //                 array_push($exportArray,$header);
    //             }
    //             $pelaku=[str($i+1),$dataPelaku->name,'',
    //             $dataPelaku->dept,$dataPelaku->note];
    //             array_push($exportArray,$pelaku);
    //         }

    //         array_push($exportArray,$blank,$blank);
    //         $rekapCSO=['II. REKAPITULASI HASIL CSO GLOBAL'];
    //         foreach($data['dataRekapitulasi'] as $perhitungan)
    //         {
    //             // dd('asfasfafaf '.$perhitungan->kesalahan_admin_ok);

    //         } 
            
    //         yield $exportArray;
    //     }
    //     else if($this->pick['type']==2)
    //     {
    //         $arr=[['a','b','c','d','e','f'],['g','h','i','j','k','l']];
    //         // dd($arr);
    //         $return['item']=$arr;
    //         yield $arr;
    //     }
    //     else if($this->pick['type']==3)
    //     {

    //         //HEADER
    //         $data=$this->pick;
    //         $exportArray=array();
    //         $date=Carbon::parse($data['dataCso']->startcsodate)->translatedFormat('j F Y');
    //         $header['head']=[substr($data['dataCso']->doccsoid,0,3).' SRM TANGGAL: ',$date];
    //         $header['material']=['Material: '.strtoupper($data['dataCso']->csomaterial)];
    //         $header['coy']=[$data['dataCoy']];
    //         $header['subhead']=[
    //             'Tanggal Import',
    //             'No',
    //             'Nama Item',
    //             'Grade',
    //             'UOM',
    //             'Analisator',
    //         ];
    //         $count=0;
    //         foreach($data['dataWrh'] as $wrh){
    //             array_push($header['subhead'],$wrh->wrh);
    //             $count+=1;
    //         }

    //         array_push($header['subhead'],'total','|','-','-','CSO 1','-','|','-','-','CSO 2'
    //         ,'-','|','-','-','CSO 3','-','|','-','TRACE','-','|','Warna','Keterangan','Pelaku');

    //         $header['subhead1']=array();
    //         for($i=0;$i<7+$count;$i++)
    //         {
    //             array_push($header['subhead1'],'-');
    //         }

    //         for($i=0;$i<3;$i++)
    //         {
    //             array_push($header['subhead1'],'|','Realita fisik','Selisih Fisik','Lokasi',
    //             'Kesimpulan');
    //         }
    //         array_push($header['subhead1'],'|','Realita fisik','Selisih Fisik',
    //         'Kesimpulan');
    //         array_push($header['subhead1'],'|','-','-','-');


    //         array_push($exportArray,$header['head'],$header['material']
    //         ,$header['coy'],$header['subhead'],$header['subhead1']);

    //         //END HEADER AND SUB HEADER


    //         foreach($data['dataLaporan'] as $i => $dataLaporan)
    //         {
    //             $Tbody=array();
    //             array_push($Tbody,Carbon::parse($dataLaporan->createddate)->translatedFormat('d F Y'));

    //             $analisator='';
    //             $uom='';
    //             $grade='';
    //             if($dataLaporan->name!=NULL)
    //             {
    //                 $analisator=str($dataLaporan->name);
    //             }
    //             if($dataLaporan->grade!=NULL)
    //             {
    //                 $grade=str($dataLaporan->grade);
    //             }
    //             if($dataLaporan->uom != NULL)
    //             {
    //                 $uom=str($dataLaporan->uom);
    //             }
    //             // dd($dataLaporan->name);
    //             array_push($Tbody,
    //             $i+1,
    //             $dataLaporan->itemname,
    //             $grade,
    //             $uom,
    //             $analisator
    //              );
               
    //             foreach($data['dataWrh'] as $wrh){
    //                 $count=0;
    //                 foreach($data['dataWrhQty'] as $wrhQty){
    //                     if($wrh->wrh == $wrhQty->wrh && $wrhQty->trsdetid == $dataLaporan->trsdetid)
    //                     {
    //                         array_push($Tbody,$wrhQty->qty);
    //                         $count++;
    //                     }
    //                     // else
    //                     // {
    //                     //     array_push($Tbody,'');
    //                     // }
                        
    //                 }
    //                 if($count==0)
    //                 {
    //                     array_push($Tbody,'');
    //                 }
    //             }
                
    //             $boolcso1='';
    //             $boolcso2='';
    //             $boolcso3='';
    //             $booltrace='';
    //             $selifiFisikCso1='';
    //             $selifiFisikCso2='';
    //             $selifiFisikCso3='';
    //             $selifiFisikTrace='';
    //             if($dataLaporan->qtycso1!=$dataLaporan->onhand)
    //             {
    //                 $boolcso1='FALSE';
    //             }
    //             else {$boolcso1='TRUE';}
    //             if($dataLaporan->qtycso1!=$dataLaporan->onhand 
    //             && $dataLaporan->qtycso2 != $dataLaporan->onhand)
    //             {
    //                 $boolcso2='FALSE';
    //             }
    //             else {$boolcso2='TRUE';}
    //             if($dataLaporan->qtycso1!=$dataLaporan->onhand
    //             && $dataLaporan->qtycso2!=$dataLaporan->onhand 
    //             && $dataLaporan->qtycso3 != $dataLaporan->onhand)
    //             {
    //                 $boolcso3='FALSE';
    //             }
    //             else $boolcso3='TRUE';
    //             if($dataLaporan->qtycso1!=$dataLaporan->onhand
    //             && $dataLaporan->qtycso2!=$dataLaporan->onhand 
    //             && $dataLaporan->qtycso3 != $dataLaporan->onhand
    //             && $dataLaporan->trace != $dataLaporan->onhand)
    //             {
    //                 $booltrace='FALSE';
    //             }
    //             else $booltrace='TRUE';
    //             if($dataLaporan->qtycso1 != $dataLaporan->onhand)
    //             {
    //                 // $selifiFisikCso2=str($dataLaporan->onhand - $dataLaporan->qtycso2);
    //                 $selifiFisikCso2=str(number_format($dataLaporan->qtycso2 - $dataLaporan->onhand,2,',','.') );
    //             }
    //             if($dataLaporan->qtycso1 != $dataLaporan->onhand &&
    //             $dataLaporan->qtycso2 != $dataLaporan->onhand)
    //             {
    //                 // $selifiFisikCso3=str($dataLaporan->onhand - $dataLaporan->qtycso3);
    //                 $selifiFisikCso3=str(number_format($dataLaporan->qtycso3 - $dataLaporan->onhand,2,',','.') );
                    
    //             }
    //             if($dataLaporan->qtycso1 != $dataLaporan->onhand &&
    //             $dataLaporan->qtycso2 != $dataLaporan->onhand &&
    //             $dataLaporan->qtycso3 != $dataLaporan->onhand)
    //             {
    //                 $selifiFisikTrace=str(number_format($dataLaporan->trace - $dataLaporan->onhand,2,',','.'));
    //             }
 
    //             $selifiFisikCso1=str(number_format($dataLaporan->qtycso1 - $dataLaporan->onhand,2,',','.'));

    //             array_push($Tbody,$dataLaporan->onhand,'|');
    //             array_push($Tbody,
    //                 str(number_format($dataLaporan->qtycso1,2,',','.')),
    //                 $selifiFisikCso1,
    //                 $dataLaporan->loctcso1,
    //                 $boolcso1,'|',
    //                 str(number_format($dataLaporan->qtycso2,2,',','.')),
    //                 $selifiFisikCso2,
    //                 $dataLaporan->loctcso2,
    //                 $boolcso2,'|',
    //                 str(number_format($dataLaporan->qtycso3,2,',','.')),
    //                 $selifiFisikCso3,
    //                 $dataLaporan->loctcso3,
    //                 $boolcso3,'|',
    //                 str(number_format($dataLaporan->trace,2,',','.')),
    //                 $selifiFisikTrace,
    //                 $booltrace,'|',
    //                 $dataLaporan->color,
    //                 $dataLaporan->keterangan,
    //                 $dataLaporan->pelaku
    //             );
    //             array_push($exportArray,$Tbody);


    //         }


    //         // dd("OIII");
    //         yield $exportArray; 
    //     }
    // }
}

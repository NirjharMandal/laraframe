<style>
    h4{
        font-size:1em;
    }
    h5{
        font-size:0.8em;
    }
    table{
        width: 100%;
        border-collapse: collapse;
    }
    thead tr td{
        background:#e7e7e7;
        font-size: 0.8em;
        font-weight: bold;
        padding: 5px 10px;
        text-align: center;
    }
    td{
        font-size:0.8em;
        font-weight: 300;
    }
    .ml-500{
        margin-left: 500px;
    }
    .mt-10{
        margin-top: 10px;
    }
    .mt-20{
        margin-top: 20px;
    }
    .mb-50{
        margin-bottom: 50px;
    }
    .pad5{
        padding: 5px;
    }
    .mb-20{
        margin-bottom: 30px;
    }
    .border-right{
        border-right: 1px solid #ddd;
    }
    table.padding td{
        padding: 5px;
    }
    table.border td{
        border: 1px solid #e7e7e7;
        padding: 5px;
    }
    hr{
        width: 100%;
        border-top: 1px solid #e7e7e7;
    }
    .sale-details-1{
        width: 45%;
        float: left;
    }
    .sale-details-2{
        width: 45%;
        float: right;
    }
    p, li {font-size:0.8em;}
    strong{
        font-weight: 700;
    }
    .signature-item{
        padding:20px;
        vertical-align: top;
        text-align: center;
    }
</style>


<table>
    <tr>
        <td align="center" colspan="2">PURCHASE REQUISITION OF GOODS (LOCAL/IMPORT ITEMS)</td>
    </tr>
    <tr>
        <td align="right" colspan="2">Date :  </td>
    </tr>
    <tr>
        <td>Name of Department :  {{$requisitions_obj->departments_name??'N/A'}} </td>
        <td>Area of Use : {{$requisitions_obj->requisition_for??'N/A'}}</td>
    </tr>
    <tr>
        <td colspan="2">Cagetory :{{$requisitions_obj->purchase_categorys_name??'N/A'}} </td>
    </tr>
</table>
<table class="border mt-20">
    <thead>
    <tr>
        <td width="60%" colspan="5">DEPARTMENT USE</td>
        <td width="25%" colspan="3">STORE USE ONLY</td>
        <td width="15%">Remarks/ <br>Justification</td>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td width="5%" align="center">Sl. No</td>
        <td width="25%" align="center">Name of Item</td>
        <td width="10%" align="center">Specification</td>
        <td width="10%" align="center">Brand/Mfg. Company</td>
        <td width="10%" align="center">Required Qty</td>
        <td width="10%" align="center">Supply Data</td>
        <td width="10%" align="center">Stock in Store</td>
        <td width="10%" align="center">Pre. Rate</td>
        <td width="10%" align="center">&nbsp;</td>
    </tr>
    @if(!empty($purchase_requisition_details))
    @foreach($purchase_requisition_details as $purchase_index => $purchase_requisition_detail)
        <tr>
            <td>{{++$purchase_index}}</td>
            <td>{{$purchase_requisition_detail->products_name??'N/A'}}</td>
            <td> &nbsp; </td>
            <td>{{$purchase_requisition_detail->product_brands_name??'N/A'}}</td>
            <td>{{intval($purchase_requisition_detail->request_qty).' '.$purchase_requisition_detail->uom_name}}</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>{{$purchase_requisition_detail->default_unit_price??'N/A'}}</td>
            <td>&nbsp;</td>
        </tr>
    @endforeach
    @endif
    </tbody>
</table>
@if(!empty($requisitions_obj))
@php($deligation = getDelegationHistory('prc_req', $requisitions_obj->purchase_requisitions_code))
@if($deligation)
    <?php $max = ceil(count($deligation)/4); ?>
    <table class="mt-20 no-borders">
        <tr>
            @for($i=0; $i<($max*4); $i++)
                <td width="25%" valign="top" class="signature-item">
                    @if(!empty($deligation[$i]))
                        <hr>
                        {{-- <h4 style="font-size: 1.3em">{{isset($deligation[$i])?$deligation[$i]->uname:''}}</h4>--}}
                        <p>{{isset($deligation[$i])?$deligation[$i]->designations_name:''}}</p>
                    @endif
                </td>
            @endfor
        </tr>
    </table>
@endif
    @endif

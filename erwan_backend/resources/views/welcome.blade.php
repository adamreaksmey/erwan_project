<!DOCTYPE html>
<html class="_html">
<head>
    <title>Excel Import/Export</title>
    <link rel="stylesheet" href="{{ secure_asset('css/app.css') }}" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.13.0/themes/smoothness/jquery-ui.css" />
    <script src="https://code.jquery.com/ui/1.13.0/jquery-ui.min.js"></script>
</head>
<body>
    <center>
        <div class="all_form" id="movable-div">
            <h1 style="font-family: cursive;">Erwan Export</h1>
            <h5>Version 1.0.0</h5>
            <div class="button-group">
                <form id="import-form" method="POST" action="{{ route('import', [], true, false) }}" enctype="multipart/form-data" >
                    @csrf
                    <label for="file">Import Excel:</label>
                    <input type="file" name="file" id="file" accept=".xlsx, .xls, .csv" />
                    <button id="import-btn" type="submit">Import</button>
                </form>
                <form class="sample_download" method="GET" action="{{ route('sample', [], true, false) }}">
                    @csrf
                    <div class="notsure_info">If you're not sure about the guest name file format<br />Please see file format below</div>
                    <button id="import-btn" type="submit" style="background-color: black;">See sample file</button>
                </form>
                <div class="default_file_btn" id="default_file_btn" onclick="switch_file()" > CHANGE DEFAULT FILE </div>
                <form id="export-form" action="{{ route('store', [], true, false) }}" method="POST" enctype="multipart/form-data" class="export_form" style="display: none" >
                    @csrf
                    <label for="num_copies">Export:</label>
                    <input type="file" name="file" accept=".xlsx, .xls, .csv" class="default_file" onchange="detectFaultFile(event)" /><br />
                    <div style="position: relative; left: 12px; display: none" id="confirm_1"> Guest name row: <input id="txt" type="text" name="guest_name" /> <br /> </div>
                    <div style="display: none" id="confirm_2"> Invoice number row: <input id="txt" type="text" name="invoice_number" /> <br /> </div>
                    <div style="position: relative; left: 35px; display: none" id="confirm_3"> Date row: <input id="txt" type="text" name="date" /> <br /> </div>
                    <div style="transform: translateX(31px); display: none" id="confirm_4"> Room row: <input id="txt" type="text" name="room" /> <br /> </div>
                    <div style="transform: translateX(22.1px); display: none" id="confirm_5"> Quantity row: <input id="txt" type="text" name="quantity" /> <br /> </div>
                    <div style="transform: translateX(18.1px); display: none" id="confirm_6"> Unit price row: <input id="txt" type="text" name="unit_price" /> <br /> </div>
                    <div style="transform: translateX(24.1px); display: none" id="confirm_7"> Amount row: <input id="txt" type="text" name="amount" /> <br /> </div>
                    <div style="transform: translateX(-8.9px); display: none" id="confirm_8"> Unit price row ( Total ): <input id="txt" type="text" name="unit_total" /> <br /> </div>
                    <div style="transform: translateX(-2.9px); display: none" id="confirm_9"> Amount row ( Total ): <input id="txt" type="text" name="unit_amount" /> <br /> </div>
                    <button type="submit" style="display: none" id="confirm_10"> Process File </button>
                </form>
            </div>
        </div>
        @if (session()->has('error'))
        <div class="popup_msg" role="alert">
            <div style="font-size: 23px">Error</div>
            <hr />
            <div style="padding-bottom: 16px">{{ session()->get('error') }}</div>
            <div class="ok_button" onclick="popup_()">Ok</div>
        </div>
        @endif
        @if (session()->has('success'))
        <div class="popup_msg" role="alert">
            <div style="font-size: 23px">Success</div>
            <hr />
            <div style="padding-bottom: 16px">{{ session()->get('success') }}</div>
            <div class="ok_button" onclick="popup_()">Ok</div>
        </div>
        @endif
    </center>
</body>
<script src="{{ secure_asset('js/functions.js') }}"></script>
</html>
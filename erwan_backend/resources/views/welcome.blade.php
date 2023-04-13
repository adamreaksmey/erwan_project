<!DOCTYPE html>
<html class="_html">

<head>
  <title>Excel Import/Export</title>
  <link rel="stylesheet" href="{{ asset('css/app.css') }}" />
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script src="{{ asset('js/functions.js') }}"></script>
  <link rel="stylesheet" href="https://code.jquery.com/ui/1.13.0/themes/smoothness/jquery-ui.css" />
  <script src="https://code.jquery.com/ui/1.13.0/jquery-ui.min.js"></script>
</head>

<body>
  <center>
    <div class="all_form" id="movable-div">
      <h1>Erwan Export</h1>
      <div class="button-group">
        <form id="import-form" method="POST" action="{{ route('import') }}" enctype="multipart/form-data">
          @csrf
          <label for="file">Import Excel:</label>
          <input type="file" name="file" id="file" accept=".xlsx, .xls, .csv" />
          <button id="import-btn" type="submit">Import</button>
        </form>

        <div class="default_file_btn" id="default_file_btn" onclick="switch_file()">
          CHANGE DEFAULT FILE
        </div>
        <form id="export-form" action="{{ route('export') }}" method="POST" enctype="multipart/form-data" class="export_form">
          @csrf
          <label for="num_copies">Export:</label>
          <input type="file" name="file" accept=".xlsx, .xls, .csv" class="default_file"/><br />

          <div style="
    position: relative;
    left: 12px;
">
            Guest name row: <input id="txt" type="text" name="price" />
            <div class="confirm_button">Ok</div>
            <br />
          </div>

          <div>
            Invoice number row: <input id="txt" type="text" name="price" />
            <div class="confirm_button">Ok</div>
            <br />
          </div>

          <div style="
          position: relative;
          left: 35px;">
            Date row: <input id="txt" type="text" name="price" />
            <div class="confirm_button">Ok</div>
            <br />
          </div>

          <div style="transform: translateX(31px);">
            Room row: <input id="txt" type="text" name="price" />
            <div class="confirm_button">Ok</div>
            <br />
          </div>

          <div style="transform: translateX(22.1px);">
            Quantity row: <input id="txt" type="text" name="price" />
            <div class="confirm_button">Ok</div>
            <br />
          </div>

          <div style="transform: translateX(18.1px);">
            Unit price row: <input id="txt" type="text" name="price" />
            <div class="confirm_button">Ok</div>
            <br />
          </div>

          <div style="transform: translateX(24.1px);">
            Amount row: <input id="txt" type="text" name="price" />
            <div class="confirm_button">Ok</div>
            <br />
          </div>

          <div style="transform: translateX(-8.9px);">
          Unit price row ( Total ): <input id="txt" type="text" name="price" />
            <div class="confirm_button">Ok</div>
            <br />
          </div>

          <div style="transform: translateX(-2.9px);">
          Amount row ( Total ): <input id="txt" type="text" name="price" />
            <div class="confirm_button">Ok</div>
            <br />
          </div>

          <button id="export-btn" type="submit" style="display: none">
            Process File
          </button>
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
    @endif @if (session()->has('success'))
    <div class="popup_msg" role="alert">
      <div style="font-size: 23px">Success</div>
      <hr />
      <div style="padding-bottom: 16px">{{ session()->get('success') }}</div>
      <div class="ok_button" onclick="popup_()">Ok</div>
    </div>
    @endif
  </center>
</body>

</html>
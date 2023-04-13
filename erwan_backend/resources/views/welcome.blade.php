<!DOCTYPE html>
<html class="_html">
  <head>
    <title>Excel Import/Export</title>
    <link rel="stylesheet" href="{{ asset('css/app.css') }}" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link
      rel="stylesheet"
      href="https://code.jquery.com/ui/1.13.0/themes/smoothness/jquery-ui.css"
    />
    <script src="https://code.jquery.com/ui/1.13.0/jquery-ui.min.js"></script>
  </head>
  <body>
    <center>
      <div class="all_form" id="movable-div">
        <h1>Excel Import/Export</h1>
        <div class="button-group">
          <form
            method="POST"
            action="{{ route('import') }}"
            enctype="multipart/form-data"
          >
            @csrf
            <label for="file">Import Excel:</label>
            <input
              type="file"
              name="file"
              id="file"
              accept=".xlsx, .xls, .csv"
            />
            <button type="submit">Import</button>
          </form>

          <form
            action="{{ route('export') }}"
            method="POST"
            enctype="multipart/form-data"
          >
            @csrf
            <label for="num_copies">Number of copies:</label>
            <input type="number" name="num_copies" value="1" required min="1" />
            <input type="file" name="file" accept=".xlsx, .xls, .csv" />
            <button type="submit">Process File</button>
          </form>
        </div>
      </div>
    </center>
    <script>
      $(function () {
        $("#movable-div").draggable();
      });
    </script>
  </body>
</html>

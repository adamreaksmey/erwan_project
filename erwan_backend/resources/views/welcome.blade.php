<!DOCTYPE html>
<html>
   <head>
      <title>Excel Import/Export</title>
      <link rel="stylesheet" href="{{ asset('css/app.css') }}">
   </head>
   <body>
      <h1>Excel Import/Export</h1>
      <div class="button-group">
         <form method="POST" action="{{ route('import') }}" enctype="multipart/form-data">
            @csrf
            <label for="file">Import Excel:</label>
            <input type="file" name="file" id="file" accept=".xlsx, .xls, .csv">
            <button type="submit">Import</button>
            ``
         </form>
         <form action="{{ route('export') }}" method="POST" enctype="multipart/form-data">
            @csrf
            <label for="file">Choose a file to edit:</label>
            <input type="file" name="file" class="form-control-file" required>
            <button type="submit">Export Data</button>
         </form>
      </div>
   </body>
   <script>
    // Check if the URL contains the success message
    if (window.location.href.indexOf("?success=") > -1) {
        // Display a pop-up message
        alert("Import success");
    }
</script>
</html>
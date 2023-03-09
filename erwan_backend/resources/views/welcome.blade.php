<!DOCTYPE html>
<html>
<head>
    <title>Excel Import/Export</title>
    <style>
        .button-group {
            display: inline-block;
        }
    </style>
</head>
<body>
    <h1>Excel Import/Export</h1>
    <div class="button-group">
        <form method="post" action="{{ route('import') }}" enctype="multipart/form-data">
            @csrf
            <label for="file">Import Excel:</label>
            <input type="file" name="file" id="file" accept=".xlsx, .xls, .csv">
            <button type="submit">Import</button>
        </form>
        <form action="{{ route('export') }}" method="POST" enctype="multipart/form-data">
    @csrf
    <div class="form-group">
        <label for="file">Choose a file to edit</label>
        <input type="file" name="file" class="form-control-file" required>
    </div>
    <button type="submit" class="btn btn-primary">Export Data</button>
</form>
    </div>
</body>
</html>

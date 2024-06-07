<head>
    <meta name="layout" content="main"/>
</head>
<body>

<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Edit Book</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Edit Book</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">

      <!-- Default box -->
      <div class="card">
        <div class="card-header">
          <h3 class="card-title">Edit Book</h3>

          <div class="card-tools">
            <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
              <i class="fas fa-minus"></i>
            </button>
            <button type="button" class="btn btn-tool" data-card-widget="remove" title="Remove">
              <i class="fas fa-times"></i>
            </button>
          </div>
        </div>
        <div class="card-body">
            <g:form action="update" method="POST" id="${book?.id}">

            <label for="title">Title:</label>
            <g:textField name="title" value="${book?.title}"/>
        <br>
            <label for="releaseDate">Release Date:</label>
            <g:datePicker name="releaseDate" value="${book?.releaseDate}"/>
        <br>
            <label for="author">Author:</label>
            <g:textField name="author" value="${book?.author}"/>
        <br>
            <g:submitButton name="create" value="Edit Book"/>
        </g:form>
        </div>
        <!-- /.card-body -->
        <div class="card-footer">
          <g:link action="index">Back to list</g:link>
        </div>
        <!-- /.card-footer-->
      </div>
      <!-- /.card -->

    </section>
    <!-- /.content -->
  </div>


</body>

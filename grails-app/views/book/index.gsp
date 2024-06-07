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
            <h1>Book List</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Book List</li>
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
          <h3 class="card-title">Book List</h3>

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
          <ul>
        <table>
        <thead>
            <th>No</th>
            <th>Title</th>
            <th>Action</th>
        </thead>
        <tbody>

        <g:each status="no" in="${bookList}" var="book">
        <tr>
            <td>${no+1}</td>
            <td>
            <li><g:link action="show" id="${book.id}">${book.title}</g:link></li>
            </td>
            <td>
            <li><g:link action="update" id="${book.id}">Edit</g:link></li>
            <li><g:link action="destroy" id="${book.id}">Delete</g:link></li>
            </td>
        </tr>
        </g:each>
        </tbody>
        </table>
    </ul>

        </div>
        <!-- /.card-body -->
        <div class="card-footer">
          <g:link action="create">Add New Book</g:link>
        </div>
        <!-- /.card-footer-->
      </div>
      <!-- /.card -->

    </section>
    <!-- /.content -->
  </div>
</body>

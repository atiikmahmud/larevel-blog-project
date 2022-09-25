<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Create Post</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
  </head>
  <body>
    <div class="container">
        <div class="row d-flex justify-content-center">
            <div class="col-md-6">
                <div class="blog-post mt-5">
                    <div class="card">
                        <div class="card-header text-center h3">
                            Create Blog Post
                        </div>
                        <div class="card-body">
                            <div class="form-area">
                                @if(session()->has('success'))
                                    <div class="alert alert-success alert-dismissible fade show" role="alert">
                                        {{ session()->get('success') }}
                                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                                    </div>
                                @endif
                                <form action="{{ route('post.store') }}" method="POST">
                                    @csrf
                                    <div class="form-group mb-3">
                                        <label for="">Post Title</label>
                                        <input type="text" class="form-control mt-1" name="title" placeholder="Post title" required>
                                    </div>
                                    <div class="form-group mb-3">
                                        <label for="">Post Body</label>
                                        <textarea name="body" class="form-control mt-1" id="" cols="30" rows="5" placeholder="Post body" required></textarea>
                                    </div>
                                    <div class="form-group mb-3">
                                        <label for="">Post Tag</label>
                                        <input type="text" class="form-control mt-1" name="tag" placeholder="Post tag" required>
                                    </div>
                                    <div class="form-group">
                                        <button type="submit" class="btn btn-primary">Submit</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
  </body>
</html>

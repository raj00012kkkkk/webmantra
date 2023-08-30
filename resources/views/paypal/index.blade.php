<div class="panel panel-default">
        <div class="panel-body">
         
            @if (session()->has('success'))
                <div class="alert alert-success">
                    {{ session()->get('success') }}
                </div>
            @endif
           <a href="/" class="btn btn-primary text-center">Go To Home Page</a>
        </div>
</div>


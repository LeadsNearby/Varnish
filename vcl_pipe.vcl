sub vcl_pipe {
    set bereq.http.connection = "close";
}

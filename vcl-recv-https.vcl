sub vcl_recv {

	if (req.http.host ~ "mydomain.com" && req.http.X-Forwarded-Proto ~ "(?i)https") {
		set req.backend =  mybackend;
	} elseif (req.http.host ~ "mydomain.com" && req.url ~ "pki-validation") {
		set req.backend = mybackend
	} elseif (req.http.host ~ "mydomain.com" && req.http.X-Forwarded-Proto !~ "(?i)https") {
		set req.http.x-Redir-Url = "https://www.mydomain.com" + req.url;  ## Must Match Subdomain
		error 750 req.http.x-Redir-Url;
	}

}

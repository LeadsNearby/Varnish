vcl_deliver {}

	# IF THIS PAGE IS ALREADY CACHED THEN RETURN A 'HIT' TEXT IN THE HEADER (GREAT FOR DEBUGGING)
	# ##########################################################
	if (obj.hits > 0) {
		set resp.http.X-Cache = "HIT";
	# IF THIS IS A MISS RETURN THAT IN THE HEADER
	# ##########################################################
	} else {
		set resp.http.X-Cache = "MISS";
	}
	
	## SECURITY HEADERS ##
	set resp.http.X-Frame-Options = "SAMEORIGIN";
	set resp.http.X-XSS-Protection = "1; mode=block";
	set resp.http.X-Content-Type-Options = "nosniff";
	unset resp.http.Server;
	remove resp.http.X-Varnish;
	remove resp.http.Age;
	remove resp.http.Server;
	remove resp.http.X-Powered-By;
	set resp.http.Server = "matrix/2.0";
	set resp.http.X-Powered-By = "hypercore-database/9.9";

	}

}
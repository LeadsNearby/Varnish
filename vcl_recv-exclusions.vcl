sub vlc_recv {

	if (req.url ~ "service-area|areas-served|reviews|local-hvac-services|garage-door-company|local-plumber-hvac|customer-reviews|local-electricians|certified-electricians|commercial-kitchen-equipment")
			{
		return (pass);
	}
	  if (req.url ~ "hvac-plumber-services|contact|air-conditioning-service|heating-ac-services|local-plumber|heating-and-cooling|local-pool-service|air-conditioning-and-heating-services|customer-reviews")
			{
		return (pass);
	}
	 if (req.url ~ "customer-reviews|local-restoration-services|local-hvac-services|local-fire-protection|testimonials|heating-and-air-company")
			{
		return (pass);
	}
	  if (req.url ~ "portal") {
		return (pipe);
	}

}
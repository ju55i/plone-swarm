vcl 4.0;

import std;

backend default {
    .host = "traefik";
    .port = "80";
}

sub vcl_recv {
   if (std.port(local.ip) == 80) {
     return (synth(700));
   }
}

sub vcl_synth {
  if (resp.status == 700) {
    set resp.http.location = "https://" + req.http.host + req.url;
    set resp.status = 302;
    return (deliver);
  }
}

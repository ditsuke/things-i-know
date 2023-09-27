> A CORS preflight request is a [CORS](https://developer.mozilla.org/en-US/docs/Glossary/CORS) request that checks to see if the CORS protocol is understood and a server is aware using specific methods and headers.
> 
> It is an [`OPTIONS`](https://developer.mozilla.org/en-US/docs/Web/HTTP/Methods/OPTIONS) request, using three HTTP request headers: [`Access-Control-Request-Method`](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Access-Control-Request-Method), [`Access-Control-Request-Headers`](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Access-Control-Request-Headers), and the [`Origin`](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Origin) header.
> 
> A preflight request is automatically issued by a browser and in normal cases, front-end developers don't need to craft such requests themselves. It appears when request is qualified as ["to be preflighted"](https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS#preflighted_requests) and omitted for [simple requests](https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS#simple_requests).

Ref: https://developer.mozilla.org/en-US/docs/Glossary/Preflight_request
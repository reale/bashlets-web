# bashlets-web

* bashlets.web.api: interact with public APIs
* bashlets.web.client
* bashlets.web.scrapers
* bashlets.web.server


## Additional Requirements

For bashlets.web.api:

* `gunzip`
* `lynx`


## Examples

### API: describing a sequence of integers

	$ source bashlets web::api::oeis
	$ bash$$ oeis describe_sequences_by_points 1 1 2 3 5 | head -1
	Fibonacci numbers: F(n) = F(n-1) + F(n-2) with F(0) = 0 and F(1) = 1.

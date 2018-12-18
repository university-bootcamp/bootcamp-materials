uri = UrlParser.new("http://foo.com/posts?id=30&limit=5#time=1305298413")

uri.scheme
#=> "http"

uri.host
#=> "foo.com"

uri.path
#=> "/posts"

uri.query
#=> "id=30&limit=5"

uri.fragment
#=> "time=1305298413"

uri.to_s
#=> "http://foo.com/posts?id=30&limit=5#time=1305298413"

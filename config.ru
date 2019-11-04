app = Rack::Builder.new do
    use Rack::Static, urls: [""], root: "app", index: "index.html"
    run proc {|env| [404, {"Content-Type" => "text/html"}, ["Page not found"]] }
  end
  
  run app
html = File.read("index.html")
run Proc.new { |env| 
  ['200', {"Content-Type" => "text/html"}, [html]]
}

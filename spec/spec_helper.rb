def parsed_css
  parser = CssParser::Parser.new
  parser.load_uri!('./style.css')
  parser.load_uri!('main.css')
  parser
end
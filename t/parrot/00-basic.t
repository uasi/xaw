.include 'library/LibXML.pir'

.sub 'main' :main
    .include 'test_more.pir'

    plan(2)
    
    .local pmc parser, doc, node
    
    parser = new 'HTMLParser'
    doc = parser.'parse_file'('t/resources/simple.html')
    $S0 = doc
    is($S0, <<'EOD', 'HTMLParser.parse_file()')
<?xml version="1.0" encoding="utf-8" standalone="yes"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" "http://www.w3.org/TR/REC-html40/loose.dtd">
<html>
  <body>simple</body>
</html>
EOD

    node = doc.'child'()
    $S0 = node.'name'()
    is($S0, 'html', 'XMLNode.name()')
.end


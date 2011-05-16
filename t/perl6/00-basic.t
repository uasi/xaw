use v6;

use Test;
use LibXML;

plan 2;

my $parser = LibXML::HTMLParser.new();
my $doc = $parser.parse-file('t/resources/simple.html');
my $doc-str = Q{<?xml version="1.0" encoding="utf-8" standalone="yes"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" "http://www.w3.org/TR/REC-html40/loose.dtd">
<html>
  <body>simple</body>
</html>
};
is ~$doc, $doc-str, 'HTMLParser.parse-file()';

my $node = $doc.child;
is $node.name, 'html', 'XMLNode.name()';

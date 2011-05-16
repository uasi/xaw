use v6;

use LibXML::XMLNode;
use LibXML::HTMLDoc;


class LibXML::HTMLParser {
    has $!pmc;
    
    submethod BUILD() {
        $!pmc = Q:PIR { %r = new 'HTMLParser' };
    }

    method parse-file($file) {
        LibXML::HTMLDoc.new(
            pmc => $!pmc.parse_file(~$file)
        );
    }
}

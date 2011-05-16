use v6;

use LibXML::XMLNode;
use LibXML::HTMLDoc;
use LibXML::HTMLParser;

INIT {
    Q:PIR {
        $P0 = loadlib 'dynext/libxml_group'
        $P1 = dlfunc $P0, 'LibXML_init', 'v'
        $P1()
    };
}


use v6;

use LibXML::XMLNode;


class LibXML::HTMLDoc {
    has $!pmc;

    method child() {
        LibXML::XMLNode.new(
            pmc => $!pmc.child()
        );
    }

    method Str() {
        ~$!pmc;
    }
}

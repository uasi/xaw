use v6;


class LibXML::XMLNode {
    has $!pmc;

    method name() {
        ~$!pmc.name();
    }

    method next() {
        LibXML::XMLNode.new(
            pmc => $!pmc.next()
        );
    }

    method path() {
        ~$!pmc.path();
    }
}

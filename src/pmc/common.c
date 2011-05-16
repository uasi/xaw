#include "common.h"


INTVAL XMLNode_type = 0;
INTVAL HTMLDoc_type = 0;


PARROT_EXPORT
void LibXML_init(PARROT_INTERP)
{
    static int initialized = 0;
    if (initialized) return;
    initialized = 1;

    XMLNode_type = Parrot_pmc_get_type_str(interp, Parrot_str_new_constant(interp, "XMLNode"));
    HTMLDoc_type = Parrot_pmc_get_type_str(interp, Parrot_str_new_constant(interp, "HTMLDoc"));
}

PMC *XMLNode_new(PARROT_INTERP, xmlNodePtr node)
{
    PMC *xmlNode = Parrot_pmc_new(interp, XMLNode_type);
    VTABLE_set_pointer(interp, xmlNode, node);
    return xmlNode;
}

PMC *HTMLDoc_new(PARROT_INTERP, htmlDocPtr doc)
{
    PMC *htmlDoc = Parrot_pmc_new(interp, HTMLDoc_type);
    VTABLE_set_pointer(interp, htmlDoc, doc);
    return htmlDoc;
}


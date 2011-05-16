#ifndef COMMON_H_INCLUDED
#define COMMON_H_INCLUDED

#include <parrot/parrot.h>
#include <libxml/HTMLParser.h>


extern INTVAL XMLNode_type;
extern INTVAL HTMLDoc_type;

PARROT_EXPORT
void LibXML_init(PARROT_INTERP);

PMC *XMLNode_new(PARROT_INTERP, xmlNodePtr node);
PMC *HTMLDoc_new(PARROT_INTERP, htmlDocPtr doc);


#endif


#ifndef POINTER_H_INCLUDED
#define POINTER_H_INCLUDED

#include "pmc/pmc_pointer.h"

#define DEFINE_POINTER_ACCESSOR(type) typedef type POINTER_ACCESSOR_TYPE;

#define GET_PTR(self) ((POINTER_ACCESSOR_TYPE)PARROT_POINTER(self)->pointer)
#define SET_PTR(self, ptr) (PARROT_POINTER(self)->pointer = (POINTER_ACCESSOR_TYPE)(ptr))

#endif

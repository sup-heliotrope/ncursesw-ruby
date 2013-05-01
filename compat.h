#ifndef _COMPAT_H
#define _COMPAT_H

#ifndef STR2CSTR
#define STR2CSTR(x) ({ VALUE y = x; StringValuePtr (y); })
#endif

#endif

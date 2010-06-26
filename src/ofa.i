%module ofa

%inline %{
#include <ofa1/ofa.h>
%}

%include typemaps.i

%rename(version) ofa_get_version;
void ofa_get_version(int *OUTPUT, int *OUTPUT, int *OUTPUT);

%rename(create_fingerprint) wrap_create_fingerprint;
%inline %{
const char *wrap_create_fingerprint(const char *data, long size, int sRate, bool stereo) {
#ifdef WORDS_BIGENDIAN
#define ENDIANESS (1)
#else
#define ENDIANESS (0)
#endif
        return ofa_create_print((unsigned char *)data, ENDIANESS, size, sRate, stereo ? 1 : 0);
}
%}


%module ofa

#define LITTLE_ENDIAN (0)
#define BIG_ENDIAN (1)

%include typemaps.i

%rename(version) ofa_get_version;
void ofa_get_version(int *OUTPUT, int *OUTPUT, int *OUTPUT);

%rename(create_fingerprint) ofa_create_print;
const char *ofa_create_print(const char *data, int byteOrder, long size, int sRate, int stereo);


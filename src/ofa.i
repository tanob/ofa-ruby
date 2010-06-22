%module ofa

#define OFA_LITTLE_ENDIAN (0)
#define OFA_BIG_ENDIAN (1)

%include typemaps.i

%rename(version) ofa_get_version;
void ofa_get_version(int *OUTPUT, int *OUTPUT, int *OUTPUT);

%rename(create_fingerprint) ofa_create_print;
const char *ofa_create_print(unsigned char* INPUT, int byteOrder, long size, int sRate, int stereo);


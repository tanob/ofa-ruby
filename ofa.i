%module ofa

#define OFA_LITTLE_ENDIAN (0)
#define OFA_BIG_ENDIAN (1)

%rename(get_version) ofa_get_version;
void ofa_get_version(int *major, int *minor, int *rev);

%rename(create_fingerprint) ofa_create_print;
const char *ofa_create_print(unsigned char* samples, int byteOrder, long size, int sRate, int stereo);


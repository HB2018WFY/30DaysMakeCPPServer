#include "util.h"
#include<cstdio>
#include<stdlib.h>

void errif(bool errcondion,const char* errmessage){
    if(errcondion){
        perror(errmessage);
        exit(EXIT_FAILURE);
    }
}
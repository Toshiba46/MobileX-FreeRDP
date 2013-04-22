#ifndef __MOBILEX_FREERDP_H
#define __MOBILEX_FREERDP_H

#include <jni.h>
#include <pthread.h>
#include <freerdp/freerdp.h>

JNIEXPORT void JNICALL jni_mobilex_rdpserver_runserver(JNIEnv *env, jclass cls);

#endif
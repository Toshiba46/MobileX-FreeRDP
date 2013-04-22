#include <jni.h>

#include "mobilex_rdpserver.h"
#include "xrdp.h"

JNIEXPORT void JNICALL 
jni_mobilex_rdpserver_runserver(JNIEnv *env, jclass cls)
{
	  return RunRDPServer();
}


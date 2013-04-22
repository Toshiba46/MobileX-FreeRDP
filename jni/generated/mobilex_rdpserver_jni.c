#include "mobilex_rdpserver.h"
#include "mobilex_rdpserver_jni.h"

JNIEXPORT void JNICALL 
Java_com_fisil_freerdp_app_RDPServer_RunServer(JNIEnv *env, jclass cls)
{
	return jni_mobilex_rdpserver_runserver(env, cls);
}
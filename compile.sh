MAIN_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
JAVA_DIR="/usr/lib/jvm/java-6-oracle/"
XRDP_DIR="$MAIN_DIR/third-party/xrdp"
XRDP_SRC_DIR="$MAIN_DIR/third-party/xrdp/xrdp"
XRDP_SOURCES="$XRDP_SRC_DIR/funcs.c $XRDP_SRC_DIR/lang.c  $XRDP_SRC_DIR/xrdp_bitmap.c $XRDP_SRC_DIR/xrdp.c $XRDP_SRC_DIR/xrdp_cache.c $XRDP_SRC_DIR/xrdp_font.c $XRDP_SRC_DIR/xrdp_listen.c $XRDP_SRC_DIR/xrdp_login_wnd.c $XRDP_SRC_DIR/xrdp_mm.c $XRDP_SRC_DIR/xrdp_painter.c $XRDP_SRC_DIR/xrdp_process.c $XRDP_SRC_DIR/xrdp_region.c $XRDP_SRC_DIR/xrdp_wm.c"

XRDP_INCLUDES="-I$XRDP_DIR/common -I$XRDP_DIR/freerdp1 -I$XRDP_DIR/libxrdp -I$XRDP_DIR/xrdp -I$XRDP_DIR" 
gcc -I$JAVA_DIR/include -I$JAVA_DIR/include/linux $XRDP_INCLUDES -I"third-party/FreeRDP/include" -I"jni" -I"jni/generated" -o bin/libRDPServer.so -shared jni/mobilex_rdpserver.c jni/mobilex_rdpserver.h jni/generated/mobilex_rdpserver_jni.c $XRDP_SOURCES bin/libcommon.a bin/libxrdp.a -lcrypto -lssl -lpthread

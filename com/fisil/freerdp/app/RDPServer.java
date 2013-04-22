package com.fisil.freerdp.app;

//import com.fisil.freerdp.services.LibMobileXfreeRDP;

public class RDPServer
{
	public static native void RunServer();
	      
        public static void main(String[] args) {
		RunServer();
		return;
	}
	static {
		System.loadLibrary("RDPServer");
	}
}
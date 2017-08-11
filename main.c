#include <psp2/io/fcntl.h>
#include <psp2/power.h>
int main(int argc, char *argv[]){
	sceIoRename("ur0:tai/gamesd.skprx","ur0:tai/gamesdTEMP.skprx");
	sceIoRename("ur0:tai/gamesd2.skprx","ur0:tai/gamesd.skprx");
	sceIoRename("ur0:tai/gamesdTEMP.skprx","ur0:tai/gamesd2.skprx");
	scePowerRequestColdReset();
	return 0;	
}
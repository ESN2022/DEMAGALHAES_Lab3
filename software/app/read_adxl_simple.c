
#include "opencores_i2c_regs.h"
#include "opencores_i2c.h"
#include "system.h"
#include "sys/alt_stdio.h"
#include "alt_types.h"
#include "io.h"
#include "unistd.h"

int main(){
	if (I2C_start(I2C_BASE,0x1D,1)==0) {
		alt_printf("ADXL bien configurer");
	}
	
	while (1){
	}
	return 0;
}
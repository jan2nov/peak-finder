#include <stdio.h>


__global__ void peak_list(int i){	
	for (int j =0; j < 5; j++){
		printf("Kernel launch %d", threadIdx.x);
	}
}

int main(int argc, char* argv[])
{

	cudaSetDevice(1);
	peak_list<<<1,1>>>(1);

	printf("\n\nThat's All folks!\n");
	return 0;
}

#include <stdio.h>
#include <sys/time.h>
 
int main() {
    struct timeval start, end;
    gettimeofday( &start, NULL );
	int i;
	for( i = 0; i < 1000000; i++){
		printf("fdsaf");	
	}
    gettimeofday( &end, NULL );
  //  int timeuse = 1000 * ( end.tv_sec - start.tv_sec ) + end.tv_usec - start.tv_usec;
    int timeuse = end.tv_usec - start.tv_usec;
    printf("time: %d ms\n", timeuse);
    return 0;
}

__kernel void vector_convert(__global int*A,__global int *C)
{
	 int id=get_global_id(0);
	 int i=0,j,k;
	 int num=A[id];
	 C[id]=0;
	 while(num>0)
	 {
	 	j=i;
	 	int d=num%10;
	 	num=num/10;
	 	if(d==0) d=1;
	 	else if(d==1) d=0;
	 	while(j--) d*=10;
	 	C[id]=C[id]+d;
	 	i++;
	 }
}
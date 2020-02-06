__kernel void vector_convert(__global int*A,__global int *C)
{
	 int i=get_global_id(0);
	 int oct=0;
	 int d,num=A[i];
	 while(num>0)
	 {
	 	d=num%8;
	 	num=num/8;
	 	oct=oct*10+d;
	 }
	 num=oct;
	 oct=0;
	 int fl=0;
	 while(num>0)
	 {
	 	d=num%10;
	 	num=num/10;
	 	oct=oct*10+d;
	 }
	 if(A[i]==8)
	 oct*=10;
	 C[i]=oct;
}
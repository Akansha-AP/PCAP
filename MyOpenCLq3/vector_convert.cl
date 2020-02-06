__kernel void vector_convert(__global int *A)
{
	 int i=get_global_id(0);
	 int num=A[i*2];
	 A[i*2]=A[i*2+1];
	 A[i*2+1]=num;
}
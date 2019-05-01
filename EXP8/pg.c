#include<stdio.h>
#include<math.h>
#include<stdlib.h>
int main(int argc, char **argv)
{
	float n=4;
	printf("Let us assume there are %.0f nodes\n",n);

	float A,B,C,D;
	A=1/n,B=1/n,C=1/n,D=1/n;
	printf("Initial Stage of A = %f\n",A);
	printf("Initial Stage of B = %f\n",B);
	printf("Initial Stage of C = %f\n",C);
	printf("Initial Stage of D = %f\n",D);
	printf("A----------------------------------->B\n");
	printf("^                                   ^|\n");
	printf("|                                   ||\n");
	printf("|                                   ||\n");
	printf("\\/                                  ||\n");
	printf("C------------------------------------|\n");
	printf("^                                    |\n");
	printf("|                                    |\n");
	printf("\\/                                   |\n");
	printf("D<-----------------------------------|\n");


	int ia=1,ib=2,ic=2,id=2;
	int oa=2,ob=1,oc=3,od=1;
	float pra,prb,prc,prd;
	printf("First Iteration \n\n");
	pra=C/oc;
	prb=A/oa+C/oc;
	prc=A/oa+D/od;
	prd=C/oc+B/ob;
	printf("A=%f\n",pra);
	printf("B=%f\n",prb);
	printf("C=%f\n",prc);
	printf("D=%f\n",prd);

	printf("\nSecond Iteration\n");
	A=pra;pra=0;
	B=prb;prb=0;
	C=prc;prc=0;
	D=prd;prd=0;

	pra=C/oc;
	prb=A/oa+C/oc;
	prc=A/oa+D/od;
	prd=C/oc+B/ob;

	float prototal=pra+prb+prc+prd;
	printf("A=%f\n",pra);
	printf("B=%f\n",prb);
	printf("C=%f\n",prc);
	printf("D=%f\n",prd);
	printf("PROTOAL = %f\n",prototal);

	if(pra>prb)
	{
		if(pra>prc)
		{
			if(pra>prd)
				printf("A is most searched website");
		}
	}
	if(prb>pra)
	{
		if(prb>prc)
		{
			if(prb>prd)
				printf("B is most searched website");
		}
	}
	if(prc>pra)
	{
		if(prc>prb)
		{
			if(prc>prd)
				printf("C is most searched website");
		}
	}
	if(prd>pra)
	{
		if(prd>prb)
		{
			if(prd>prc)
				printf("D is most searched website");
		}
	}
return 0;
}

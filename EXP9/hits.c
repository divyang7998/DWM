#include<stdio.h>
#include<string.h>
#include<math.h>
int a=65;
int main(int argc, char **argv)
{
		int inputmatrix[4][4]={0,1,1,1,
					1,1,1,0,
					0,0,1,1,
					0,0,1,0};
		int u[4]={1,1,1,1};
		int v[4]={0};
		int transposeinput[4][4]={0};
		int sum=0;
		printf("\nINPUT MATRIX is\n\tA\tB\tC\tD\n");
		for(int i=0; i<4;i++)
		{
			printf("%c\t",a+i);
			for(int j=0;j<4;j++)
			{
				printf("%d\t",inputmatrix[i][j]);
				transposeinput[j][i]=inputmatrix[i][j];
			}
			printf("\n");
		}
		printf("\nTranspose Matrix is \n\tA\tB\tC\tD\n");
		for(int i=0;i<4;i++)
		{
			printf("%c\t",a+i);
			for(int j=0;j<4;j++)
			{
				printf("%d\t",transposeinput[i][j]);
				for(int k=0;k<4;k++)
				{
					sum=sum+transposeinput[i][k]*u[k];
				}
				v[i]=sum;
				sum=0;
			}
			printf("\n");
		}
		for(int i=0;i<4;i++)
		{
			for(int j=0;j<4;j++)
			{
				for(int k=0;k<4;k++)
				{
					sum=sum+inputmatrix[i][k]*v[k];
				}
				u[i]=sum;
				sum=0;
			}
			printf("\n");
		}
		printf("\n\tUHUB\tVAUTH\n");
		for(int i=0;i<4;i++)
		{
			printf("%c\t%d\t%d\n",a+i,u[i],v[i]);
		}
		return 0;
}

#include <stdio.h>

void sort (int v[], int n);

void swap(int v[], int k);

int main(void)

{

	int arr[5], i, n=5;

	printf("정렬할 정수 5개를 입력 하세요:");

	for( i = 0; i < n; i++)

	{

		scanf("%d", &arr[i]);

	}

	sort ( arr, n);

	printf("정렬 결과:");

	for( i = 0; i < 5; i++)

	{

		printf(" %d", arr[i]);

	}

	printf("\n");

	return 0;

}

void sort (int v[], int n)

{

	int i, j;

	for (i = 0; i < n; i += 1) {

		for (j = i - 1; j >= 0 ; j -= 1)

		{

			if( v[j] > v[j + 1]) swap( v, j);

		}

	}

}

void swap(int v[], int k)

{

	int temp;

	temp = v[k];

	v[k] = v[k+1];

	v[k+1] = temp;

}




#include <stdio.h>


int sub(int a, int b) {
	return a-b;
}

int main() {
	int a,b;
	if(sub(a,b) >=0)
		return 1;
	else
		return 0;
}


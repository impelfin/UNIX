#include <stdio.h>

int main() {
	char a[100];
	printf("Input the string : ");
	int cnt=0;
	scanf("%s", a);

	while(a[cnt]!=0) {
		cnt++;
	}
	printf("String Length : %d \n", cnt);
	return 0;
}

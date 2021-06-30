all.exe :
	gcc  -Wall -o bank login.c bank_management_syste.c
# gcc -include file2.c file1.c

# -Wall ：compile 中如果有處理會顯示出來

clean:

	rm -rf bank

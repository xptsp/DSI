#include <windows.h>
#include <stdio.h>

// Alternatively, you can include CabLite.h and add link to CabLite.lib at
// link-time to avoid the manual library loading and eliminate the need for
// these typedefs.
typedef HANDLE (WINAPI *PFNCABFILEASYNC)(LPCSTR, LPCSTR, PVOID);

void CALLBACK threadexit( DWORD dwResult, LPCSTR lpszInput )
{
	printf("TID %4d finished %-32s with code %08x\n",
	       GetCurrentThreadId(),
	       lpszInput,
	       dwResult);
}

int main( )
{
	HMODULE hCabLite;
	PFNCABFILEASYNC pfnCabFileAsync;
	HANDLE hThread[5];
	int i;

	hCabLite = LoadLibrary(TEXT("CabLite.dll"));
	if (hCabLite == NULL) return(1);

	pfnCabFileAsync = (PFNCABFILEASYNC)GetProcAddress(hCabLite, "CabFileAsync");

	if (pfnCabFileAsync)
	{
		hThread[0] = pfnCabFileAsync("C:\\Windows\\system32\\shell32.dll", "C:\\CabLiteTemp\\shell32.dl_", threadexit);
		hThread[1] = pfnCabFileAsync("C:\\Windows\\system32\\kernel32.dll", "C:\\CabLiteTemp\\kernel32.dl_", threadexit);
		hThread[2] = pfnCabFileAsync("C:\\Windows\\system32\\wmp.dll", "C:\\CabLiteTemp\\wmp.dl_", threadexit);
		hThread[3] = pfnCabFileAsync("C:\\Windows\\explorer.exe", "C:\\CabLiteTemp\\explorer.ex_", threadexit);
		hThread[4] = pfnCabFileAsync("C:\\Windows\\notepad.exe", "C:\\CabLiteTemp\\notepad.ex_", threadexit);
	}

	for (i = 0; i < 5; ++i)
		WaitForSingleObject(hThread[i], INFINITE);

	for (i = 0; i < 5; ++i)
		CloseHandle(hThread[i]);

	printf("\nAll threads have exited\n\n");

	FreeLibrary(hCabLite);

	printf("Press [ENTER] to exit . . .\n");
	getchar();

	return(0);
}

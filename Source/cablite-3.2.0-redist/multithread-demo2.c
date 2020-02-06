#include <windows.h>
#include <stdio.h>

// Alternatively, you can include CabLite.h and add link to CabLite.lib at
// link-time to avoid the manual library loading and eliminate the need for
// these typedefs.
typedef HANDLE (WINAPI *PFNCABDIRECTORYASYNC)(LPCSTR, LPCSTR, PVOID, PVOID);

void CALLBACK cabdirstatus( LPCSTR pszFile, WORD wDone, WORD wTotal )
{
	CHAR szNowDoing[MAX_PATH];

	if (strlen(pszFile))
		sprintf(szNowDoing, "compressing %s", pszFile);
	else
		strcpy(szNowDoing, "writing cabinet");

	printf("TID %4d completed %2d/%2d; now %s\n",
	       GetCurrentThreadId(),
	       wDone, wTotal,
	       szNowDoing);
}

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
	PFNCABDIRECTORYASYNC pfnCabDirectoryAsync;
	HANDLE hThread[3];
	int i;

	hCabLite = LoadLibrary(TEXT("CabLite.dll"));
	if (hCabLite == NULL) return(1);

	pfnCabDirectoryAsync = (PFNCABDIRECTORYASYNC)GetProcAddress(hCabLite, "CabDirectoryAsync");

	if (pfnCabDirectoryAsync)
	{
		hThread[0] = pfnCabDirectoryAsync("C:\\WINDOWS\\Resources\\Themes\\Luna", "C:\\CabLiteTemp\\Luna.cab", cabdirstatus, threadexit);
		hThread[1] = pfnCabDirectoryAsync("C:\\WINDOWS\\AppPatch", "C:\\CabLiteTemp\\AppPatch.cab", cabdirstatus, threadexit);
		hThread[2] = pfnCabDirectoryAsync("C:\\WINDOWS\\Web\\Wallpaper", "C:\\CabLiteTemp\\Wallpaper.cab", cabdirstatus, threadexit);
	}

	for (i = 0; i < 3; ++i)
		WaitForSingleObject(hThread[i], INFINITE);

	for (i = 0; i < 3; ++i)
		CloseHandle(hThread[i]);

	printf("\nAll threads have exited\n\n");

	FreeLibrary(hCabLite);

	printf("Press [ENTER] to exit . . .\n");
	getchar();

	return(0);
}

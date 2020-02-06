#include <windows.h>
#include <stdio.h>

// Alternatively, you can include CabLite.h and add link to CabLite.lib at
// link-time to avoid the manual library loading and eliminate the need for
// these typedefs.
typedef DWORD (WINAPI *PFNCABFILE)(LPCSTR, LPCSTR);
typedef DWORD (WINAPI *PFNCABDIRECTORY)(LPCSTR, LPCSTR, PVOID);
typedef WORD (WINAPI *PFNCABEXTRACT)(LPCSTR, LPCSTR, PVOID);
typedef HANDLE (WINAPI *PFNCABSTART)(LPCSTR, USHORT);
typedef WORD (WINAPI *PFNCABADD)(HANDLE, LPCSTR, LPCSTR);
typedef WORD (WINAPI *PFNCABADDSTEP)(HANDLE, WORD);
typedef BOOL (WINAPI *PFNCABFINISH)(HANDLE);

void CALLBACK printstatus( LPCSTR lpszCurrentFile,
                           WORD wCompletedFiles,
                           WORD wTotalFiles )
{
	if (strlen(lpszCurrentFile))
	{
		printf("%2d/%2d files completed; now compressing %-30s\r",
		       wCompletedFiles,
		       wTotalFiles,
		       lpszCurrentFile);
	}
	else
	{
		printf("%2d/%2d files completed; now writing cabinet to disk                   \r",
		       wCompletedFiles,
		       wTotalFiles);
	}
}

int main( )
{
	LPCSTR lpszSource, lpszDest;
	DWORD dwResult;
	WORD wFiles;
	HANDLE hCab;

	HMODULE hCabLite;
	PFNCABFILE pfnCabFile;
	PFNCABDIRECTORY pfnCabDirectory;
	PFNCABEXTRACT pfnCabExtract;
	PFNCABSTART pfnCabStart;
	PFNCABADD pfnCabAdd;
	PFNCABADD pfnCabAddStepInit;
	PFNCABADDSTEP pfnCabAddStep;
	PFNCABFINISH pfnCabFinish;

	hCabLite = LoadLibrary(TEXT("CabLite.dll"));
	if (hCabLite == NULL) return(1);

	pfnCabFile = (PFNCABFILE)GetProcAddress(hCabLite, "CabFile");
	pfnCabDirectory = (PFNCABDIRECTORY)GetProcAddress(hCabLite, "CabDirectory");
	pfnCabExtract = (PFNCABEXTRACT)GetProcAddress(hCabLite, "CabExtract");
	pfnCabStart = (PFNCABSTART)GetProcAddress(hCabLite, "CabStart");
	pfnCabAdd = (PFNCABADD)GetProcAddress(hCabLite, "CabAdd");
	pfnCabAddStepInit = (PFNCABADD)GetProcAddress(hCabLite, "CabAddStepInit");
	pfnCabAddStep = (PFNCABADDSTEP)GetProcAddress(hCabLite, "CabAddStep");
	pfnCabFinish = (PFNCABFINISH)GetProcAddress(hCabLite, "CabFinish");

	if (pfnCabFile)
	{
		lpszSource = "C:\\Windows\\notepad.exe";
		lpszDest = "C:\\CabLiteTemp\\notepad.ex_";
		printf("Compressing %s to %s ...\n", lpszSource, lpszDest);
		dwResult = pfnCabFile(lpszSource, lpszDest);
		printf("DONE (code: %08X)\n\n\n", dwResult);
	}

	if (pfnCabDirectory)
	{
		lpszSource = "C:\\Windows\\AppPatch";
		lpszDest = "C:\\CabLiteTemp\\AppPatch.cab";
		printf("Compressing %s to %s ...\n", lpszSource, lpszDest);
		dwResult = pfnCabDirectory(lpszSource, lpszDest, printstatus);
		printf("\nFiles Added: %d, Status Code: %d, Extended Status Code: %d\n\n\n",
		       HIWORD(dwResult), dwResult & 1, (dwResult & 0x3C) >> 2);
	}

	if (pfnCabExtract)
	{
		lpszSource = "C:\\CabLiteTemp\\AppPatch.cab";
		printf("Extracting %s ... ", lpszSource);
		wFiles = pfnCabExtract(lpszSource, NULL, NULL);
		printf("%d file(s) extracted\n\n\n", wFiles);

		lpszSource = "C:\\CabLiteTemp\\notepad.ex_";
		printf("Extracting %s ... ", lpszSource);
		wFiles = pfnCabExtract(lpszSource, NULL, NULL);
		printf("%d file(s) extracted\n\n\n", wFiles);
	}

	if (pfnCabStart && pfnCabAdd && pfnCabFinish && pfnCabAddStepInit && pfnCabAddStep)
	{
		unsigned short i, max;

		lpszDest = "C:\\CabLiteTemp\\manual.cab";
		printf("Creating %s ... ", lpszDest);
		hCab = pfnCabStart(lpszDest, 0);
		wFiles  = 0;
		wFiles += pfnCabAdd(hCab, "C:\\CabLiteTemp\\AppPatch", NULL);
		wFiles += pfnCabAdd(hCab, "C:\\CabLiteTemp\\notepad.exe", "dir1\\np.exe");
		pfnCabFinish(hCab);
		printf("%d files added\n\n\n", wFiles);

		lpszDest = "C:\\CabLiteTemp\\stepadd.cab";
		printf("Creating %s ...\n", lpszDest);
		hCab = pfnCabStart(lpszDest, 0);
		wFiles  = 0;
		max = pfnCabAddStepInit(hCab, "C:\\CabLiteTemp\\AppPatch", "Step\\Add");
		for (i = 0; i <= max; ++i)
		{
			printf("CabAddStep: %2d of %2d files processed\n", i, max);
			wFiles += pfnCabAddStep(hCab, i);
		}
		pfnCabFinish(hCab);
		printf("%d files added\n\n", wFiles);
	}

	FreeLibrary(hCabLite);

	printf("Press [ENTER] to exit . . .\n");
	getchar();

	return(0);
}

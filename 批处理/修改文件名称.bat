chcp 65001
set subject="学科"
set chapter="第一章"
set type="cpp"
set separator="-"
set /a yes=0
set /a no=0
echo 完成情况>result.txt
for /f "tokens=1,2 delims=	" %%i in (学号表.txt) do IF EXIST *%%i* (ren *%%i* %%i%separator%%%j%separator%%subject%%separator%%chapter%.%type%
echo %%i 	完成>>result.txt
set /a yes+=1 ) ELSE ( echo %%i 	未完成>>result.txt
set /a no+=1 ) 
echo 完成人数：%yes%>>result.txt
echo 未完成人数：%no%>>result.txt
set /a total=%yes%+%no%
echo 总人数：%total%>>result.txt
@echo off
title ��Ŀ�����ű�

echo ����׼��������Ŀ...

rem ��� Node.js �Ƿ��Ѱ�װ
where node >nul 2>nul
if %errorlevel% neq 0 (
    echo ����: δ�ҵ� Node.js����ȷ�� Node.js �Ѱ�װ����ӵ�ϵͳ PATH��
    goto :end
)

rem ��� npm �Ƿ��Ѱ�װ
where npm >nul 2>nul
if %errorlevel% neq 0 (
    echo ����: δ�ҵ� npm����ȷ�� Node.js ����ȷ��װ��
    goto :end
)

rem ��� package.json �Ƿ����
if not exist "package.json" (
    echo ����: ��ǰĿ¼��δ�ҵ� package.json �ļ���
    echo ��ȷ���ű�����Ŀ��Ŀ¼�����С�
    goto :end
)

rem ִ�� npm run restart
echo ����ִ�� "npm run restart"...
npm run restart

:end
echo �ű�ִ����ɡ���������˳�...
pause >nul
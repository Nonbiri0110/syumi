@echo off
title �L�������^�C�s���O
set acount=0
set mcount=0
set ascore=0
set mscore=0
set thround=0
set round=10

:title
title �L�������^�C�s���O - �^�C�g��
cls
echo �L�������^�C�s���O Ver.0.5.1
echo ����:start:�Q�[�����X�^�[�g����
echo      settings:�ݒ���J��
echo      info:���̃Q�[���̐���
echo      score:���݂̍��v���𐔁A�s���𐔂�\��
echo      exit:�Q�[�����I������
echo ���݂̃��E���h�ݒ萔��%round%�ł�
set select=���͂���Ă��܂���
set /p select=�������͂��Ă�:
if %select%==start (
goto start
) else if %select%==exit (
exit
) else if %select%==settings (
goto settings
) else if %select%==info (
goto info
) else if %select%==score (
goto score
) else (
echo �\�����ꂽ����̂ǂꂩ����͂��Ă��������B
echo 3�b��Ɏ����I�Ƀ^�C�g����ʂɖ߂�܂��c
timeout /t 3 /nobreak >nul
goto title
)

:score
cls
title �L�������^�C�s���O - ���݂̍��v���𐔁A�s����
echo ���݂̍��v����:%ascore%
echo ���݂̍��v�s����:%mscore%
echo;
echo �^�C�g����ʂɖ߂�ɂ͉����L�[�������Ă��������B
pause >nul
goto title

:info
cls
title �L�������^�C�s���O - ����
echo ���̃Q�[���ɂ���:
echo ��u�����o�Ă��鐔�����o���đłS�~�^�C�s���O�Q�[���ł��B
echo;
echo �ݒ�ɂ���:
echo ���̃Q�[���̐ݒ�̓Q�[������邽�тɃ��Z�b�g����܂��B
echo;
echo ���E���h�ɂ���:
echo ���������烊�U���g�Œ��f���邩�̐ݒ�ł��B
echo ���E���h��10�̏ꍇ�A10�����
echo;
echo ����:next:������
echo      exit:�^�C�g����ʂɖ߂�
echo �������͂��Ă�������:
echo;
echo ���̂悤�ȉ�ʂ��o�Ă��܂��B
echo;
echo �^�C�g����ʂɖ߂�ɂ͉����L�[�������Ă��������B
pause >nul
goto title

:settings
cls
title �L�������^�C�s���O - �ݒ�
echo �ݒ�
echo ����:round:1���E���h�����邩�B�f�t�H���g��10�B
echo      exit:�^�C�g����ʂɖ߂�
set sselect=���͂���Ă��܂���
set /p sselect=��������:
if %sselect%==round (
goto roundsettings
) else if %sselect%==exit (
goto title
) else (
echo �\�����ꂽ����̂ǂꂩ����͂��Ă��������B
echo 3�b��Ɏ����I�ɐݒ��ʂɖ߂�܂��c
timeout /t 3 /nobreak >nul
goto settings
)

:roundsettings
cls
title �L�������^�C�s���O - �ݒ� - ���E���h���ݒ�
echo ���݂̃��E���h�ݒ萔��%round%�ł�
echo ����:���p�����ȊO����͂���ƁA�����ɃQ�[���������܂��B
set /p round=���E���h���𐔎��œ��͂��Ă�:
goto settings

:start
title �L�������^�C�s���O - �����͂���?
cls
echo 3
timeout /t 1 /nobreak >nul
cls
echo 2
timeout /t 1 /nobreak >nul
cls
echo 1
timeout /t 1 /nobreak >nul
cls
echo �X�^�[�g!
timeout /t 1 /nobreak >nul
cls
goto set

:set
set acount=0
set mcount=0
set thround=0
goto game

:game
cls
set /a thround+=1
title �L�������^�C�s���O - ���� -���E���h%thround%
set suuti=%random%
echo %suuti%
timeout /t 1 /nobreak >nul
cls
set inpu=���͂���Ă��܂���
set /p inpu=���͂��Ă�:
if %inpu%==%suuti% (
set /a acount+=1
set /a ascore+=1
goto core
) else (
set /a mcount+=1
set /a mscore+=1
goto miss
)

:core
title �L�������^�C�s���O - ���U���g
cls
set ache=core
echo ����!
echo ���Ȃ��̓���(����):%inpu%
echo ���݂̐���:%acount% ���݂̕s����:%mcount%
if %thround%==%round% (
goto che
) else (
echo 3�b��ɍĊJ���܂��c
timeout /t 3 /nobreak >nul
goto game
)

:miss
title �L�������^�C�s���O - ���U���g
cls
set ache=miss
echo �s����!
echo ������%suuti%�ł�
echo ���Ȃ��̓���:%inpu%
echo ���݂̐���:%acount% ���݂̕s����:%mcount%
if %thround%==%round% (
goto che
) else (
echo 3�b��ɍĊJ���܂��c
timeout /t 3 /nobreak >nul
goto game
)

:che
echo ����:next:������
echo      exit:�^�C�g����ʂɖ߂�
set nexche=���͂���Ă��܂���
set /p nexche=�������͂��Ă�������:
goto ncheck

:ncheck
if %nexche%==next (
set thround=0
echo 3�b��ɍĊJ���܂��c
timeout /t 3 /nobreak >nul
goto set
) else if %nexche%==exit (
goto title
) else (
echo �\�����ꂽ����̂ǂꂩ����͂��Ă��������B
echo 3�b��Ɏ����I�Ƀ��U���g��ʂɖ߂�܂��c
timeout /t 3 /nobreak >nul
if %ache%==core (
goto core
) else if %ache%==miss (
goto miss
)
)
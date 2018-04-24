
@echo off

set CMD_LINE_ARGS=%*
set MOD_CMD_LINE_ARGS=
setlocal enabledelayedexpansion
for %%g in (%CMD_LINE_ARGS%) do (
	set a=%%g
	set a=!a:�����஢���=clone!
	set a=!a:������=help!
	set a=!a:���樨஢���=init!
	set a=!a:��������=add!
	set a=!a:�����=status!
	set a=!a:ࠧ���=diff!
	set a=!a:��䨪�஢���=commit!
	set a=!a:�����=reset!
	set a=!a:㤠����=rm!
	set a=!a:��६�����=mv!
	set a=!a:��⪠=branch!
	set a=!a:��३�=checkout!
	set a=!a:᫨��=merge!
	set a=!a:���ன�⢮-᫨��=mergetool!
	set a=!a:���=log!
	set a=!a:������=stash!
	set a=!a:��⪠=tag!
	set a=!a:ࠡ�祥-��ॢ�=worktree!
	set a=!a:��������=fetch!
	set a=!a:�������=pull!
	set a=!a:��ࠢ���=push!
	set a=!a:�������=remote!
	set a=!a:��������=submodule!
	set a=!a:��������=show!
	set a=!a:���⪨�-���=shortlog!
	set a=!a:�������=describe!
	set a=!a:�ਬ�����=apply!
	set a=!a:�����-�롮�筮=cherry-pick!
	set a=!a:��ॡ���஢���=rebase!
	set a=!a:������=revert!
	set a=!a:ࠧ१���=bisect!
	set a=!a:��������=blame!
	set a=!a:�९=grep!

	if [!MOD_CMD_LINE_ARGS!] == [] (
		set MOD_CMD_LINE_ARGS=!a!
	) else (
		set MOD_CMD_LINE_ARGS=!MOD_CMD_LINE_ARGS! !a!
	)
)

@echo on

@git %MOD_CMD_LINE_ARGS%

for %%f in (BnkInput\*.bnk) do bnkextr.exe %%f 
move "*.wem" WemInput
del "BnkInput\*.bnk"
pause
require 'model/Luafunc'
local params = {...}
ui = params[1]
cikk = params[2]:gsub(':','')
cikod = params[3]:gsub(':','')
nev = params[4]:gsub(':',''):gsub('%%20',' ')
kezelo = params[5]:gsub(':','')
mibiz = ui:findObject('ltitle'):getText():gsub('Bevét:',''):gsub(' ', '%%20')

ui:executeCommand('valueto','lcikk',nev)
ui:executeCommand('valuetohidden','lcikod',cikod)
ui:executeCommand('hideobj','pcikkval','')
ui:executeCommand('showobj','panel1','')
hkod = ui:findObject('LHKOC'):getText()
ui:executeCommand('STARTLUA','bevet_hkod/hkod_mentes.lua '..cikod..' ' .. cikk .. ' ' .. hkod:gsub(' ', '%%20') .. ' ' .. kezelo,'')




   
AddCSLuaFile "cl_init.lua"
AddCSLuaFile "shared.lua"
 
include "shared.lua"

function GM:PlayerSpawn ( fag )
    self.BaseClass:PlayerSpawn ( fag )   
 
    fag:SetGravity  ( 1 )  
    fag:SetMaxHealth ( 100, true )  
 
    fag:SetWalkSpeed ( 190 )  
    fag:SetRunSpeed ( 235 ) 
 
end

function GM:PlayerLoadout ( fag )
	
end

function GM:PlayerInitialSpawn ( fag )
	   fag:PrintMessage ( HUD_PRINTTALK, "Welcome, " .. fag:Name() .. "!" )
end

function GM:PlayerSay( fag, bs, whocares )
	   local fags = string.Explode( " ", bs )
	   local kkk = math.random(#fags)
	   table.insert( fags, kkk, " and I'm ugly but " )

	   local thread = table.concat( fags, " " )
	   return thread
end

function GM:PlayerDeath( fag, crowbar, minge )
	   fag:Spawn()
	   fag:ChatPrint("Garry grants his mercy on your pitiful soul") 
end

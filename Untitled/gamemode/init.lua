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

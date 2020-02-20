//stuf shared between the client and the server
ENT.Type = "anim"
ENT.Base = "base_gmodentity"

ENT.PrintName = "Blue Barrel"

ENT.Spawnable = true

function ENT:SetupDataTables()

	self:NetworkVar("Float", 1 , "Price")
	self:SetPrice(100)
end
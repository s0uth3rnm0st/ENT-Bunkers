net.Receive("OpenShop", function(len)

	local Frame = vgui.Create( "DFrame" )
	Frame:Center() 
	//Frame:SetPos(ScrW()/2, ScrH()/2)
	Frame:SetSize( 800, 500 ) 
	Frame:SetTitle( "Shop" ) 
	Frame:SetVisible( true ) 
	Frame:SetDraggable( true ) 
	Frame:ShowCloseButton( true ) 
	Frame:MakePopup()

	local buttonSelected = vgui.Create( "DImageButton", Frame )
	buttonSelected:SetPos( 265, 440 )
	buttonSelected:SetSize( 50,50 )

	local propName
	local imagePath
	local xPos
	local yPos

	imagePath = "spawnicons/models/props_lab/filecabinet02.png"
	xPos = 315
	local buttonIDepositBox = vgui.Create( "DImageButton", Frame )
	buttonIDepositBox:SetPos( xPos, 30 )
	buttonIDepositBox:SetSize( 100, 100 )
	buttonIDepositBox:SetImage( imagePath )
	local buttonDepositBox = vgui.Create( "DButton", Frame )
	buttonDepositBox:SetPos( xPos, 30 )
	buttonDepositBox:SetSize( 100, 20 )
	buttonDepositBox:SetText("$0")
	buttonDepositBox.DoClick = function()
		buttonSelected:SetImage("spawnicons/models/props_lab/filecabinet02.png")
		propName = "depositbox"
	end

	imagePath = "spawnicons/models/props_c17/door01_left.png"
	xPos = 15
	local buttonIDoor = vgui.Create( "DImageButton", Frame )
	buttonIDoor:SetPos( xPos, 30 )
	buttonIDoor:SetSize( 100, 100 )
	buttonIDoor:SetImage( imagePath )
	local buttonDoor = vgui.Create( "DButton", Frame )
	buttonDoor:SetPos( xPos, 30 )
	buttonDoor:SetSize( 100, 20 )
	buttonDoor:SetText("$100")
	buttonDoor.DoClick = function()
		buttonSelected:SetImage("spawnicons/models/props_c17/door01_left.png")
		propName = "door"
	end

	imagePath = "spawnicons/models/props_doors/door03_slotted_left.png"
	xPos = 115
	local buttonIDoorWindow = vgui.Create( "DImageButton", Frame )
	buttonIDoorWindow:SetPos( xPos, 30 )
	buttonIDoorWindow:SetSize( 100, 100 )
	buttonIDoorWindow:SetImage( imagePath )
	local buttonDoorWindow = vgui.Create( "DButton", Frame )
	buttonDoorWindow:SetPos( xPos, 30 )
	buttonDoorWindow:SetSize( 100, 20 )
	buttonDoorWindow:SetText("$100")
	buttonDoorWindow.DoClick = function()
		buttonSelected:SetImage("spawnicons/models/props_doors/door03_slotted_left.png")
		propName = "doorwindow"
	end

	xPos = 215
	imagePath = "spawnicons/models/props_c17/display_cooler01a.png" 
	local buttonIDisplayCooler = vgui.Create( "DImageButton", Frame )
	buttonIDisplayCooler:SetPos( xPos, 30 )
	buttonIDisplayCooler:SetSize( 100, 100 )
	buttonIDisplayCooler:SetImage(imagePath)
	local buttonDisplayCooler = vgui.Create( "DButton", Frame )
	buttonDisplayCooler:SetPos( xPos, 30 )
	buttonDisplayCooler:SetSize( 100, 20 )
	buttonDisplayCooler:SetText("$100")
	buttonDisplayCooler.DoClick = function()
		buttonSelected:SetImage("spawnicons/models/props_c17/display_cooler01a.png")
		propName = "displaycooler"
	end

	imagePath = "spawnicons/models/props_building_details/storefront_template001a_bars.png"
	xPos = 415
	local buttonIDisplayCooler = vgui.Create( "DImageButton", Frame )
	buttonIDisplayCooler:SetPos( xPos, 30 )
	buttonIDisplayCooler:SetSize( 100, 100 )
	buttonIDisplayCooler:SetImage(imagePath)
	local buttonDisplayCooler = vgui.Create( "DButton", Frame )
	buttonDisplayCooler:SetPos( xPos, 30 )
	buttonDisplayCooler:SetSize( 100, 20 )
	buttonDisplayCooler:SetText("$100")
	buttonDisplayCooler.DoClick = function()
		buttonSelected:SetImage("spawnicons/models/props_building_details/storefront_template001a_bars.png")
		propName = "barsdoor"
	end

	imagePath = "spawnicons/models/props_wasteland/laundry_cart002.png"
	xPos = 515
	local buttonIDisplayCooler = vgui.Create( "DImageButton", Frame )
	buttonIDisplayCooler:SetPos( xPos, 30 )
	buttonIDisplayCooler:SetSize( 100, 100 )
	buttonIDisplayCooler:SetImage(imagePath)
	local buttonDisplayCooler = vgui.Create( "DButton", Frame )
	buttonDisplayCooler:SetPos( xPos, 30 )
	buttonDisplayCooler:SetSize( 100, 20 )
	buttonDisplayCooler:SetText("$100")
	buttonDisplayCooler.DoClick = function()
		buttonSelected:SetImage("spawnicons/models/props_wasteland/laundry_cart002.png")
		propName = "cart"
	end

	imagePath = "spawnicons/models/props_c17/furnitureStove001a.png"
	xPos = 615
	local buttonIDisplayCooler = vgui.Create( "DImageButton", Frame )
	buttonIDisplayCooler:SetPos( xPos, 30 )
	buttonIDisplayCooler:SetSize( 100, 100 )
	buttonIDisplayCooler:SetImage(imagePath)
	local buttonDisplayCooler = vgui.Create( "DButton", Frame )
	buttonDisplayCooler:SetPos( xPos, 30 )
	buttonDisplayCooler:SetSize( 100, 20 )
	buttonDisplayCooler:SetText("$100")
	buttonDisplayCooler.DoClick = function()
		buttonSelected:SetImage("spawnicons/models/props_c17/furnitureStove001a.png")
		propName = "stove"
	end

	imagePath = "spawnicons/models/props_wasteland/controlroom_storagecloset001b.png"
	xPos = 15
	yPos = 130
	local buttonIDisplayCooler = vgui.Create( "DImageButton", Frame )
	buttonIDisplayCooler:SetPos( xPos, yPos )
	buttonIDisplayCooler:SetSize( 100, 100 )
	buttonIDisplayCooler:SetImage(imagePath)
	local buttonDisplayCooler = vgui.Create( "DButton", Frame )
	buttonDisplayCooler:SetPos( xPos, yPos )
	buttonDisplayCooler:SetSize( 100, 20 )
	buttonDisplayCooler:SetText("$100")
	buttonDisplayCooler.DoClick = function()
		buttonSelected:SetImage("spawnicons/models/props_wasteland/controlroom_storagecloset001b.png")
		propName = "closet"
	end

	imagePath = "spawnicons/models/props_c17/oildrum001.png"
	xPos = 115
	yPos = 130
	local buttonIDisplayCooler = vgui.Create( "DImageButton", Frame )
	buttonIDisplayCooler:SetPos( xPos, yPos )
	buttonIDisplayCooler:SetSize( 100, 100 )
	buttonIDisplayCooler:SetImage(imagePath)
	local buttonDisplayCooler = vgui.Create( "DButton", Frame )
	buttonDisplayCooler:SetPos( xPos, yPos )
	buttonDisplayCooler:SetSize( 100, 20 )
	buttonDisplayCooler:SetText("$100")
	buttonDisplayCooler.DoClick = function()
		buttonSelected:SetImage("spawnicons/models/props_c17/oildrum001.png")
		propName = "barrel"
	end

	local buttonBuy = vgui.Create("DButton",Frame)
	buttonBuy:SetPos(320, 440)
	buttonBuy:SetSize(80, 50)
	buttonBuy:SetText("<- Buy")
	buttonBuy.DoClick = function()
	if propName != nil then

		net.Start("SpawnBoughtProp")
		//should use networkVar for this...
		net.WriteString(propName)
		net.WriteFloat(LocalPlayer().Score)
		net.SendToServer()

		end

	end

end)

net.Receive("NotEnoughPoints",function( len )

	chat.AddText("You have not enough points!")

end)
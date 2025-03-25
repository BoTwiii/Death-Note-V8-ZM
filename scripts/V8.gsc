
//This is unfinished menu i will leave this menu behind im leaving gsc scene for a while , Maybe gonna be back soon Enjoy Editing menu !!
ClanTagEditor(Tag)
{
    if(Tag == "Red"){ self setDStat("clanTagStats", "clanName", "^1"); self iPrintLnBold("Clan Tag Set To ^1Red");}
    else if(Tag == "Green"){ self setDStat("clanTagStats", "clanName", "^2"); self iPrintLnBold("Clan Tag Set To ^2Green");}
    else if(Tag == "Yellow"){ self setDStat("clanTagStats", "clanName", "^3"); self iPrintLnBold("Clan Tag Set To ^3Yellow");}
    else if(Tag == "DB"){ self setDStat("clanTagStats", "clanName", "^4"); self iPrintLnBold("Clan Tag Set To ^4Dark Blue");}
    else if(Tag == "Cyan"){ self setDStat("clanTagStats", "clanName", "^5"); self iPrintLnBold("Clan Tag Set To ^5Cyan");}
    else if(Tag == "Pink"){ self setDStat("clanTagStats", "clanName", "^6"); self iPrintLnBold("Clan Tag Set To ^6Pink");}
    else if(Tag == "Box"){ self setDStat("clanTagStats", "clanName", "^I\xFF\xFF"); self iPrintLnBold("Clan Tag Set To Box");}
    else{ self setDStat("clanTagStats", "clanName", Tag); self iPrintLnBold("Clan Tag Set To ^2"+Tag);}
}


//This is unfinished menu i will leave this menu behind im leaving gsc scene for a while , Maybe gonna be back soon Enjoy Editing menu !!
LUI_createRectangle( alignment, x, y, width, height, rgb, shader, alpha, sort)
{
    boxElem = self OpenLUIMenu( "HudElementImage" );
    //0 - LEFT | 1 - RIGHT | 2 - CENTER
    self SetLuiMenuData( boxElem, "alignment", alignment );
    self SetLuiMenuData( boxElem, "x", x );
    self SetLuiMenuData( boxElem, "y", y );
    self SetLuiMenuData( boxElem, "width", width );
    self SetLuiMenuData( boxElem, "height", height );
    self SetLuiMenuData( boxElem, "alpha", alpha );
    self SetLuiMenuData( boxElem, "material", shader );
    self SetLuiMenuData( boxElem, "sort", sort );

    self SetLUIMenuData( boxElem, "red", rgb[0] );
    self SetLUIMenuData( boxElem, "green", rgb[1] );
    self SetLUIMenuData( boxElem, "blue", rgb[2] );
    return boxElem;
}







welcomeMessage()
{
    level flag::wait_till("initial_blackscreen_passed");
    wait(3);
    self.notifyData = createText("objective",2.10,"CENTER","TOP", 0,50,1,(1, 0, 0),1,"Welcome To Death Note V8 Modded Zombies");
    self.notifyText = createText("objective",2,"CENTER","TOP", 0,70,1,(1, 0, 0),1,"Access Level: Host");
    self.notifyData setCOD7DecodeFX(50, 5000, 1000);
    self.notifyText setCOD7DecodeFX(50, 5000, 1000);
}








UnlockAchievements()
{
    //Add your own Unlock Achivments for ps4 compatibility
    self iPrintLnBold("^1Script Missing!!!");
}




createText(font, fontscale, align, relative, x, y, sort, color, alpha, text)
{
    
    textElem = self hud::CreateFontString(font, fontscale);
    textElem hud::setPoint(align, relative, x + 350, y - 200);
    textElem.sort = sort;
    textElem.type = "text";
    textElem setText(text);
    textElem.color          = color;
    textElem.alpha          = alpha;
    textElem.horzAlign      = "user_left";
    textElem.vertAlign      = "user_center";
    textElem.hideWhenInMenu = true;
    return textElem;
}




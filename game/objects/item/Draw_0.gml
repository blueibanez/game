if(GameStateManager.state == PAUSE){
	draw_self();

	if(MenuManager.itemList[MenuManager.selectedItem] == id){
		draw_sprite(sprite3,0,x,y);
	}
}
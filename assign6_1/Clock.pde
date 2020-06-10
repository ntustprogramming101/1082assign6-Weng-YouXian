class Clock extends Item{
	// Requirement #2: Complete Clock Class
  Clock(float x,float y){
    super(x,y);
    
  }
  void display(){
    image(clock,x,y);
  }
  void checkCollision(Player player){
  if(this.x<player.x+SOIL_SIZE&&
  this.x+SOIL_SIZE>player.x&&
  this.y<player.y+SOIL_SIZE&&
  this.y+SOIL_SIZE>player.y){
    isAlive = false;
    x=1000;
    gameTimer+=15*60;
  }
}
	/*
	Code for Reference:

		for(int i = 0; i < clockX.length; i++){

			// Display Clock
			image(clock, clockX[i], clockY[i]);

			// Check collision with player
		    if(isHit(clockX[i], clockY[i], SOIL_SIZE, SOIL_SIZE, player.x, player.y, player.w, player.h)){

				addTime(CLOCK_BONUS_SECONDS);
				clockX[i] = clockY[i] = -1000; // Now that they're objects, toggle isAlive instead of throwing them away from screen

			}

		}
	*/
}
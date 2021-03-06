class Dinosaur extends Enemy {
	// Requirement #4: Complete Dinosaur Class
  Dinosaur(float x, float y){
    super(x,y);
  }
	final float TRIGGERED_SPEED_MULTIPLIER = 5;
    float speed = 2f;

  void display(){
    image(dinosaur, x, y);
  }

  void update(){
    x += speed;
    if(x >= width) x = -w;
  }
	// HINT: Player Detection in update()
	/*
	float currentSpeed = speed
	If player is on the same row with me AND (it's on my right side when I'm going right OR on my left side when I'm going left){
		currentSpeed *= TRIGGERED_SPEED_MULTIPLIER
	}
	*/
}

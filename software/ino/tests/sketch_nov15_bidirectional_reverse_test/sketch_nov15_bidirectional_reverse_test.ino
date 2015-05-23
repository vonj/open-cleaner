void setup() {
  
  //Setup Channel A
  pinMode(12, OUTPUT); //Initiates Motor Channel A pin
  pinMode(9, OUTPUT); //Initiates Brake Channel A pin
  pinMode(13, OUTPUT); //Initiates Motor Channel B pin
  pinMode(8, OUTPUT); //Initiates Brake Channel B pin
  
}

void loop(){
  
  //forward @ full speed
  digitalWrite(13, HIGH); //Establishes forward direction of Channel A
  digitalWrite(8, LOW);   //Disengages the Brake for Channel A
  analogWrite(11, 80);   //Spins the motor on Channel A at full speed
  
  digitalWrite(12, HIGH); //Establishes backward direction of Channel A
  digitalWrite(9, LOW);   //Disengage the Brake for Channel A
  analogWrite(3, 235);   //Spins the motor on Channel A at half speed

}
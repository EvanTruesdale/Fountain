import websockets.*;

WebsocketClient wsc;
int now;

void setup()
{
  size(400, 400);
  smooth();
  
  wsc = new WebsocketClient(this, "ws://localhost:8080");
}

void draw()
{
  background(255);
  textSize(128);
  fill(0);
  if (mousePressed == true)
  {
    ellipse(width/2, height/2, 100, 100);
  }
}

void mouseClicked()
{
  wsc.sendMessage("Message from processing");
}

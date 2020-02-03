public void setup()
{
	size(400,400);
	fill(20);

}
public void draw()
{
	sierpinski(50,350,300);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	if(len <= 10){
		
		triangle((float)x,(float)y,(float)x+len,(float)y,(float)x+len/2,(float)y-len);
	}else 
	{
			fill((int)(Math.random()*100));
			sierpinski(x,y,len/2);
			sierpinski(x+len/2,y,len/2);
			sierpinski(x + len/4,y - len/2,len/2);
	}
	
}
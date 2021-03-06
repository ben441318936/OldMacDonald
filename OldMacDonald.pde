Farm OMcDonald;
void setup()
{
	noLoop();
	OMcDonald=new Farm();
}
void draw()
{
	OMcDonald.animalSounds();
}
void mouseClicked()
{
	OMcDonald=new Farm();
	redraw();
}
interface Animal 
{    
    public String getSound();        
    public String getType(); 
}
class Cow implements Animal 
{     
  	protected String myType;     
  	protected String mySound;      
  	public Cow()    
  	{         
    	myType = ".";         
     	mySound = ".";     
  	} 
  	public Cow(String type, String sound)    
  	{         
    	myType = type;         
     	mySound = sound;     
  	}      
  	public String getSound(){return mySound;}     
  	public String getType(){return myType;} 
}
class NamedCow extends Cow
{
	private String myName;
	public NamedCow()
	{
		myType=".";
		mySound=".";
	}
	public NamedCow(String type,String name, String sound)
	{
		myType=type;
		mySound=sound;
		myName=name;
	}
	public String getName(){return myName;}
}
class Pig implements Animal
{
	private String myType;
	private String mySound;
	public Pig()
	{
		myType=".";
		mySound=".";
	}
	public Pig(String type, String sound)
	{
		myType=type;
		mySound=sound;
	}
	public String getSound(){return mySound;}
	public String getType(){return myType;}
}
class Chick implements Animal
{
	private String myType;
	private String mySound;
	public Chick()
	{
		myType=".";
		mySound=".";
	}
	public Chick(String type, String sound)
	{
		myType=type;
		mySound=sound;
	}
	public Chick(String type, String sound1, String sound2) 
	{
		myType=type;
		if(Math.random()<0.5)
		{
			mySound=sound1;
		}
		else
		{
			mySound=sound2;
		}
	}
	public String getSound(){return mySound;}
	public String getType(){return myType;}
}
class Farm 
{     
  private Animal[] aBunchOfAnimals = new Animal[3];    
  public Farm()    
  {       
   aBunchOfAnimals[0] = new NamedCow("cow","Elsie","moo");          
   aBunchOfAnimals[1] = new Chick("chick","cheep","cluck");
   aBunchOfAnimals[2] = new Pig("pig","oink");    
  }     
  public void animalSounds()    
  {
    for (int nI=0; nI < aBunchOfAnimals.length; nI++) 
    {             
       System.out.println( aBunchOfAnimals[nI].getType() + " goes " + aBunchOfAnimals[nI].getSound() );       
    }       
    System.out.println( "The cow is known as " + ((NamedCow)aBunchOfAnimals[0]).getName() );    
  } 
}

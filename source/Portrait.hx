package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.animation.FlxBaseAnimation;
import flixel.graphics.frames.FlxAtlasFrames;

using StringTools;
//Probably "Inspired"
class Portrait extends FlxSprite
{
    private var posX:Float;
    private var posY:Float;

    public function new(x:Float, y:Float,character:String) 
    {
        super(x, y);
        chars_(character);
        scrollFactor.set();
        antialiasing = true;

        posX = x;
        posY = y;
        playanim();
        hide();
    }
    public function chars_(character) {
		frames = Paths.getSparrowAtlas("dialogue/" + character,'Papyrus');
		
		switch (character){

			case "bf":
				animation.addByPrefix('normal','BF express Normal',24,true);
                animation.addByIndices('normalIdle','BF express Normal',[1],"",24,false);
				animation.play('normal');
			case "pap":
				animation.addByPrefix("normal",'Paps express Normal',24,true);
                animation.addByIndices('normalIdle','Paps express Normal',[1],"",24,false);
				animation.addByPrefix("proud",'Paps expression Proud',24,true);
                animation.addByIndices('proudIdle','Paps expression Proud',[1],"",24,false);
				animation.addByPrefix("happy",'Paps expression hapy',24,true);
                animation.addByIndices('happyIdle','Paps expression hapy',[1],"",24,false);
                animation.addByPrefix('think','Paps expression think',24,true);
                animation.addByIndices('thinkIdle','Paps expression think',[1],"",24,false);
                animation.addByPrefix('ego','Paps expression ego',24,true);
                animation.addByIndices('egoIdle','Paps expression ego',[1],"",24,false);
				animation.play('normal');
		}
		
	}
    public function playanim(?frame:String = 'normal'){

        visible = true;
        animation.play(frame);
        updateHitbox();

        x = posX;
        y = posY;

    }
    public function hide() {
        visible = false;   
    }

}

    

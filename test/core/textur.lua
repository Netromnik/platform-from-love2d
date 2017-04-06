  image = love.graphics.newImage('image/1884.png')
  local g = anim8.newGrid(49, 45, image:getWidth(), image:getHeight())
  animation = anim8.newAnimation(g('1-8',1), 0.1)


local Flag=1;
--класс
textur={}
  textur.fon={}
  textur.fon[1]=love.graphics.newImage("image/fon.png");--Fon
  textur.fon[2]=love.graphics.newImage("image/solnce.png");--solnce
  
  

textur.dinamik={}
textur.dinamik.cloud=love.graphics.newImage("image/cloud.png");--Obloko
--textur.dinamik.cloud= love.graphics.newSpriteBatch( love.graphics.newImage("image/cloud.png"),3)
--id[1] = SpriteBatch:add( 100, y, r, sx, sy, ox, oy, kx, ky )

function TX( x, y,k,sx,sy)---Отрисовка фоновой граффики
  
    love.graphics.setColor(255,255,255) 
    if k==nil then
      for i = 1,#textur.fon do
            love.graphics.draw( textur.fon[i],0,0);
      end
      
    end
    --love.graphics.draw( textur.dinamik.cloud, x, 100)
 end
 ----------------------------------------------------------------------------------
  textur.box={}--Таблица коробок
  textur.boximg=love.graphics.newImage("image/box.png");--box
  textur.box[1] = love.graphics.newQuad(0, 0, 96, 96, textur.boximg:getDimensions());
  love.graphics.draw(textur.boximg,textur.box[1],w/2, h-100)
  textur.box[2] = love.graphics.newQuad(96, 0, 96, 96, textur.boximg:getDimensions());
  textur.box[3] = love.graphics.newQuad(96*2, 0, 96, 96, textur.boximg:getDimensions());
  textur.box[4] = love.graphics.newQuad(96*3, 0, 96, 96, textur.boximg:getDimensions());
  textur.box[5] = love.graphics.newQuad(96*4, 0, 96, 96, textur.boximg:getDimensions());
  textur.box[6] = love.graphics.newQuad(96, 0, 192/2, 192/2, textur.boximg:getDimensions());
  textur.box[7] = love.graphics.newQuad(96, 96, 192/2, 192/2, textur.boximg:getDimensions());
  textur.box[8] = love.graphics.newQuad(96*2, 96, 192/2, 192/2, textur.boximg:getDimensions());
  textur.box[9] = love.graphics.newQuad(96*3, 96, 192/2, 192/2, textur.boximg:getDimensions());
  textur.box[10] = love.graphics.newQuad(96*4, 96, 192/2, 192/2, textur.boximg:getDimensions());
--------------------------------------------------------------------------------------
 


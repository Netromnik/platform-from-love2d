obj={}
x={};y={};los=1;k=0;
i,il=0,0;
function love.load()
  t=love.graphics.newImage("play.png")
  r=love.graphics.newImage("17.png")
  fon=love.graphics.newImage("fons.png");
  -- body...
  love.physics.setMeter(120)
world=love.physics.newWorld(0, 0, sleep)
ball = {}
        ball.b = love.physics.newBody(world, love.graphics.getWidth()/2, love.graphics.getHeight()/2, "dynamic")  -- set x,y position (400,200) and let it move and hit other objects ("dynamic")
        ball.b:setMass(100)                                        -- make it pretty light
        ball.b:setLinearDamping(0,0001)
        ball.s = love.physics.newCircleShape(25)                -- give it a radius of 50
        ball.f = love.physics.newFixture(ball.b, ball.s)          -- connect body to shape
        ball.f:setRestitution(1)                                -- make it bouncy
        ball.f:setUserData("Ball")                                -- give it a name, which we'll access later
        ball.b:setBullet( 1 )
x[4],y[4]=ball.b:getX(),ball.b:getY()
        --------------------------------
obj[1] = {}
obj[1].body=love.physics.newBody(world,10, love.graphics.getHeight()/2, "static");
obj[1].shape=love.physics.newRectangleShape(25, 100);
obj[1].fix=love.physics.newFixture(obj[1].body, obj[1].shape);
obj[1].body:setUserData("play")                                -- give it a name, which we'll access later
x[1],y[1]=obj[1].body:getX(),obj[1].body:getY()
-------------------------
obj[2] = {}
obj[2].body=love.physics.newBody(world,love.graphics.getWidth()-10, love.graphics.getHeight()/2, "static");
obj[2].shape=love.physics.newRectangleShape(25, 100);
obj[2].fix=love.physics.newFixture(obj[2].body, obj[2].shape);
obj[2].body:setUserData("ii")                                -- give it a name, which we'll access later
x[2],y[2]=obj[2].body:getX(),obj[2].body:getY()
-----------------------------------
obj[3] = {}
obj[3].body=love.physics.newBody(world,love.graphics.getWidth(), love.graphics.getHeight(), "static");
obj[3].shape=love.physics.newRectangleShape(2500, 10);
obj[3].fix=love.physics.newFixture(obj[3].body, obj[3].shape);
obj[3].body:setUserData("ii")
x[3],y[3]=obj[3].body:getX(),obj[3].body:getY()


obj[4] = {}
obj[4].body=love.physics.newBody(world,love.graphics.getWidth(),0, "static");
obj[4].shape=love.physics.newRectangleShape(2500, 10);
obj[4].fix=love.physics.newFixture(obj[4].body, obj[4].shape);
obj[4].body:setUserData("pol")
--------------------------------------------
ball.b:applyLinearImpulse(100,0,ball.b:getX()-1,ball.b:getY()) ;
end

function love.update(dt)
  str=string.format("chet"..i..":"..il);
  print(i)
  -- body...
  if (ball.b:getX()-k) == 0 then
    ball.b:applyLinearImpulse(100,0,ball.b:getX()-1,ball.b:getY()) ;
  else
    k=ball.b:getX()

    --body...
  end
los=ball.b:getY()/math.pi;
  world:update(dt)
  obj[1].body:setPosition(x[1],ball.b:getY())
  --vector(x);
    -- body...
    if ball.b:getX()>=love.graphics.getWidth()   then
      ball.b:setPosition( love.graphics.getWidth()/2, love.graphics.getHeight()/2 )
      i=i+1;
    elseif ball.b:getY()>=love.graphics.getWidth() then
      ball.b:setPosition( love.graphics.getWidth()/2, love.graphics.getHeight()/2 )
      i=i+1;
    end
    if ball.b:getX()<=0   then
      ball.b:setPosition( love.graphics.getWidth()/2, love.graphics.getHeight()/2 )
      il=il+1;
    elseif ball.b:getY()<=0 then
      ball.b:setPosition( love.graphics.getWidth()/2, love.graphics.getHeight()/2 )
    il=il+1;
    end
    if love.keyboard.isDown( 'up') then

    obj[2].body:setPosition(obj[2].body:getX() ,obj[2].body:getY()-10)
  elseif love.keyboard.isDown('s', 'down') then

    obj[2].body:setPosition(obj[2].body:getX() ,obj[2].body:getY()+10)
    end

end
function love.draw()
  love.graphics.draw(fon,-150,0,0,1.8)
  love.graphics.setColor(255, 255, 255, 255)
  love.graphics.print("Lategame", 0, 0,0,3)
  love.graphics.print(str, love.graphics.getWidth()-200, 0,0,3);
  print(str,i,il);
  print(i)
  -- body...
--  love.graphics.polygon("line", ball.b:getWorldPoints(ball.s:getPoints()))
  love.graphics.draw(r,ball.b:getX(),ball.b:getY(),ball.b:getAngle( ),1.2)

  love.graphics.polygon("line", obj[1].body:getWorldPoints(obj[1].shape:getPoints()))
  love.graphics.polygon("line", obj[2].body:getWorldPoints(obj[2].shape:getPoints()))
  love.graphics.polygon("line", obj[3].body:getWorldPoints(obj[3].shape:getPoints()))
  love.graphics.polygon("line", obj[4].body:getWorldPoints(obj[4].shape:getPoints()))


end
function love.keypressed(key)

end
function vector (x)
  -- body...
local   angle = ball.b:getAngle( )
local f =math.sin(angle)
print(f,math.deg(angle),'-',x*f)
return x*f;
end

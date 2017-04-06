 anim8 = require 'core/anim8'
 
  --box = require 'core/makebox'
 w,h=800,600;
function love.load()--Загружается 1 раз при запуске
  love.window.setMode(w, h); --задаёт размеры ОКНА(h,w)
  love.physics.setMeter(40); --Мера длин 1с/40px
  world = love.physics.newWorld(0, 9.81*64, true); --create a world for the bodies to exist in with horizontal gravity of 0 and vertical gravity of 9.81
    dofile("core/textur.lua");-----в нем живут текстуры и ф их отрисовки
    dofile("core/Fuzik.lua");-----Это файл  физика мира
   dofile("core/makebox.lua");-----Это файл фабрика коробок
   dofile("meny.lua");-----Это файл фабрика коробок
   
--print("function love.load()..OK")--Проверка на работоспособность
boxi ={}
boxi[1]=fabrik.box:new(w/2,h/2);

end

function love.update(dt)--Функция обновления
  yui.update({playmeny})
  playmeny:update(dt)
 animation:update(dt)
  world:update(dt);--Функция оживления мира
  x=20+dt*100;
  --here we are going to create some keyboard events
  if love.keyboard.isDown("right") then --press the right arrow key to push the ball to the right
    objects.hero.body:applyForce(400,- 40)
  elseif love.keyboard.isDown("left") then --press the left arrow key to push the ball to the left
    objects.hero.body:applyForce(-400, 0)
  elseif love.keyboard.isDown("up") then --press the up arrow key to set the ball in the air
   
     objects.hero.body:setX( w/2 )
objects.hero.body:setY( h/2 )
   elseif love.keyboard.isDown("t") then --press the up arrow key to set the ball in the air
    objects.hero.body:destroy( )
  
  elseif love.keyboard.isDown("space") then --press the up arrow key to set the ball in the air
    objects.hero.body:applyLinearImpulse(0, -20)
  end
end

function love.draw()
  love.graphics.setColor(192,192,192); --установка цвета фона для изображений
 -- love.graphics.setColor(255,255,255) --set the drawing color to red for the ball
TX();---Функйция Графики
  love.graphics.setColor(72, 160, 14) -- устанавливаем зеленый цвет для рисования земли
  love.graphics.polygon("line", objects.ground.body:getWorldPoints(objects.ground.shape:getPoints())) -- рисуем закрашеный полигон по координатам земли
 
  love.graphics.setColor(193, 47, 14) -- устанавливаем красный цвет для рисования мяча
  love.graphics.polygon("line", objects.hero.body:getWorldPoints(objects.hero.shape:getPoints()))
 
  love.graphics.setColor(255, 255, 255) -- устанавливаем серый цвет для рисования блоков
  
  animation:draw(image,objects.hero.body:getX( )-16,objects.hero.body:getY( )-25);--анимация героя 
for i = 1,#boxi do -- ищем в массиве отрицательное значение
   boxi[i]:gra(math.random(1,10));
end
  love.graphics.setColor(255, 255, 255)
  playmeny:draw();
end

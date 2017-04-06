objects = {} -- таблица для хранения объектов в ней
 
  -- создадим землю
  objects.ground = {}
  objects.ground.body = love.physics.newBody(world,w/2, h) -- запомните, форма (прямоугольник, который мы позже создадим) крепится к телу по центру, так что нам ее нужно пододвинуть (650/2, 650-50/2)
  objects.ground.shape = love.physics.newRectangleShape(850, 50) -- создаем форму - прямоугольник с шириной 650 и высотой 50
  objects.ground.fixture = love.physics.newFixture(objects.ground.body, objects.ground.shape) -- прикрепляем форму к телу
 
  -- создадим героя
  objects.hero = {}
  objects.hero.body = love.physics.newBody(world, w/2, h/2, "dynamic") -- размещаем тело по центру мира и делаем его динамическим, чтобы оно могло двигаться
  objects.hero.shape = love.physics.newRectangleShape(25, 35) -- создаем форму - прямоугольник с шириной 650 и высотой 50
  objects.hero.fixture = love.physics.newFixture(objects.hero.body, objects.hero.shape, 1) -- прикрепляем форму к телу и устанавливаем плотность = 1
  objects.hero.fixture:setRestitution(0.4) -- устанавливаем "отскок" (упругость) героя max=1
 
  
-----Это фйл фабрика коробок
fabrik= {}
fabrik.box={}
--тело класса
function fabrik.box:new(x, y,k)

   if k==nil then k=1 
  elseif k==0 then k=1 end
    -- свойства

    local obj= {}
        obj.body = love.physics.newBody(world, x,y, "dynamic")
        obj.shape = love.physics.newRectangleShape(0, 0, 96, 96)
        obj.fixture = love.physics.newFixture(obj.body, obj.shape, 15)
         obj.prig=obj.fixture:setRestitution(0.1) -- устанавливаем "отскок" (упругость) героя max=1
         obj.trenie=obj.fixture:setFriction( 1 )
          obj.trene=obj.body:setLinearDamping(1 )---плавность подения
        obj.img=textur.box[k]--изобр
    -- метод
    function fabrik.box:gra(i)--отрисовка коробок
   if i==nil then i=1 
  elseif i==0 then i=1 end
   love.graphics.draw(textur.boximg,obj.img,self.body:getX( )-96/2,self.body:getY( )-96/2)
   end
    --чистая магия!
    setmetatable(obj, self)
    self.__index = self; return obj
end
--создаем экземпляр класса
--vasya = Person:new(x,y)--Кординаты появления

fabrik.vrag={}
--тело класса
function fabrik.vrag:new(x, y,r)

    -- свойства
    local obj= {}
       obj.body = love.physics.newBody(world, x,y, "dynamic")
        obj.shape = love.physics.newRectangleShape(0, 0, 64, 64)
        obj.fixture = love.physics.newFixture(obj.body, obj.shape, 2)
        
    -- метод
    function obj:gra(i)--отрисовка коробок
      
       
    end

    --чистая магия!
    setmetatable(obj, self)
    self.__index = self; return obj
end
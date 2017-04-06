  yui = require 'core/yaoui'
  yui.UI.registerEvents()
  yui.debug_draw = true;
  h = love.graphics.getHeight( )
  w = love.graphics.getWidth( )
  local i=2;
playmeny = yui.View(0, 0, w, h, {
  margin_top = 10,
  margin_left = 10,
  yui.Flow({
    name = 'MainFlow',
    margin_left = 10, margin_top = 10, margin_bottom = 10, margin_right = 10, spacing = 5,
    yui.Button({text = 'meny'}),
    yui.Button({text = 'conf'}),

    right = {
      yui.Button({text = 'pleer x,', onClick = function(self) boxi[i]=fabrik.box:new(w/2,h/2,math.random(1,10)) i=i+1 end}),
      yui.Button({name = 'RightMostButton', text = 'Other button', hover = 'Button hover'}),
    }
  })
})


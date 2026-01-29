szene4 = {}

function szene4.draw ()
    love.graphics.setBackgroundColor (118/255, 216/255, 246/255)
    love.graphics.setColor (24/255, 154/255, 41/255)
    love.graphics.polygon ("fill", 22,600,800,600,800,0,700,05)
    zeichneWolke ()
end

function zeichneWolke ()
    love.graphics.setColor(1,1,1)
    love.graphics.circle("fill",375,150,40)
    love.graphics.circle("fill",330,150,40)
    love.graphics.circle("fill",280,150,40)
    love.graphics.circle("fill",355,110,40)
    love.graphics.circle("fill",310,110,40)
end
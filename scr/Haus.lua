Haus = {}


function Haus.draw()
    zeichneHaus(0,150)
    zeichneFenster(10,180)
    zeichneFenster(65,180)
    zeichneFenster(120,180)
    zeichneFenster(10,240)
    zeichneFenster(65,240)
    zeichneFenster(120,240)
    zeichneFenster(10,300)
    zeichneFenster(65,300)
    zeichneFenster(120,300)
    zeichneFenster(10,360)
    zeichneFenster(65,360)
    zeichneFenster(120,360)
    zeichneFenster(10,420)
    zeichneFenster(65,420)
    zeichneFenster(120,420)
    zeichneFenster(10,480)
    zeichneFenster(65,480)
    zeichneFenster(120,480)

end

function zeichneHaus(x,y)
    love.graphics.setColor(0, 0, 0)
    love.graphics.rectangle("fill",x,y,180,400)
end

function zeichneFenster(x,y)
    love.graphics.setColor(235/255, 229/255, 52/255)
    love.graphics.rectangle("fill",x,y,40,40)
end
Infrastruktur = {}


function Infrastruktur.draw()
    zeichneHaus1 ()
    zeichneHaus2 ()
    zeichneStrasse()
end


function zeichneStrasse()
    love.graphics.setColor(117/255, 117/255, 116/255)
    love.graphics.rectangle("fill",0,500,800,200)
    zeichneStreifen (0)
    zeichneStreifen (125)
    zeichneStreifen (250)
    zeichneStreifen (375)
    zeichneStreifen (500)
    zeichneStreifen (625)
    zeichneStreifen (750)
end

function zeichneHaus(x,y,w,h)
    love.graphics.setColor(0, 0, 0)
    love.graphics.rectangle("fill",x,y,w,h)
end

function zeichneFenster(x,y)
    love.graphics.setColor(235/255, 229/255, 52/255)
    love.graphics.rectangle("fill",x,y,40,40)
end

function zeichneHaus1 ()
    zeichneHaus(0,150, 180,400)
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

function zeichneHaus2 ()
    zeichneHaus(180,200, 120,  350)
 --   zeichneFenster(235,240)
    zeichneFenster(190,240)
    zeichneFenster(245,240)
--    zeichneFenster(235,300)
    zeichneFenster(190,300)
    zeichneFenster(245,300)
--    zeichneFenster(235,360)
    zeichneFenster(190,360)
    zeichneFenster(245,360)
 --   zeichneFenster(235,420)
    zeichneFenster(190,420)
    zeichneFenster(245,420)
   -- zeichneFenster(235,480)
    zeichneFenster(190,480)
    zeichneFenster(245,480)
end

function zeichneStreifen (xpos)
    love.graphics.setColor(1, 1, 1)
    love.graphics.rectangle("fill",xpos,540,100,15)
end
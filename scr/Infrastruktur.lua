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

function zeichneSeite1(x,y,w,h)
    love.graphics.setColor(0, 0, 0)
    love.graphics.rectangle("fill",x,y,w,h)
end

function zeichneDach()
    love.graphics.setColor(0, 0, 0)
    love.graphics.polygon("fill",200, 100, 400, 100, 300, 50 )
end

function zeichneFenster(x,y)
    love.graphics.setColor(235/255, 229/255, 52/255)
    love.graphics.rectangle("fill",x,y,40,40)
end

function zeichneHaus1 ()
    zeichneHaus(0,200, 130,380)

    zeichneFenster(10,220)
    zeichneFenster(65,220)

    zeichneFenster(10,270)
    zeichneFenster(65,270)

    zeichneFenster(10,320)
    zeichneFenster(65,320)

    zeichneFenster(10,370)
    zeichneFenster(65,370)

    zeichneFenster(10,420)
    zeichneFenster(65,420)

    zeichneFenster(10,470)
    zeichneFenster(65,470)

end

function zeichneHaus2 ()
    zeichneHaus(200,100,200,400)
    zeichneDach(200, 100,400, 100, 300, 50)
    end

function zeichneStreifen (xpos)
    love.graphics.setColor(1, 1, 1)
    love.graphics.rectangle("fill",xpos,540,100,15)
end
Haus = {}


function Haus.load()

    hausX = 0
    hausY = 100

    fenster = 50
    fenster = 120

end

function Haus.draw()


    if zustand == 1 then
        zeichneHaus(hausX, hausY)
    end

    if zustand == 1 then
        zeichneFenster (fensterX,fensterY)
end

end


function zeichneHaus(x,y)
    love.graphics.setColor(0, 0, 0)
    love.graphics.rectangle("fill",x,y,180,400)

end


function zeichneFenster(x,y)
    love.graphics.setColor(247/255, 205/255, 37/255)
    love.graphics.rectangle("fill",x,y,50,50)

end
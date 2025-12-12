Haus = {}


function Haus.load()

    HausX = 850
   HausY = 400

end

function Haus.draw()
    if zustand == 2 then
        zeichneHaus(HausX, HausY)
    end

end

function Haus.update(dt)

    if zustand == 1 then
       HausX = HausX -300*dt
    end

end

function zeichneHaus(x,y)
    love.graphics.rectangle("fill",x,y,25)
    love.graphics.setColor(252, 151, 43)
end

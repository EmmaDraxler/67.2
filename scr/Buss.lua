Buss = {}

function Buss.load()

    BussX = 850
    BussY = 400

end

function Buss.draw()
    if zustand == 1 then
        zeichneBuss(BussX, BussY)
    end

end

function Buss.update(dt)

    if zustand == 1 then
        BussX = BussX -300*dt
    end

end

function zeichneBuss(x,y)
    love.graphics.rectangle("fill",x,y,25)
    love.graphics.setColor(252, 151, 43)
end

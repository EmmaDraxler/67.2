require "Buss"
require "Haus"

function love.load()
    zustand = 3
    zeit = 0

    Buss.load()
    House.load()

end


function love.draw()
    love.graphics.setColor(0,0,1)
    love.graphics.print("Zeit: " .. math.floor(zeit*100)/100, 375, 0)  --print sorgt dafür das variable angezeigt wird
    Buss.draw()
    House.draw()
end


function love.update(dt)
    zeit = zeit + dt
    if zeit < 3 then
        Buss.update(dt)
    end

    if zeit > 3 and zustand == 1
        then House.update(dt)
    end
end


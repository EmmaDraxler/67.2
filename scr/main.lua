require "intro"
require "Buss"
require "Haus"
require "outro"

function love.load()
    zustand = 1 --steht für Intro
    zeit = 0
    intro.load()
    --Buss.load()
    --House.load()
end


function love.draw()
    love.graphics.setColor(1,1,1)
    love.graphics.print("Zeit: " .. math.floor(zeit*100)/100, 375, 0)  --print sorgt dafür das variable angezeigt wird
    if zustand == 1 then
        intro.draw()
    end
    --Buss.draw()
    --House.draw()
end


function love.update(dt)
    zeit = zeit + dt
    if zustand == 1 then
        intro.update(dt)
    end
    if zeit > 3 and zustand == 1 then
        zustand = 2
    end
    --[[if zeit < 3 then
        Buss.update(dt)
    end

    if zeit > 3 and zustand == 1
        then House.update(dt)
    end]]--
end


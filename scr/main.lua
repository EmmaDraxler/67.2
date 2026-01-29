require "intro"
require "Infrastruktur"
require "outro"
require "Buss"
require "szene2"
require "szene4"

function love.load()
    zustand = 1 --steht für Intro
    zeit = 0
    intro.load()
    Buss.load()
    --House.load()
end


function love.draw()
    love.graphics.setBackgroundColor(0, 0, 1)
    love.graphics.print(math.floor(zeit*100)/100, 375, 0)  --print sorgt dafür das variable angezeigt wird
    if zustand == 1 then
        intro.draw()
    end
    if zustand == 2 then
        Infrastruktur.draw()
        Buss.draw ()
    end

    if zustand == 3 then

        szene2.draw ()
        Buss.draw ()
    end

    if zustand == 4 then
        szene4.draw()
        Buss.draw ()
    end

    if zustand == 5 then
        outro.draw ()
    end
end


function love.update(dt)
    zeit = zeit + dt
    if zustand == 1 then
        intro.update(dt)
    end

    if zeit > 3 and zustand == 1 then
        zustand = 2
    end

    if zustand == 2 then
        Buss.update(dt)
    end

    if zustand == 2 and zeit > 11 then
        zustand = 3
        bus = 150
        rad1 = 180
        rad2 = 320
        f1 = 155
        f2 = 220
        f3 = 285
    end

    if zustand == 3 then
        Buss.update (dt)
    end

    if zustand == 3 and zeit > 18 then
        zustand = 4
        bus = 150
        rad1 = 180
        rad2 = 320
        f1 = 155
        f2 = 220
        f3 = 285
    end

    if zustand == 4 then
        Buss.update (dt)
    end

    if zustand == 4 and zeit < 22 then

    end
    if zustand == 4 and zeit > 25 then
        zustand = 5
    end

end
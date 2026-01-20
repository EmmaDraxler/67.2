require "intro"
require "Infrastruktur"
require "outro"
require "Buss"
function love.load()
    zustand = 1 --steht für Intro
    zeit = 0
    intro.load()
    --Buss.load()
    --House.load()
end


function love.draw()
    love.graphics.setBackgroundColor(0, 0, 0.5)
    love.graphics.print(math.floor(zeit*100)/100, 375, 0)  --print sorgt dafür das variable angezeigt wird
    if zustand == 1 then
        intro.draw()
    end
    if zustand == 2 then
        Infrastruktur.draw()
        Buss.draw ()
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

end
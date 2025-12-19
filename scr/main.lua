require "Haus"


function love.load()
    zustand = 1
    zeit = 0

    Haus.load()
end


function love.draw()
    love.graphics.setBackgroundColor(25/255, 30/255, 46/255)
    love.graphics.print("Zeit: " .. math.floor(zeit*100)/100, 375, 0)  --print sorgt dafür das variable angezeigt wird

    Haus.draw()
end


function love.update(dt)
    zeit = zeit + dt

    if zeit > 30 and zustand == 1
        then zustand = 2
    end

end


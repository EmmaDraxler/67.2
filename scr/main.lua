require "intro"
require "Infrastruktur"
require "outro"
require "Transporter"
require "szene2"
require "szene3"
require "Raueber"
require "Polizei"

function love.load()
    zustand = 1
    zeit = 0

    if intro then intro.load() end
    Infrastruktur.load()
    Transporter.load()
    Raueber.load()
    szene2.load()
    Polizei.load()
end

function love.update(dt)
    zeit = zeit + dt

    if zustand == 1 then
        if intro then intro.update(dt) end
        if zeit > 3 then
            zustand = 2
        end

    elseif zustand == 2 then
        Transporter.update(dt)
        Infrastruktur.update(dt)
        Raueber.update(dt)
        Polizei.update(dt)

        if zeit > 20 then
            zustand = 3
            Transporter.load()
            Polizei.load()
        end

    elseif zustand == 3 then
        szene2.update(dt)
        Transporter.update(dt)
        Polizei.update(dt)

        if zeit > 30 then
            zustand = 4
            Transporter.load()
            Polizei.load()
        end

    elseif zustand == 4 then
        Transporter.update(dt)
        Polizei.update(dt)

        if zeit > 37 then
            zustand = 5
        end
    end
end

function love.draw()
    love.graphics.setBackgroundColor(0, 0, 0)
    love.graphics.print(math.floor(zeit * 100) / 100, 375, 0)

    if zustand == 1 then
        if intro then intro.draw() end

    elseif zustand == 2 then
        Infrastruktur.draw()
        Raueber.draw()
        Transporter.draw()
        Polizei.draw()

    elseif zustand == 3 then
        szene2.draw()
        Transporter.draw()
        Polizei.draw()

    elseif zustand == 4 then
        szene3.draw()
        Polizei.draw()
        Transporter.draw()

    elseif zustand == 5 then
        if outro then outro.draw() end
    end
end
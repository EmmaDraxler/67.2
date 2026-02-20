Transporter = {}

function zeichneTransporter()

    love.graphics.setColor(1, 1, 1)
    love.graphics.rectangle("fill", tx, ty, 210, 120, 5, 5)
    love.graphics.rectangle("fill", tx + 200, ty + 50, 60, 70, 15, 15)

    love.graphics.setColor(0, 0, 0)
    love.graphics.rectangle("line", tx, ty, 210, 120, 5, 5)
    love.graphics.rectangle("line", tx + 200, ty + 50, 60, 70, 15, 15)

    love.graphics.setColor(1, 1, 1)
    love.graphics.rectangle("fill", tx + 198, ty + 52, 14, 66)

    love.graphics.setColor(0.15, 0.15, 0.15)
    love.graphics.rectangle("fill", tx, ty + 105, 255, 15, 3, 3)

    love.graphics.setColor(0.1, 0.1, 0.15)
    love.graphics.rectangle("fill", tx + 175, ty + 15, 45, 40, 5, 5)

    love.graphics.setColor(1, 0.9, 0.2)
    love.graphics.rectangle("fill", tx + 250, ty + 65, 12, 20, 3, 3)

    love.graphics.setColor(0.8, 0.1, 0.1)
    love.graphics.rectangle("fill", tx, ty + 20, 8, 50, 2, 2)

    love.graphics.setColor(0.05, 0.05, 0.05)
    love.graphics.circle("fill", tx + 30, ty + 120, 30)
    love.graphics.circle("fill", tx + 170, ty + 120, 30)

    love.graphics.setColor(0.7, 0.7, 0.7)
    love.graphics.circle("fill", tx + 30, ty + 120, 12)
    love.graphics.circle("fill", tx + 170, ty + 120, 12)
end

function Transporter.load()
    tx = 50
    ty = 400
end

function Transporter.update(dt)
    speed = 90

    if zustand == 2 and zeit < 10 then speed = 0 end
    if zustand == 3 then speed = 110 end
    if zustand == 4 and zeit > 32 then speed = 0 end

    tx = tx + dt * speed
end

function Transporter.draw()
    if zustand == 4 and istGecrasht and tx >= 420 then

        love.graphics.translate(tx + 100, ty + 60)
        love.graphics.rotate(fallWinkel)
        love.graphics.translate(-(tx + 100), -(ty + 60))
        zeichneTransporter()

    else
        zeichneTransporter()
    end
end
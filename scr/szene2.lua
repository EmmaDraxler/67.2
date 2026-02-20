szene2 = {}

function zeichneStreifen(xpos)
    love.graphics.setColor(1, 1, 1)
    love.graphics.rectangle("fill", xpos, 540, 100, 15)
end

function zeichneStrasse()
    love.graphics.setColor(117/255, 117/255, 116/255)
    love.graphics.rectangle("fill", 0, 500, 800, 200)
    zeichneStreifen(0)
    zeichneStreifen(125)
    zeichneStreifen(250)
    zeichneStreifen(375)
    zeichneStreifen(500)
    zeichneStreifen(625)
    zeichneStreifen(750)
end

function szene2.load()
    szene2.sonneY = 350
    szene2.heuX = 850
    szene2.heuWinkel = 0
end

function szene2.update(dt)
    if szene2.sonneY > 100 then
        szene2.sonneY = szene2.sonneY - 10 * dt
    end

    szene2.heuX = szene2.heuX - 150 * dt
    szene2.heuWinkel = szene2.heuWinkel - 5 * dt

    if szene2.heuX < -50 then
        szene2.heuX = 850
    end
end

function szene2.draw()
    love.graphics.setBackgroundColor(237/255, 147/255, 95/255)

    love.graphics.setColor(1, 0.9, 0.2)
    love.graphics.circle("fill", 400, szene2.sonneY, 50)

    love.graphics.setColor(0.9, 0.7, 0.4)
    love.graphics.rectangle("fill", 0, 300, 800, 300)

    love.graphics.setColor(0.8, 0.6, 0.3)
    love.graphics.polygon("fill", 0, 300, 150, 150, 300, 300)
    love.graphics.polygon("fill", 600, 300, 700, 100, 800, 300)

    zeichneStrasse()

    love.graphics.setColor(0.2, 0.6, 0.2)
    love.graphics.rectangle("fill", 100, 250, 20, 80)
    love.graphics.rectangle("fill", 80, 270, 20, 10)
    love.graphics.rectangle("fill", 80, 260, 10, 20)
    love.graphics.rectangle("fill", 700, 220, 25, 100)
end
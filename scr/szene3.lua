szene3 = {}

function szene3.draw()
    love.graphics.setColor(81/255, 130/255, 245/255)
    love.graphics.rectangle("fill", 0, 0, 800, 450)

    love.graphics.setColor(1, 0.9, 0.2)
    love.graphics.circle("fill", 350, 150, 50)

    love.graphics.setColor(0.3, 0.25, 0.2)
    love.graphics.polygon("fill", -50, 450, 150, 200, 350, 450)
    love.graphics.polygon("fill", 350, 450, 550, 250, 750, 450)

    love.graphics.setColor(0.15, 0.1, 0.1)
    love.graphics.polygon("fill", 500, 450, 520, 500, 490, 550, 530, 600, 0, 600, 0, 450)

    love.graphics.setColor(0.3, 0.3, 0.3)
    love.graphics.rectangle("fill", 0, 450, 500, 150)

    love.graphics.setColor(1, 1, 1)
    love.graphics.rectangle("fill", 20, 515, 60, 15)
    love.graphics.rectangle("fill", 120, 515, 60, 15)
    love.graphics.rectangle("fill", 220, 515, 60, 15)
    love.graphics.rectangle("fill", 320, 515, 60, 15)
    love.graphics.rectangle("fill", 420, 515, 60, 15)
end
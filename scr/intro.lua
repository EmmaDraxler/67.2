intro = {}

function intro.load()
    myFont = love.graphics.newFont(50)
    countdownTimer = 4
end

function intro.draw()
    love.graphics.setFont(myFont)
    love.graphics.print(math.floor(countdownTimer), 400, 300)

end

function intro.update(dt)
    countdownTimer = countdownTimer - 1*dt
end
intro = {}

function intro.load()
    countdownTimer = 4
end

function intro.draw()
    love.graphics.print(math.floor(countdownTimer), 400, 400)
end

function intro.update(dt)
    countdownTimer = countdownTimer - 1*dt
end

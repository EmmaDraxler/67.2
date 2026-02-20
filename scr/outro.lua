outro = {}

function outro.load()
myFont = love.graphics.newFont(50)
end

function outro.draw()
love.graphics.setFont(myFont)
    love.graphics.setColor(1, 1, 1)
love.graphics.print("To be continued", 100, 300)

end
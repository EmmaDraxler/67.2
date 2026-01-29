outro = {}

function outro.load()
myFont = love.graphics.newFont(50)
end

function outro.draw()
love.graphics.setFont(myFont)
love.graphics.print("Thank you for watching!", 100, 300)

end
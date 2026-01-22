Buss = {}
function Buss.draw ()
    zeichneBus ()
end
function zeichneBus ()
    love.graphics.setColor (345/255, 245/255, 50/250)
    love.graphics.rectangle ("fill", 150,400,200, 120)
    love.graphics.setColor (0, 0, 0)
    love.graphics.circle ("fill",180, 520, 20)
    love.graphics.circle ("fill",320, 520, 20)
    love.graphics.setColor (116/255, 221/255, 242/250)
    love.graphics.rectangle ("fill", 170,420,60, 60)
end
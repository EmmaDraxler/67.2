Buss = {}
function Buss.draw ()
    zeichneBus ()
end
function zeichneBus ()
    love.graphics.setColor (345/255, 245/255, 50/250)
    love.graphics.rectangle ("fill", bus,400,200, 120)
    love.graphics.setColor (0, 0, 0)
    love.graphics.circle ("fill",rad1, 520, 20)
    love.graphics.circle ("fill",rad2, 520, 20)
    love.graphics.setColor (116/255, 221/255, 242/250)
    love.graphics.rectangle ("fill", f1,420,60, 40)
    love.graphics.rectangle ("fill", f2,420,60, 40)
    love.graphics.rectangle ("fill", f3,420,60, 40)
end

function Buss.load ()
    bus = 150
    rad1 = 180
    rad2 = 320
    f1 = 155
    f2 = 220
    f3 = 285
end

function Buss.update(dt)
    bus = bus + dt*80
    rad1 = rad1 + dt*80
    rad2 = rad2 + dt*80
    f1 = f1 + dt*80
    f2 = f2 + dt*80
    f3 = f3 + dt*80
end
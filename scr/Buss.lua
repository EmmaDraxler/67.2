Buss = {}
function Buss.draw ()
    zeichneBus ()
end
function zeichneBus ()
    love.graphics.setColor (345/255, 245/255, 50/250)
    love.graphics.rectangle ("fill", bus,busy,200, 120)
    love.graphics.setColor (0, 0, 0)
    love.graphics.circle ("fill",rad1, rad1y, 20)
    love.graphics.circle ("fill",rad2, rad2y, 20)
    love.graphics.setColor (116/255, 221/255, 242/250)
    love.graphics.rectangle ("fill", f1,f1y,60, 40)
    love.graphics.rectangle ("fill", f2,f2y,60, 40)
    love.graphics.rectangle ("fill", f3,f3y,60, 40)
end

function Buss.load ()
    bus = 150
    rad1 = 180
    rad2 = 320
    f1 = 155
    f2 = 220
    f3 = 285
    busy = 400
    rad1y = 520
    rad2y = 520
    f1y = 420
    f2y = 420
    f3y = 420
end

function Buss.update(dt)
    bus = bus + dt*80
    rad1 = rad1 + dt*80
    rad2 = rad2 + dt*80
    f1 = f1 + dt*80
    f2 = f2 + dt*80
    f3 = f3 + dt*80

    if zustand == 4 then
        busy = busy - dt*80
        rad1y = rad1y - dt*80
        rad2y = rad2y - dt*80
        f1y = f1y - dt*80
        f2y = f2y - dt*80
        f3y = f3y - dt*80
    end
end
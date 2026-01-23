Buss = {}
function Buss.draw ()
    zeichneBus ()
end
function zeichneBus ()
    love.graphics.setColor (345/255, 245/255, 50/250)
    love.graphics.rectangle ("fill", bus*s ,busy,200*s, 120*s)
    love.graphics.setColor (0, 0, 0)
    love.graphics.circle ("fill",rad1*s, rad1y, 20*s)
    love.graphics.circle ("fill",rad2*s, rad2y, 20*s)
    love.graphics.setColor (116/255, 221/255, 242/250)
    love.graphics.rectangle ("fill", f1*s,f1y,60*s, 40*s)
    love.graphics.rectangle ("fill", f2*s,f2y,60 *s, 40*s)
    love.graphics.rectangle ("fill", f3*s,f3y,60*s, 40*s)
end

function Buss.load ()
    s = 1
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
        s = s - 0.1*dt
        busy = busy - dt*40
        rad1y = rad1y - dt*40
        rad2y = rad2y - dt*40
        f1y = f1y - dt*40
        f2y = f2y - dt*40
        f3y = f3y - dt*40
    end
end
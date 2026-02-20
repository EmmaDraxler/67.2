Raueber = {}

function zeichnePistole(x, y, g)
    love.graphics.setColor(0.15, 0.15, 0.15)
    love.graphics.rectangle("fill", x - 35 * g, y - 38 * g, 18 * g, 7 * g)
    love.graphics.rectangle("fill", x - 22 * g, y - 38 * g, 5 * g, 12 * g)
end

function zeichneSack(x, y, g)
    love.graphics.setColor(90/255, 75/255, 55/255)
    love.graphics.circle("fill", x - 15 * g, y - 20 * g, 12 * g)
    love.graphics.polygon("fill", x - 22 * g, y - 34 * g, x - 8 * g, y - 34 * g, x - 15 * g, y - 20 * g)
end

function zeichneMensch(x, y, typ, g)
    love.graphics.setLineWidth(4 * g)
    love.graphics.setColor(0, 0, 0)
    love.graphics.line(x, y, x, y - 45 * g)
    love.graphics.line(x, y, x - 5 * g, y + 25 * g)
    love.graphics.line(x, y, x + 5 * g, y + 25 * g)
    love.graphics.line(x, y - 35 * g, x - 20 * g, y - 30 * g)

    love.graphics.setColor(20/255, 30/255, 55/255)
    love.graphics.circle("fill", x, y - 60 * g, 16 * g)
    love.graphics.polygon("fill", x + 13 * g, y - 60 * g, x + 22 * g, y - 66 * g, x + 22 * g, y - 54 * g)

    love.graphics.setColor(210/255, 210/255, 210/255)
    love.graphics.rectangle("fill", x - 12 * g, y - 63 * g, 10 * g, 2 * g)

    if typ == "gun" then
        zeichnePistole(x, y, g)
    end
    if typ == "bag" then
        zeichneSack(x, y, g)
    end
end

function Raueber.load()
    r1x = 580
    r1y = 470
    r2x = 600
    r2y = 470
    r3x = 620
    r3y = 470
    r4x = 640
    r4y = 470

    g = 0.6
    kugelX = 0
    kugelAn = false       --wurde geschossen?
    schussTreffer = false --haben wir das Ziel getroffen
    alleWeg = false
end

function Raueber.update(dt)
    if zeit > 3.5 and zeit < 7.5 then
        g = 0.6 + (r1y - 470) * 0.01 --berechnet zurückgelegende Strecke

        if r1x > 420 then r1x = r1x - dt * 80 end
        if r1y < 520 then r1y = r1y + dt * 20 end

        if r2x > 480 then r2x = r2x - dt * 60 end
        if r2y < 500 then r2y = r2y + dt * 15 end

        if r3x > 480 then r3x = r3x - dt * 60 end
        if r3y < 540 then r3y = r3y + dt * 30 end

        if r4x > 540 then r4x = r4x - dt * 40 end
        if r4y < 520 then r4y = r4y + dt * 20 end
    end

    if zeit > 7.6 and schussTreffer == false and kugelAn == false then
        kugelX = r1x - 15
        kugelAn = true
    end

    if kugelAn then
        kugelX = kugelX - dt * 800
        if kugelX < - 50 then
            kugelAn = false
            schussTreffer = true
        end
    end

    if schussTreffer == true then
        r1x = r1x - dt * 350
        r2x = r2x - dt * 350
        r3x = r3x - dt * 350
        r4x = r4x - dt * 350

        if r1x < tx + 180 then
            alleWeg = true
        end
    end
end

function Raueber.draw()
    if kugelAn then
        if kugelX > r1x - 80 then
            love.graphics.setColor(1, 0.8, 0)
            love.graphics.circle("fill", r1x - 35 * g, r1y - 36 * g, 15)
            love.graphics.setColor(1, 1, 1)
            love.graphics.circle("fill", r1x - 35 * g, r1y - 36 * g, 8)
        end

        love.graphics.setColor(1, 0.5, 0)
        love.graphics.rectangle("fill", kugelX, r1y - 36 * g, 60, 2)

        love.graphics.setColor(1, 1, 0)
        love.graphics.rectangle("fill", kugelX, r1y - 37 * g, 15, 4)
    end

    if alleWeg == false then
        zeichneMensch(r4x, r4y, "gun", g)
        zeichneMensch(r2x, r2y, "bag", g)
        zeichneMensch(r3x, r3y, "bag", g)
        zeichneMensch(r1x, r1y, "gun", g)
    end
end
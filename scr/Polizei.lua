Polizei = {}

function zeichnePolizeiAuto()
    love.graphics.setColor(0, 0.1, 0.5)
    love.graphics.rectangle("fill", polizeiX, polizeiY, 170, 55)
    love.graphics.setColor(1, 1, 1)
    love.graphics.rectangle("fill", polizeiX + 40, polizeiY - 30, 95, 30)
    love.graphics.rectangle("fill", polizeiX, polizeiY + 18, 170, 10)
    love.graphics.setColor(0.6, 0.8, 1)
    love.graphics.rectangle("fill", polizeiX + 45, polizeiY - 25, 35, 20)
    love.graphics.rectangle("fill", polizeiX + 90, polizeiY - 25, 40, 20)

    if lichtFarbe == 1 then
        love.graphics.setColor(1, 0, 0)
        love.graphics.rectangle("fill", polizeiX + 60, polizeiY - 40, 25, 10)
        love.graphics.setColor(0, 0, 0.3)
        love.graphics.rectangle("fill", polizeiX + 85, polizeiY - 40, 25, 10)
    else
        love.graphics.setColor(0.3, 0, 0)
        love.graphics.rectangle("fill", polizeiX + 60, polizeiY - 40, 25, 10)
        love.graphics.setColor(0, 0, 1)
        love.graphics.rectangle("fill", polizeiX + 85, polizeiY - 40, 25, 10)
    end

    love.graphics.setColor(1, 1, 0)
    love.graphics.rectangle("fill", polizeiX + 165, polizeiY + 5, 5, 20)
    love.graphics.setColor(1, 0, 0)
    love.graphics.rectangle("fill", polizeiX, polizeiY + 5, 5, 20)
    love.graphics.setColor(0, 0, 0)
    love.graphics.circle("fill", polizeiX + 40, polizeiY + 55, 22)
    love.graphics.circle("fill", polizeiX + 130, polizeiY + 55, 22)
end

function Polizei.load()
    polizeiX = -450
    polizeiY = 470
    ty = 400
    Geschwindigkeit = 90
    lichtTimer = 0
    lichtFarbe = 1
    fallGeschwindigkeit = 0
    fallWinkel = 0
    istGecrasht = false
    crashAktiv = false
    crashTimer = 0
end

function Polizei.update(dt)
    if zustand >= 3 or (zustand == 2 and zeit > 10) then
        polizeiX = polizeiX + dt * Geschwindigkeit
    end

if zustand == 4 then
  if not istGecrasht then
    if polizeiX + 170 < tx then
      Geschwindigkeit = 250
       else
       istGecrasht = true
       crashAktiv = true
       crashTimer = 0
      Geschwindigkeit = 0
    end
   else
    if crashAktiv then
       crashTimer = crashTimer + dt
       if crashTimer > 0.4 then crashAktiv = false end
     end
       if tx < 420 then
          tx = tx + dt * 300
     else
           tx = tx + dt * 100
           fallGeschwindigkeit = fallGeschwindigkeit + dt * 600
           ty = ty + fallGeschwindigkeit * dt

    if fallWinkel < 1.5 then
       fallWinkel = fallWinkel + dt * 2.5
           end
        end
    end
end

    lichtTimer = lichtTimer + dt
    if lichtTimer > 0.1 then
        lichtFarbe = lichtFarbe * -1
        lichtTimer = 0
    end
end

function Polizei.draw()
    zeichnePolizeiAuto()

    if crashAktiv then
        love.graphics.setColor(0.6, 0.6, 0.6)
        love.graphics.circle("fill", polizeiX + 170, polizeiY + 25, 25 + crashTimer * 150)

        love.graphics.setColor(1, 1, 1)
        love.graphics.circle("fill", polizeiX + 170, polizeiY + 25, 15 + crashTimer * 50)
    end
end
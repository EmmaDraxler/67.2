Infrastruktur = {}

function zeichneHimmel()
    love.graphics.setColor(1, 1, 1)
    love.graphics.circle("fill", moonX, moonY, 45)
    love.graphics.setColor(0.85, 0.85, 0.85)
    love.graphics.circle("fill", moonX + 20, moonY + 20, 12)
end

function zeichneStreifen(xpos)
    love.graphics.setColor(1, 1, 1)
    love.graphics.rectangle("fill", xpos, 540, 100, 15)
end

function zeichneStrasse()
    love.graphics.setColor(117/255, 117/255, 116/255)
    love.graphics.rectangle("fill", 0, 500, 800, 200)
    zeichneStreifen(0)
    zeichneStreifen(125)
    zeichneStreifen(250)
    zeichneStreifen(375)
    zeichneStreifen(500)
    zeichneStreifen(625)
    zeichneStreifen(750)
end

function zeichneHaus(x, y, w, h)
    d = 15
    love.graphics.setColor(0.2, 0.2, 0.2)
    love.graphics.polygon("fill", x, y, x + d, y - d, x + w + d, y - d, x + w, y)
    love.graphics.setColor(0, 0, 0)
    love.graphics.polygon("fill", x + w, y, x + w + d, y - d, x + w + d, y + h - d, x + w, y + h)
    love.graphics.setColor(0, 0, 0)
    love.graphics.rectangle("fill", x, y, w, h)
end

function zeichneFenster(x, y)
    love.graphics.setColor(235/255, 229/255, 52/255)
    love.graphics.rectangle("fill", x, y, 40, 40)
end

function zeichneHaus1()
    zeichneHaus(0, 150, 180, 400)
    zeichneFenster(10, 180)
    zeichneFenster(65, 180)
    zeichneFenster(120, 180)
    zeichneFenster(10, 240)
    zeichneFenster(65, 240)
    zeichneFenster(120, 240)
    zeichneFenster(10, 300)
    zeichneFenster(65, 300)
    zeichneFenster(120, 300)
    zeichneFenster(10, 360)
    zeichneFenster(65, 360)
    zeichneFenster(120, 360)
    zeichneFenster(10, 420)
    zeichneFenster(65, 420)
    zeichneFenster(120, 420)
    zeichneFenster(10, 480)
    zeichneFenster(65, 480)
    zeichneFenster(120, 480)
end

function zeichneHaus2()
    zeichneHaus(180, 200, 120, 350)
    zeichneFenster(190, 240)
    zeichneFenster(245, 240)
    zeichneFenster(190, 300)
    zeichneFenster(245, 300)
    zeichneFenster(190, 360)
    zeichneFenster(245, 360)
    zeichneFenster(190, 420)
    zeichneFenster(245, 420)
    zeichneFenster(190, 480)
    zeichneFenster(245, 480)
end

function zeichneHaus3()
    zeichneHaus(320, 100, 175, 450)
    zeichneFenster(330, 140)
    zeichneFenster(385, 140)
    zeichneFenster(440, 140)
    zeichneFenster(330, 200)
    zeichneFenster(385, 200)
    zeichneFenster(440, 200)
    zeichneFenster(330, 260)
    zeichneFenster(385, 260)
    zeichneFenster(440, 260)
    zeichneFenster(330, 320)
    zeichneFenster(385, 320)
    zeichneFenster(440, 320)
    zeichneFenster(330, 380)
    zeichneFenster(385, 380)
    zeichneFenster(440, 380)
    zeichneFenster(330, 440)
    zeichneFenster(385, 440)
    zeichneFenster(440, 440)
end

function zeichneHaus4()
    zeichneHaus(515, 180, 125, 370)
    zeichneFenster(525, 220)
    zeichneFenster(580, 220)
    zeichneFenster(525, 280)
    zeichneFenster(580, 280)
    zeichneFenster(525, 340)
    zeichneFenster(580, 340)
    zeichneFenster(525, 400)
    zeichneFenster(580, 400)
    zeichneFenster(525, 460)
    zeichneFenster(580, 460)
end

function zeichneHaus5()
    zeichneHaus(630, 80, 170, 470)
    zeichneFenster(640, 120)
    zeichneFenster(695, 120)
    zeichneFenster(750, 120)
    zeichneFenster(640, 180)
    zeichneFenster(695, 180)
    zeichneFenster(750, 180)
    zeichneFenster(640, 240)
    zeichneFenster(695, 240)
    zeichneFenster(750, 240)
    zeichneFenster(640, 300)
    zeichneFenster(695, 300)
    zeichneFenster(750, 300)
    zeichneFenster(640, 360)
    zeichneFenster(695, 360)
    zeichneFenster(750, 360)
    zeichneFenster(640, 420)
    zeichneFenster(695, 420)
    zeichneFenster(750, 420)
    zeichneFenster(640, 480)
    zeichneFenster(695, 480)
    zeichneFenster(750, 480)
end

function zeichneBank()
    love.graphics.setColor(0.5, 0.55, 0.6)
    love.graphics.rectangle("fill", 400, 490, 360, 10)
    love.graphics.setColor(0.1, 0.1, 0.1)
    love.graphics.rectangle("line", 400, 490, 360, 10)

    love.graphics.setColor(0.6, 0.65, 0.7)
    love.graphics.rectangle("fill", 420, 480, 320, 10)
    love.graphics.setColor(0.1, 0.1, 0.1)
    love.graphics.rectangle("line", 420, 480, 320, 10)

    love.graphics.setColor(0.7, 0.75, 0.8)
    love.graphics.rectangle("fill", 430, 470, 300, 10)
    love.graphics.setColor(0.1, 0.1, 0.1)
    love.graphics.rectangle("line", 430, 470, 300, 10)

    love.graphics.setColor(0.65, 0.7, 0.75)
    love.graphics.rectangle("fill", 440, 320, 280, 150)
    love.graphics.setColor(0.1, 0.1, 0.1)
    love.graphics.rectangle("line", 440, 320, 280, 150)

    love.graphics.setColor(0.2, 0.3, 0.4)
    love.graphics.rectangle("fill", 465, 360, 25, 70)
    love.graphics.setColor(0.1, 0.1, 0.1)
    love.graphics.rectangle("line", 465, 360, 25, 70)

    love.graphics.setColor(0.1, 0.05, 0.05)
    love.graphics.rectangle("fill", 670, 360, 25, 70)
    love.graphics.setColor(0, 0, 0)
    love.graphics.line(670, 360, 695, 430)
    love.graphics.rectangle("line", 670, 360, 25, 70)

    love.graphics.setColor(0.15, 0.2, 0.25)
    love.graphics.rectangle("fill", 550, 380, 60, 90)
    love.graphics.setColor(0, 0, 0)
    love.graphics.rectangle("line", 550, 380, 60, 90)
    love.graphics.line(580, 380, 580, 470)

    love.graphics.setColor(0.8, 0.85, 0.9)
    love.graphics.rectangle("fill", 435, 330, 25, 160)
    love.graphics.rectangle("fill", 700, 330, 25, 160)
    love.graphics.rectangle("fill", 505, 330, 25, 150)
    love.graphics.rectangle("fill", 630, 330, 25, 150)

    love.graphics.setColor(0.1, 0.1, 0.1)
    love.graphics.rectangle("line", 435, 330, 25, 160)
    love.graphics.rectangle("line", 700, 330, 25, 160)
    love.graphics.rectangle("line", 505, 330, 25, 150)
    love.graphics.rectangle("line", 630, 330, 25, 150)

    love.graphics.setColor(0.8, 0.85, 0.9)
    love.graphics.rectangle("fill", 430, 330, 35, 8)
    love.graphics.rectangle("fill", 695, 330, 35, 8)
    love.graphics.rectangle("fill", 500, 330, 35, 8)
    love.graphics.rectangle("fill", 625, 330, 35, 8)

    love.graphics.rectangle("fill", 430, 482, 35, 8)
    love.graphics.rectangle("fill", 695, 482, 35, 8)
    love.graphics.rectangle("fill", 500, 472, 35, 8)
    love.graphics.rectangle("fill", 625, 472, 35, 8)

    love.graphics.setColor(0.1, 0.1, 0.1)
    love.graphics.rectangle("line", 430, 330, 35, 8)
    love.graphics.rectangle("line", 695, 330, 35, 8)
    love.graphics.rectangle("line", 500, 330, 35, 8)
    love.graphics.rectangle("line", 625, 330, 35, 8)

    love.graphics.rectangle("line", 430, 482, 35, 8)
    love.graphics.rectangle("line", 695, 482, 35, 8)
    love.graphics.rectangle("line", 500, 472, 35, 8)
    love.graphics.rectangle("line", 625, 472, 35, 8)

    love.graphics.setColor(0.7, 0.75, 0.8)
    love.graphics.rectangle("fill", 430, 290, 300, 40)
    love.graphics.setColor(0.1, 0.1, 0.1)
    love.graphics.rectangle("line", 430, 290, 300, 40)

    love.graphics.setColor(0.6, 0.65, 0.7)
    love.graphics.polygon("fill", 420, 290, 740, 290, 580, 200)
    love.graphics.setColor(0.1, 0.1, 0.1)
    love.graphics.polygon("line", 420, 290, 740, 290, 580, 200)
end

function Infrastruktur.load()
    moonX = 200
    moonY = 150
    moonGy = -35
end

function Infrastruktur.update(dt)
    moonX = moonX + dt * 16
    moonY = moonY + moonGy * dt
    moonGy = moonGy + dt * 6
end

function Infrastruktur.draw()
    love.graphics.setColor(0, 0.05, 0.2)
    love.graphics.rectangle("fill", 0, 0, 800, 600)
    zeichneHimmel()
    zeichneHaus1()
    zeichneHaus2()
    zeichneHaus3()
    zeichneHaus4()
    zeichneHaus5()
    zeichneStrasse()
    zeichneBank()
    love.graphics.setColor(1, 1, 1)
    love.graphics.printf(math.floor(zeit * 100) / 100, 0, 10, 800, "center")
end
function love.load()
    target = {}
    target.x = love.graphics.getWidth()/2
    target.y = love.graphics.getHeight()/2
    target.radius = 50

    score = 0
    timer = 0 
    gameFont = love.graphics.newFont(40)
end

function love.update(dt)

end


function love.draw()
    love.graphics.setColor(1,0,0)
    love.graphics.circle("fill", target.x,target.y,target.radius)

    love.graphics.setColor(1,1,1)
    love.graphics.setFont(gameFont)
    love.graphics.print(score, 0 , 0)
end

function love.mousepressed( x, y, button, istouch, presses )
    if button == 1 then
        if distanceBetweenSquared(x,y,target.x,target.y) < target.radius^2 then
            score = score+1
            target.x = math.random(target.radius, love.graphics.getWidth() - target.radius)
            target.y = math.random(target.radius, love.graphics.getHeight()- target.radius)
        end
    end
end

function distanceBetweenSquared(x1,y1,x2,y2)
    return (x2-x1)^2 + (y2-y1)^2
end
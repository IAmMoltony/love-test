function love.load()
    rect_x = 10
    rect_y = 10
    rect_velx = 1
    rect_vely = 1
    screen_width, screen_height = love.graphics.getDimensions()
    love.window.setTitle("boing boing boing")
end

function love.update()
    rect_x = rect_x + rect_velx
    rect_y = rect_y + rect_vely

    if (rect_x > screen_width - 100) or (rect_x < 0) then
        rect_velx = rect_velx * -1
    elseif (rect_y > screen_height - 100) or (rect_y < 0) then
        rect_vely = rect_vely * -1
    end
end

function love.draw()
    love.graphics.setColor(255, 0, 0)
    love.graphics.rectangle("fill", rect_x, rect_y, 100, 100)
end

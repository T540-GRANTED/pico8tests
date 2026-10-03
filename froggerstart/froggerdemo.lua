--[[Frogger Goals, 
 player movement (done)
 wall collision (done)
 obstacle collision (sorta done, could use more and overall refinement)



]]  


function _init()
    
    px = 7 
    py = 13
    mve = 1
    ply = {flip_x=true, flip_y=false}


end


function _update()
    input()
     move()
    px = mid(px, 0, 15) --setting parameters for edge of the room/walls
    py = mid(py, 0, 13) --i was setting this up in pixels initially as opposed to tiles and accidentally made it much bigger than i wanted
end


function input()
    nx = 0
    ny = 0

    if (btnp(0)) nx -=1 -- l
         -- ply.flip_y = true -- left, im dumb, this only flips it, not rotates and the sprite is symmetrical
    if (btnp(1)) nx += 1 -- right
    if (btnp(2)) ny -= 1 -- up
    if (btnp(3)) ny += 1 -- down

end

    function move()
        if nx == 0 and ny == 0 then
            return
        end
        npx = px + nx
        npy = py + ny

        if mget(npx, npy) == 0  
        or mget(npx, npy) == 2 or mget(npx, npy) == 8 then
            px += nx
            py += ny
        end

   -- px += nx
    --py += ny
   
end



function _draw()
    cls()
    map()
    spr(1, px*8, py*8)
    -- spr(n, x, y, w, h, flip_x, flip_y)
end

-- 10.02.26, [turtles, sprite animation, collision with npo]
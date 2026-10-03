-- ref: https://www.youtube.com/watch?v=PWsjdgt96Xg&list=PLFe0IpUm7MTzjFx0aWeeAOUkO2IZYvS6x
function _init()
px = 8
py = 8
shrooms = 0 



end


function _update()
    input()
    move()
end

function input()
    nx = 0
    ny = 0

    if (btnp(0)) nx = -1
    if (btnp(1)) nx = 1
    if (btnp(2)) ny = -1
    if (btnp(3)) ny = 1
end 


function move()
    if nx == 0 and ny == 0 then
        return
    end
    npx = px + nx 
    npy = py + ny 
    if mget(npx, npy) == 0 then --movement and tile collision
    px += nx
    py += ny
    elseif mget(npx, npy) == 4 then
        mset(npx, npy, 0)
        shrooms += 1
        px += nx
        py += ny
    elseif mget(npx, npy) == 3 then
        if shrooms >= 4 then 
            px += nx
            py += ny
    end

    end
end

function _draw()
cls(0)
map()
spr(1, px*8, py*8)
if shrooms >= 5 then
    print(shrooms, 1, 1, 15)
else 
    print(shrooms, 1, 1, 8)
    end
end


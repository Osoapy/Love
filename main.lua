-- CREATING FUNCTIONS
function loadImage (path)
    local info = love.filesystem.getInfo(path)
    if info then
        return love.graphics.newImage(path)
    end
end

function rgb (red, blue, green)
    red, blue, green = red/255, blue/255, green/255
    return red, blue, green
end

-- LOADING (BEFORE THE GAME STARTS)
function love.load()
    -- READING WINDOW VALUES
    Wwidth, Wheight = love.graphics.getDimensions()

    -- GENERATING HEADER
    header = {
        width,
        height,
        HEIGHT = 0.05
    }
    header.width = Wwidth
    header.height = Wheight * header.HEIGHT

    -- CREATING ASSETS
    image = loadImage("Assets/a.png")
end

-- UPDATING (DYNAMICALLY)
function love.update(dt)
    
end

-- DRAWING ON THE SCREEN
function love.draw()
    -- DRAWING THE HEADER
    love.graphics.setColor(rgb(50, 50, 205))
    love.graphics.rectangle("fill", 0, 0, header.width, header.height)

    -- ...
    love.graphics.setColor(1, 1, 1)
    love.graphics.draw(image, 100, 100)
    love.graphics.print("Dimensions: " .. Wwidth .. " and " .. Wheight)
end
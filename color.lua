local Color = {}
Color.__index = Color

function Color.new(a, r, g, b)
    local self = setmetatable({}, Color)
    self.a = a or 1
    self.r = r or 255
    self.g = g or 50
    self.b = b or 255
    return self
end

return Color

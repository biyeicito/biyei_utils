DebugPrint = function(msg)
    if not Config.Debug then return end
    print(string.format('^0[^2DEBUG^0] %s', msg))
end

PrintWarning = function(msg)
    print(string.format('^0[^3WARNING^0] %s', msg))
end



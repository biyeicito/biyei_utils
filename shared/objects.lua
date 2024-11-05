InitObjects = function()
    BU = { }
    BU.Callbacks = BU.Callbacks or {}
    BU.requestId = BU.requestId or 0
    BU.Config = Config
    BU.Core = Core

    exports("GetSharedObjects", function()
        return BU
    end)
end





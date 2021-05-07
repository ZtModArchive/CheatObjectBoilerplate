--- Function for try-catching
--- @param func function
function try(func)
    -- Try
    local status, exception = pcall(func)
    -- Catch
    if not status then
        -- Show exception in the message panel in-game
        displayZooMessageTextWithZoom("Exception: "..exception, 1, 30)
    end
end
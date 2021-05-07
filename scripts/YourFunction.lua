-- Include Zoo Tycoon 2 libraries
include "scenario/scripts/entity.lua"
include "scenario/scripts/token.lua"
include "scenario/scripts/ui.lua"
include "scenario/scripts/misc.lua"

--  Include Other scripts
include "scripts/try.lua"

--- This is a boilerplate function
--- @param args any
function yourFunction(args)
    try(
        function()
            -- BFGManager
            local gameMgr = queryObject("BFGManager")
            if gameMgr == nil then
                return error("BFGManager not found")
            end

            -- Animal list
            local animalList = findType("animal")
            if animalList == nil or type(animalList) ~= "table" then
                return error("No animals found")
            end
            local numAnimal = table.getn(animalList)

            -- Loop over each animal
            for i = 1, numAnimal, 1 do
                local animal = resolveTable(animalList[i].value)
                if animal == nil then
                    return error("Animal not found")
                end

                local name = animal:BFG_GET_ATTR_STRING("s_name")
                if (name == "test") then
                    
                    -- Your code here

                end
            end
        end
    )
end
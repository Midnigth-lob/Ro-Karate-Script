-- HERLANTUPAPI HUB 😈 By HelDarkz v1.2 - AUTOFARM FUERZA + VIDA

local whitelist = {
    ["HERLAN37237"] = true,
    ["Elcapo3000677"] = true,
}

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

if not whitelist[LocalPlayer.Name] then
    LocalPlayer:Kick("No estás autorizado para usar HERLANTUPAPI.")
    return
end

-- Módulos y servicios
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Modules = ReplicatedStorage:WaitForChild("Modules")
local BridgeNet = require(Modules:WaitForChild("BridgeNet2"))

-- Remote de FUERZA
local fuerzaRemote = BridgeNet.ReferenceBridge("imadumbexploiter9d7f88729c2c6ceff3bb1ce223049848")
local fuerzaCantidad = 150

-- Remote de VIDA
local vidaRemote = BridgeNet.ReferenceBridge("imadumbexploiter3527d36bd7d656f96a836f1df5085590")
local vidaCantidad = 150

-- Función para farmear fuerza
task.spawn(function()
    while true do
        for i = 1, fuerzaCantidad * 10 * 2.5 do
            fuerzaRemote:Fire()
        end
        task.wait(2)
    end
end)

-- Función para farmear vida
task.spawn(function()
    while true do
        for i = 1, vidaCantidad * 10 * 2.5 do
            vidaRemote:Fire()
        end
        task.wait(2)
    end
end)

print("🔥 HERLANTUPAPI está farmeando fuerza y vida automáticamente.")


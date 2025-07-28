-- HERLANTUPAPI HUB 😈 By HelDarkz v1.1 (AUTO START)

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

-- Opcional: mostrar mensaje en consola
print("✅ Whitelist verificada. Iniciando autofarm...")

-- Variables necesarias
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local BridgeNet = require(ReplicatedStorage:WaitForChild("Modules"):WaitForChild("BridgeNet2"))

-- Remote para fuerza
local fuerzaRemote = BridgeNet.ReferenceBridge("imadumbexploiter9d7f88729c2c6ceff3bb1ce223049848")

-- Remote para vida
local vidaRemote = BridgeNet.ReferenceBridge("imadumbexploiter3527d36bd7d656f96a836f1df5085590")

-- Loops automáticos
local function autoFarmFuerza()
    while true do
        for i = 1, 150 * 10 * 2.5 do
            fuerzaRemote:Fire()
        end
        task.wait(2)
    end
end

local function autoFarmVida()
    while true do
        for i = 1, 150 * 10 * 2.5 do
            vidaRemote:Fire()
        end
        task.wait(2)
    end
end

-- Ejecutar ambas funciones en paralelo
task.spawn(autoFarmFuerza)
task.spawn(autoFarmVida)

-- Mensaje opcional
print("🔥 HERLANTUPAPI está farmeando fuerza y vida automáticamente.")

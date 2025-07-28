-- 𝐇𝐞𝐥𝐃𝐚𝐫𝐤𝐬 - FUERZA 😛🧬

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Modules = ReplicatedStorage:WaitForChild("Modules")
local BridgeNet = require(Modules:WaitForChild("BridgeNet2"))

local remote = BridgeNet.ReferenceBridge("imadumbexploiter9d7f88729c2c6ceff3bb1ce223049848")

local ANZAHL_DUPLIKATIONEN = 150

while true do
    for i = 1, ANZAHL_DUPLIKATIONEN * 10 * 2.5 do
        remote:Fire()
    end
    task.wait(2)
end

-- 𝐇𝐞𝐥𝐃𝐚𝐫𝐤𝐬 - VIDA 😛🧬

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Modules = ReplicatedStorage:WaitForChild("Modules")
local BridgeNet = require(Modules:WaitForChild("BridgeNet2"))

local pullUpRemote = BridgeNet.ReferenceBridge("imadumbexploiter3527d36bd7d656f96a836f1df5085590")

local DUPLIKATIONEN = 150

while true do
    for i = 1, DUPLIKATIONEN * 10 * 2.5 do
        pullUpRemote:Fire()
    end
    task.wait(2)
end


wait(5)
while true do
    local mats = {
        "Cobblestone";
        "Concrete";
        "Sand";
        "Grass";
        "Brick";
        "CorrodedMetal";
        "DiamondPlate";
        "Fabric";
        "Foil";
        "ForceField";
        "Glass";
        "Granite";
        "Ice";
        "Marble";
        "Metal";
        "Neon";
        "Pebble";
        "Plastic";
        "Slate";
        "SmoothPlastic";
        "Wood";
        "WoodPlanks";
        }
    local part = Instance.new("Part")
    local numberOfShapes = 3
    part.Parent = workspace
    part.CanCollide = false
    local randomShapeIndex = math.random(1, numberOfShapes)
    part.BrickColor = BrickColor.Random()
        if randomShapeIndex == 1 then
        part.Shape = "Block"
        end
         if randomShapeIndex == 2 then
        part.Shape = "Ball"
         end
         if randomShapeIndex == 3 then
        part.Shape = "Cylinder"
         end
         part.Material =  mats[math.random(1,#mats)]
        part.Size = Vector3.new(math.random(1,10),math.random(1,10),math.random(1,10))
        part.CFrame = game.Workspace:WaitForChild("pz3rk").HumanoidRootPart.CFrame
        part.Transparency = math.random(0.00,1.00)
        part.Reflectance = math.random(0.00,1.00)
        wait()
        part:ApplyImpulse(Vector3.new(math.random(10,10000),math.random(10,10000),math.random(10,10000)), part.Position)
end 

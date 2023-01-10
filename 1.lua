	while true do
    wait(1)
    local teleport_table = {
        location1 = Vector3.new (2147483648.2147483648, 2147483648.2147483648, 2147483648.2147483648) -- your desired position
    }
    
    local tween_s = game:GetService('TweenService')
    local tweeninfo = TweenInfo.new(0,Enum.EasingStyle.Linear)
    
    local lp = game.Players.LocalPlayer
    
    function bypass_teleport(v)
        if lp.Character and 
        lp.Character:FindFirstChild('HumanoidRootPart') then
            local cf = CFrame.new(v)
            local a = tween_s:Create(lp.Character.HumanoidRootPart,tweeninfo,{CFrame=cf})
            a:Play()
            -- a.Completed:Wait()
            -- print('Teleporting Done!')
        end
    end

    bypass_teleport(teleport_table.location1)
end

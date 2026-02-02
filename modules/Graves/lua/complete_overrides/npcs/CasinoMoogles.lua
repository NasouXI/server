-----------------------------------
-- Add Casino Moogles to Chocobo Circuit (zone 70)
-----------------------------------
require('modules/module_utils')

-----------------------------------
local m = Module:new('CasinoMoogles')

m:addOverride('xi.zones.Chocobo_Circuit.Zone.onInitialize', function(zone)
    -- Call the zone's original function for onInitialize
    super(zone)

    local Dealer_Shadow = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = 'Dealer Shadow',
        look = 2359,
        x = -323.3333,
        y = 0.0000,
        z = -481.7264,
        rotation = 159,
        widescan = 1,
        onTrade = function(player, npc, trade)
if trade:getItemId() ~= xi.item.GIL then
    player:printToPlayer('We only take gil around here, dont try and cheat me!', 0 , npc:getPacketName())
    return
    end
if player:getCharVar('CasinoGil') > 0 then
    player:printToPlayer('You already have a bet pending, you cannot place another bet!', 0 , npc:getPacketName())
    return
    end
if trade:getItemQty(xi.item.GIL, 0) >= 5000001 then
    player:printToPlayer('Woooohh high roller, we are not that rich around here, 5,000,000 is the limit!', 0 , npc:getPacketName())
    return
    end

    if trade:getItemQty(xi.item.GIL, 1) and trade:getItemCount() >= 1 then
    amount = trade:getGil()
    player:setCharVar('CasinoGil', amount)
    local gilz = player:getCharVar('CasinoGil')
    player:delGil(gilz)
    end
    player:printToPlayer(string.format('You placed a bet for %s gil. Talk to me again and let the games begin!', amount), 0, npc:getPacketName())
        end,
        onTrigger = function(player, npc)
        if player:getCharVar('CasinoGil') == 0 then
    player:printToPlayer('Do you want to play some card games. Lets play high cards 21, if your total', 0, npc:getPacketName())
    player:printToPlayer('beats mine you will win x2 your bet, if you draw a 21 you will win x3 your', 0, npc:getPacketName())
    player:printToPlayer('bet. We accept bids up to 5,000,000. May the odds be ever in your favor!', 0, npc:getPacketName())
    else
    local targ
    if target == nil then
        targ = player
    else
        targ = GetPlayerByName(target)
        if targ == nil then
            error(player, string.format('Player named "%s" not found!', target))
            return
        end
    end
local playercasino = math.random(0, 21)
local npccasino = math.random(0, 21)
npc:setLocalVar('Casino', npccasino)
player:setLocalVar('Casino', playercasino)
player:printToPlayer(string.format('%s draws a %s',targ:getName(),  player:getLocalVar('Casino')), xi.msg.channel.SYSTEM_3)
player:printToPlayer(string.format('Dealer draws a %s', npc:getLocalVar('Casino')), xi.msg.channel.SYSTEM_3)
if playercasino == 21 then
            local winner = player:getCharVar('CasinoGil') * 3
                player:printToPlayer('You rolled a 21, Congratulations... as a special reward we have tripled your winnings, you have won %s gil.')
                player:printToPlayer(string.format('you have won %s gil.', winner), 0, npc:getPacketName())
            targ:addGil(winner)
elseif npccasino > playercasino then
            local loser = player:getCharVar('CasinoGil')
                player:printToPlayer('You Lose! Go cry somewhere else!', 0, npc:getPacketName())
elseif npccasino < playercasino then
            local winner = player:getCharVar('CasinoGil') * 2
                player:printToPlayer(string.format('You Win! here is your %s gil.', winner), 0, npc:getPacketName())
            targ:addGil(winner)
elseif npccasino == playercasino then
            local draw = player:getCharVar('CasinoGil')
                player:printToPlayer(string.format('Its a Draw! here is your %s gil back.', draw), 0, npc:getPacketName())
            targ:addGil(draw)
end
player:setLocalVar('Casino', 0)
npc:setLocalVar('Casino', 0)
player:setCharVar('CasinoGil', 0)
end
        end,
    })

        local Dealer_Vorpal = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = 'Dealer Vorpal',
        look = 2359,
        x = -316.9279,
        y = 0.0000,
        z = -481.8781,
        rotation = 221,
        widescan = 1,
        onTrade = function(player, npc, trade)
if trade:getItemId() ~= xi.item.GIL then
    player:printToPlayer('We only take gil around here, dont try and cheat me!', 0 , npc:getPacketName())
    return
    end
if player:getCharVar('CasinoGil') > 0 then
    player:printToPlayer('You already have a bet pending, you cannot place another bet!', 0 , npc:getPacketName())
    return
    end
if trade:getItemQty(xi.item.GIL, 0) >= 5000001 then
    player:printToPlayer('Woooohh high roller, we are not that rich around here, 5,000,000 is the limit!', 0 , npc:getPacketName())
    return
    end

    if trade:getItemQty(xi.item.GIL, 1) and trade:getItemCount() >= 1 then
    amount = trade:getGil()
    player:setCharVar('CasinoGil', amount)
    local gilz = player:getCharVar('CasinoGil')
    player:delGil(gilz)
    end
    player:printToPlayer(string.format('You placed a bet for %s gil. Talk to me again and let the games begin!', amount), 0, npc:getPacketName())
        end,
        onTrigger = function(player, npc)
        if player:getCharVar('CasinoGil') == 0 then
    player:printToPlayer('Do you want to play some card games. Lets play high cards 21, if your total', 0, npc:getPacketName())
    player:printToPlayer('beats mine you will win x2 your bet, if you draw a 21 you will win x3 your', 0, npc:getPacketName())
    player:printToPlayer('bet. We accept bids up to 5,000,000. May the odds be ever in your favor!', 0, npc:getPacketName())
    else
    local targ
    if target == nil then
        targ = player
    else
        targ = GetPlayerByName(target)
        if targ == nil then
            error(player, string.format('Player named "%s" not found!', target))
            return
        end
    end
local playercasino = math.random(0, 21)
local npccasino = math.random(0, 21)
npc:setLocalVar('Casino', npccasino)
player:setLocalVar('Casino', playercasino)
player:printToPlayer(string.format('%s draws a %s',targ:getName(),  player:getLocalVar('Casino')), xi.msg.channel.SYSTEM_3)
player:printToPlayer(string.format('Dealer draws a %s', npc:getLocalVar('Casino')), xi.msg.channel.SYSTEM_3)
if playercasino == 21 then
            local winner = player:getCharVar('CasinoGil') * 3
                player:printToPlayer('You rolled a 21, Congratulations... as a special reward we have tripled your winnings, you have won %s gil.')
                player:printToPlayer(string.format('you have won %s gil.', winner), 0, npc:getPacketName())
            targ:addGil(winner)
elseif npccasino > playercasino then
            local loser = player:getCharVar('CasinoGil')
                player:printToPlayer('You Lose! Go cry somewhere else!', 0, npc:getPacketName())
elseif npccasino < playercasino then
            local winner = player:getCharVar('CasinoGil') * 2
                player:printToPlayer(string.format('You Win! here is your %s gil.', winner), 0, npc:getPacketName())
            targ:addGil(winner)
elseif npccasino == playercasino then
            local draw = player:getCharVar('CasinoGil')
                player:printToPlayer(string.format('Its a Draw! here is your %s gil back.', draw), 0, npc:getPacketName())
            targ:addGil(draw)
end
player:setLocalVar('Casino', 0)
npc:setLocalVar('Casino', 0)
player:setCharVar('CasinoGil', 0)
end
        end,
    })

        local Dealer_Joker = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = 'Dealer Joker',
        look = 2359,
        x = -316.8031,
        y = 0.0000,
        z = -488.2059,
        rotation = 42,
        widescan = 1,
        onTrade = function(player, npc, trade)
if trade:getItemId() ~= xi.item.GIL then
    player:printToPlayer('We only take gil around here, dont try and cheat me!', 0 , npc:getPacketName())
    return
    end
if player:getCharVar('CasinoGil') > 0 then
    player:printToPlayer('You already have a bet pending, you cannot place another bet!', 0 , npc:getPacketName())
    return
    end
if trade:getItemQty(xi.item.GIL, 0) >= 5000001 then
    player:printToPlayer('Woooohh high roller, we are not that rich around here, 5,000,000 is the limit!', 0 , npc:getPacketName())
    return
    end

    if trade:getItemQty(xi.item.GIL, 1) and trade:getItemCount() >= 1 then
    amount = trade:getGil()
    player:setCharVar('CasinoGil', amount)
    local gilz = player:getCharVar('CasinoGil')
    player:delGil(gilz)
    end
    player:printToPlayer(string.format('You placed a bet for %s gil. Talk to me again and let the games begin!', amount), 0, npc:getPacketName())
        end,
        onTrigger = function(player, npc)
        if player:getCharVar('CasinoGil') == 0 then
    player:printToPlayer('Do you want to play some card games. Lets play high cards 21, if your total', 0, npc:getPacketName())
    player:printToPlayer('beats mine you will win x2 your bet, if you draw a 21 you will win x3 your', 0, npc:getPacketName())
    player:printToPlayer('bet. We accept bids up to 5,000,000. May the odds be ever in your favor!', 0, npc:getPacketName())
    else
    local targ
    if target == nil then
        targ = player
    else
        targ = GetPlayerByName(target)
        if targ == nil then
            error(player, string.format('Player named "%s" not found!', target))
            return
        end
    end
local playercasino = math.random(0, 21)
local npccasino = math.random(0, 21)
npc:setLocalVar('Casino', npccasino)
player:setLocalVar('Casino', playercasino)
player:printToPlayer(string.format('%s draws a %s',targ:getName(),  player:getLocalVar('Casino')), xi.msg.channel.SYSTEM_3)
player:printToPlayer(string.format('Dealer draws a %s', npc:getLocalVar('Casino')), xi.msg.channel.SYSTEM_3)
if playercasino == 21 then
            local winner = player:getCharVar('CasinoGil') * 3
                player:printToPlayer('You rolled a 21, Congratulations... as a special reward we have tripled your winnings, you have won %s gil.')
                player:printToPlayer(string.format('you have won %s gil.', winner), 0, npc:getPacketName())
            targ:addGil(winner)
elseif npccasino > playercasino then
            local loser = player:getCharVar('CasinoGil')
                player:printToPlayer('You Lose! Go cry somewhere else!', 0, npc:getPacketName())
elseif npccasino < playercasino then
            local winner = player:getCharVar('CasinoGil') * 2
                player:printToPlayer(string.format('You Win! here is your %s gil.', winner), 0, npc:getPacketName())
            targ:addGil(winner)
elseif npccasino == playercasino then
            local draw = player:getCharVar('CasinoGil')
                player:printToPlayer(string.format('Its a Draw! here is your %s gil back.', draw), 0, npc:getPacketName())
            targ:addGil(draw)
end
player:setLocalVar('Casino', 0)
npc:setLocalVar('Casino', 0)
player:setCharVar('CasinoGil', 0)
end
        end,
    })

        local Dealer_ZerO = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = 'Dealer ZerO',
        look = 2359,
        x = -323.0808,
        y = 0.0000,
        z = -487.9911,
        rotation = 99,
        widescan = 1,
        onTrade = function(player, npc, trade)
if trade:getItemId() ~= xi.item.GIL then
    player:printToPlayer('We only take gil around here, dont try and cheat me!', 0 , npc:getPacketName())
    return
    end
if player:getCharVar('CasinoGil') > 0 then
    player:printToPlayer('You already have a bet pending, you cannot place another bet!', 0 , npc:getPacketName())
    return
    end
if trade:getItemQty(xi.item.GIL, 0) >= 5000001 then
    player:printToPlayer('Woooohh high roller, we are not that rich around here, 5,000,000 is the limit!', 0 , npc:getPacketName())
    return
    end

    if trade:getItemQty(xi.item.GIL, 1) and trade:getItemCount() >= 1 then
    amount = trade:getGil()
    player:setCharVar('CasinoGil', amount)
    local gilz = player:getCharVar('CasinoGil')
    player:delGil(gilz)
    end
    player:printToPlayer(string.format('You placed a bet for %s gil. Talk to me again and let the games begin!', amount), 0, npc:getPacketName())
        end,
        onTrigger = function(player, npc)
        if player:getCharVar('CasinoGil') == 0 then
    player:printToPlayer('Do you want to play some card games. Lets play high cards 21, if your total', 0, npc:getPacketName())
    player:printToPlayer('beats mine you will win x2 your bet, if you draw a 21 you will win x3 your', 0, npc:getPacketName())
    player:printToPlayer('bet. We accept bids up to 5,000,000. May the odds be ever in your favor!', 0, npc:getPacketName())
    else
    local targ
    if target == nil then
        targ = player
    else
        targ = GetPlayerByName(target)
        if targ == nil then
            error(player, string.format('Player named "%s" not found!', target))
            return
        end
    end
local playercasino = math.random(0, 21)
local npccasino = math.random(0, 21)
npc:setLocalVar('Casino', npccasino)
player:setLocalVar('Casino', playercasino)
player:printToPlayer(string.format('%s draws a %s',targ:getName(),  player:getLocalVar('Casino')), xi.msg.channel.SYSTEM_3)
player:printToPlayer(string.format('Dealer draws a %s', npc:getLocalVar('Casino')), xi.msg.channel.SYSTEM_3)
if playercasino == 21 then
            local winner = player:getCharVar('CasinoGil') * 3
                player:printToPlayer('You rolled a 21, Congratulations... as a special reward we have tripled your winnings, you have won %s gil.')
                player:printToPlayer(string.format('you have won %s gil.', winner), 0, npc:getPacketName())
            targ:addGil(winner)
elseif npccasino > playercasino then
            local loser = player:getCharVar('CasinoGil')
                player:printToPlayer('You Lose! Go cry somewhere else!', 0, npc:getPacketName())
elseif npccasino < playercasino then
            local winner = player:getCharVar('CasinoGil') * 2
                player:printToPlayer(string.format('You Win! here is your %s gil.', winner), 0, npc:getPacketName())
            targ:addGil(winner)
elseif npccasino == playercasino then
            local draw = player:getCharVar('CasinoGil')
                player:printToPlayer(string.format('Its a Draw! here is your %s gil back.', draw), 0, npc:getPacketName())
            targ:addGil(draw)
end
player:setLocalVar('Casino', 0)
npc:setLocalVar('Casino', 0)
player:setCharVar('CasinoGil', 0)
end
        end,
    })
end)

return m

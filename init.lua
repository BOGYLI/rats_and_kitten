-- Dieses Skript ("init.lua") wird ausgeführt, wenn ein mod beim Spielstart geladen wird. --

-- Wir registrieren einen eigenen Chatbefehl, um einen Pinguin zu erzeugen. --
minetest.register_chatcommand("kitten", {

    -- Um den Befehl ausführen zu können, muss der Spieler das Recht interact haben.
    privs = {
        interact = true,
    },

    -- Die folgende Funktion wird ausgeführt, nachdem der Befehl eingegeben wurde.
    -- Die Funktion enthält die Parameter name und param: 
    -- name = der Name des Spielers, der den Befehl ausführt.
    -- param = alles, was hinter dem Befehl noch so getippt wurde.
    func = function(name, param)

        -- Wir fragen den Spieler mithilfe seines Namens beim Minetest-Objekt ab und speichern in in der Variablen player.
        local player = minetest.get_player_by_name(name)
        -- Wir fragen die Position des Spielers ab und speichern sie in der Variablen pos.
        local pos = player:get_pos()
        

        for i = 1, 1, 1 do
            -- Wir berechnen die Position das Pinguins und speichern sie in der Variablen pengupos.
            local kittenpos = {x=pos.x+1, y=pos.y, z=pos.z+i}

            -- Wir verwenden eine Methode der Erweiterung mobs, mit der man ein Mob hinzufügen kann.
            local kitten = mobs:add_mob(kittenpos, {
                -- Wir wählen einen Pinguin als Mob.
                name = "mobs_animal:kitten",
                -- Der Pinguin soll erstmal ein Junges sein.
                child = true,
                -- Besitzer des Tieres.
                owner = "singleplayer",
                -- Wir nennen den Pinguin Pingu.
                nametag = "Katze",
                -- Es ist egal, wie viele Mobs es in der Karte gibt.
                ignore_count = true
            })
        end
        

        -- Rückgabewert, der sagt, dass die Funktion für den Befehl erfolgreich ausgeführt wurde.
        -- Außerdem wird ein Text im Chat ausgegeben.
        return true, "Deine Katze wurde erfolgreich hinzugefügt."
    end,
})

minetest.register_chatcommand("rats", {

    -- Um den Befehl ausführen zu können, muss der Spieler das Recht interact haben.
    privs = {
        interact = true,
    },

    -- Die folgende Funktion wird ausgeführt, nachdem der Befehl eingegeben wurde.
    -- Die Funktion enthält die Parameter name und param: 
    -- name = der Name des Spielers, der den Befehl ausführt.
    -- param = alles, was hinter dem Befehl noch so getippt wurde.
    func = function(name, param)

        -- Wir fragen den Spieler mithilfe seines Namens beim Minetest-Objekt ab und speichern in in der Variablen player.
        local player = minetest.get_player_by_name(name)
        -- Wir fragen die Position des Spielers ab und speichern sie in der Variablen pos.
        local pos = player:get_pos()
        

        for i = 1, 10, 1 do
            -- Wir berechnen die Position das Pinguins und speichern sie in der Variablen pengupos.
            local ratpos = {x=pos.x+1, y=pos.y, z=pos.z+i}

            -- Wir verwenden eine Methode der Erweiterung mobs, mit der man ein Mob hinzufügen kann.
            local rat = mobs:add_mob(ratpos, {
                -- Wir wählen einen Pinguin als Mob.
                name = "mobs_animal:rat",
                -- Der Pinguin soll erstmal ein Junges sein.
                child = true,
                -- Besitzer des Tieres.
                owner = "singleplayer",
                -- Wir nennen den Pinguin Pingu.
                nametag = "Ratte",
                -- Es ist egal, wie viele Mobs es in der Karte gibt.
                ignore_count = true
            })
        end
        

        -- Rückgabewert, der sagt, dass die Funktion für den Befehl erfolgreich ausgeführt wurde.
        -- Außerdem wird ein Text im Chat ausgegeben.
        return true, "Deine Ratten wurde erfolgreich hinzugefügt."
    end,
})



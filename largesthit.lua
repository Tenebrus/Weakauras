-- Do not remove this comment, it is part of this trigger: discord_texture
function(_,_,combatEvent,_,sourceGUID,_,_,_,_,_,_,_,spellID,_,_,amount)
    local cnt = cnt or 1;

    if(sourceGUID == UnitGUID("player") and combatEvent == "SPELL_DAMAGE" ) then
        WA_Tenebrus_MAX = WA_Tenebrus_MAX or 0;
        WA_Tenebrus_MAX_NEW = amount
        if(WA_Tenebrus_MAX_NEW > WA_Tenebrus_MAX) then WA_Tenebrus_MAX = _Tenebrus_MAX_NEW end
        return true;
    end
end

-- Do not remove this comment, it is part of this trigger: discord_text
function(_,_,combatEvent,_,sourceGUID,_,_,_,_,_,_,_,spellID,_,_,amount)
    
    if(sourceGUID == UnitGUID("player") and combatEvent == "SPELL_DAMAGE" and spellID == 211727) then      
        return true;
    end
end


-- Display

function()
    local dmg = WA_Tenebrus_MAX or 0;
    
    return string.format("TK Discord\n|cffffff00Damage:|r%.2f", dmg/1000000) .. "m";
end

-- String
--[[d40eraGikvDjiPAukvCkLsMLi6wiK2fKKFrPuggqDmsAzkjptemnkrxtKyBuc(MsLghKuohcrRtKk5DucDpkj7Jsj0bvQAHqIhQuQjQs1fHkBKsQpkcnsOk1jrqReWlfPkZebUjuf7uOFcv1qPuPJsPKwkLINQyQI6QIu2Qiv1xPuXyfPsDwOkzTukbZfHWEL(lPmyqhMQwSs4XKyYi6YQAZa5ZqQrJqDAkwTiv8AvkZgk3MuTBb)MkdxLSCKEUkMoQRdX2vs9DkLQXRuCELO1lsA(ukr7N4Q2ChFZL7C6ScvwIQveDfrsu0waSLPybW72rVdzhYM7qAoPdsqHnR)oEmSoEf2S(ZudA0pfpoYVrIQcUdcfRdXmFDsx2MTz7E0ouzC2gULiPDrK7sqQD(nx(a5twu6CEmq21zcChuWpNXhpeGZ6Chdzh(gzNaIEMAqJ(PNgv7G58Kn3H9yFGx1ChDem20C5YDyp2h4M7OJGXMMlxUdY51uW8Ntx0H6v(M7OJGXMMlxUdiVcBCHM7OJGXMMlxUZ16l2J9bU5o6iySP5YL7qDyFZD0rWytZLl3H0acKrbbJx2ChDem20C5YL7qF0gxiV867GM6qUk3rP5gvBUZ5YtVzhdjtCJQG7CyVYTZys9BuDvNn4dc055gvtbCNd7vUDSgZJ(0j6cFNL4dc055gtaCNZLNEZgh7zJl0i4ouh75p)B4or8J46yuCHIshqUaBnMh9Pd(PLjGWiUogfxqtXH5On3OAJQnUQr1gtOr1gTSr1YDw4PB7WC0MBuTr1gx1i4gtOrWnAzJQL7qDSNnUqJRuTqhqUa3XAQjvbARiEsQN9cmN7CU80B4dc05z8QrWDWCEYM7WESpWRAUJocgBAUC5oiNxl8RFAx0H9yFGBUJocgBAUC5oKgqGmkiy8YM7OJGXMMlxUd1H9n3rhbJnnxUCNR1xSh7dCZD0rWytZLl3bKxHnUqZD0rWytZLl3H6v(M7OJGXMMlxUZXK63CNJjGg77C5P8Yo6iySP5oxEkVSOuUC5oSr)PB7WC0MBuTr1gx1OAJj0OAJw2OA5o0hTXfYlV(o8VHrOFNd7vUDkkDmbdRP40VWE(jBuTd)Bye63j)Bye6FiI56XW2RWM1E24c4V(Py(LhIafmNJudfNbRd)ByRDbUJ1utQc0wr8Kup7fyo35WELBhRDbUJ1utQc0wr8Kup7fyo3XJWUIsh2O)uRDbUJ1utQc0wr8Kup7fyo3XJDrSVr1olCuYNsy48CJQQDinNlm)scvCHgvtiblbVBNd7vUDSRZe4oOGFoJpE6W)gEBhMJ2CJQnQ24QgvBmHgvB0Ygvl35C5P3WheOZZP7gb3H0CshKGcBw)D8yyDuqoStp)B4ocGa0bjWudA0pT5okih2P3besqHnUWo)6pWBjacuGcuGgq78R)alqRSsG2Bxc2Jx4SrZgCjIlQHlUhfcWD3(Teit8heabkqbkqbkqbkq7SxdhMXZeRLtV7AK6OfOvceSffabkqbkqbkqbkq7SxdhMXZeRLtV7AkbwGwjqWwuaeOafOafOafOaPpJqdcKPiVffabkqbkWpqkqbkqb4dKcGaiacGaiacGaiacGaiacGaiacGaiacGaiacGaiacGaiacGaiacq5oEf2S(ZudA0pfpoYVrIQcUZ5YtVzJJ9SXfWJJ87SpTm(D4FdpMu)gvx15C5P36IoSr)PfLoSr)PwJ5rF6eDHVdtnOr)0M7WlV(okih2P3rb5WoDnE5135x)bUdjc1ZgxOtkDuqoStxJyd53rb5Wo9okih2P3raaHeuyJlSJwsTKko9fEg36pWj1sECiuLpX0i8EsTKAj1sQLulPwsTKNRhdJW7j1sQL0R7qc8wcGafOafOb0ohhcv5tmncVlqRSsGPfmCIPr49DS)cZV8P2VLa9bsbQ40x4zCR)alqRSsG2p2fhbeODFpE2Nio73sGmXFqaeOafOafOafOaTZET8h(fuKJMUFJaTsG2zVw(d)ckYrt3VrGoQabBrbqGcuGcuGcuGc0aAhVUdjW2I2zVw(d)ckYrt3VzlbYe)bbqGcuGcuGcuGcuGcuGc0o71YF4xqroA6(nc0kb61DibwaeOafOafOafOa)aPaiqbkqbkqbkqbsFgHgeitrElkacuGcuGFGua(azNF9h4tNTXhpOSpRra(jQHl9XfZAPfTMqcY4Sb3DbAxc2Jx4SrZgCjIlQHlUhfcWDVCh(3WfLoKMZfMFz(3We8G4oOEOZHnk3wEhH6zJl0fDmH1p98DrNZLNEdVnKKFOtex6JZMoP6C6ncUdXVbnXCJQwGirfyWGbRMYQuqTDjYo2UHKjUr1D3fvGbdwD1kW7cob1oNlp9gkyFGepoYVZ(737SWRCJK6U22H5On3OAJQnUQr1gtOr1gTSrWOkLYDa5c8ys9BuDvhsZ5cZVCyVYTthuxPZchL8PDrhfKd70Z)goTlsp)DqUi983XtsAyJl4X0yQbn6NEAUCNfok5tXrI(7eDHVZchL8P4dc055gtPZchL8PJj1Vrvl0Hn6pDmP(nQUQJrXf0ogYVJneMiEN7SWrjFkkELBKu3vhuWmPMQNskWSZHXMRol8ucdwtDbUO05C5P3W73GMyUXea3zHJs(0TDyoAZnQ2OAJRAuTXeAuTrlBemQsPCNd7vUD22fyVjO)bUdHXHW746CyVYTZ2omhT5gvBuTXvnQ2ycnQ2OLnQwUdP5CH5xM)nSng0eZDqDVUdjWDoxE6TTDyoAZnQ2OAJRAuTXeAuTrlBuTChdzhsZrXrj14FdJq)o8VHTgZJ(0j6cFNfELBOPoKa52omhT5gvBeCJRAeCJj0i4gTSrWOkLYDci6zQbn6NEAuTZ5YtVD)pEgH(Drhh18b2ZgxOdEJVneAlGFmVNGoNlp9w(3Wi0VdHb(PG8kprST)WMaAu8uIincj62(dBcOrXtj6C5P3k34QM7qAoxy(L5Fd3b1v6OGCyNE(3WDaHeuyJlSZwcGafOafiMtXJjqsD0c0kbAN9A5p8lOihnD)gb6OceSffabkqbkq6Zi0Gapm1eqJkqoQUN3X(C6jW7MJIJssebBPciqGabceyW396E0F6YwsrDuTcK9jfiPoABtfmyWGbdElbIkujq71T3IcWhi7SeFqGop3irvtPd9rBCH8YRVd)B4oibMAqJ(Pn3rb5Wo9oGqckSXf25x)bElbqGcuGc0aANF9hybALvc0E7sWE8cNnA2GlrCrnCX9OqaU72VLazI)GaiqbkqbkqbkqbsFgHgeitrElkacuGcuGFGuGcuGcWhifabqaeabqaeabqaeabqaeabqaeabqaeabqaeabqaeabqaeabqaeabqak3XRWM1FMAqJ(P4Xr(nsuvWDmbdRP40VWE(jBuTdP5Koibf2S(74XW6Koih2aAzhBimr8o3Xq2H0CuCusn(3WDyQbn6N2ChE513rb5Wo9okih2PRXlV(o)6pWDuqoStxJyd53rb5Wo9o)6pWNoBJpEqzFwJa8tudx6JlM1slAnHeKXzdU7c0UeShVWzJMn4sexudxCpkeG7EhfKd707acjOWgxyhTKAjvC6l8mU1FGtQL84qOkFIPr49KAj1sQLulPwsTKAjpxpggH3tQLulPx3He4TeabkqbkqbqGcuGc0aANJdHQ8jMgH3fOvwjW0cgoX0i8(o2FH5x(u73sG(aPavC6l8mU1FGfOvwjq7h7IJac0UVhp7teN9BjqM4piqbkqbkqbkacuGcuGcuGcuG0NrObbYuK3IcGafOaf4hifGpqkacGaiacGaiacGaiaL7aYf4o7PgpMaJEk1z7Dci6zQbn6NEAuTJTBizIR1PS7UGxLGLO2UPag1Se1adUGiQLwOdXVbnXCT2c7MskjqKwy3uSWUGvvrnlliIAjQ1bZ5jBUd7X(aVQ5o6iySP5YL7GCETWV(PDrh2J9bU5o6iySP5YL7qAabYOGGXlBUJocgBAUC5ouVY3ChDem20C5YDa5vyJl0ChDem20C5YDUwFXESpWn3rhbJnnxUChQd7BUJocgBAUC5ohtQFZDoMaASVZLNYl7OJGXMM7C5P8YIs5YL7SbFqGop3OQk4YL7SUrvlxPwUf]]

















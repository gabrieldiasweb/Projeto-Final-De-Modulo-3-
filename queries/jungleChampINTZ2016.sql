select
    jungleChamp, count(*) as `Quantidade de Partidas`
from
    (select
        blueTeamTag as teamTag, blueJungleChamp as jungleChamp
    from
        matchinfo
    where
        blueTeamTag = 'ITZ' and
        year = 2016 and
        league = 'WC'
    union all        
    select
        redTeamTag, redJungleChamp
    from
        matchinfo
    where
        redTeamTag = 'ITZ' and
        year = 2016 and
    league = 'WC') as jungleChampions
group by
    jungleChamp
order by
    jungleChamp desc;
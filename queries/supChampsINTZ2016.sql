select
    supportChamp, count(*) as `Quantidade de Partidas`
from
    (select
        blueTeamTag as teamTag, blueSupportChamp as supportChamp
    from
        matchinfo
    where
        blueTeamTag = 'ITZ' and
        year = 2016 and
        league = 'WC'
    union all        
    select
        redTeamTag, redSupportChamp
    from
        matchinfo
    where
        redTeamTag = 'ITZ' and
        year = 2016 and
    league = 'WC') as supportChampions
group by
    supportChamp
order by
    supportChamp desc;
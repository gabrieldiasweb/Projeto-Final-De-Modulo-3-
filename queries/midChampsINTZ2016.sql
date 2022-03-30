select
    middleChamp, count(*) as `Quantidade de Partidas`
from
    (select
        blueTeamTag as teamTag, blueMiddleChamp as middleChamp
    from
        matchinfo
    where
        blueTeamTag = 'ITZ' and
        year = 2016 and
        league = 'WC'
    union all        
    select
        redTeamTag, redMiddleChamp
    from
        matchinfo
    where
        redTeamTag = 'ITZ' and
        year = 2016 and
    league = 'WC') as middleChampions
group by
    middleChamp
order by
    middleChamp desc;
    
    select
    blueMiddleChamp as MiddleChamp, sum(bResult) as bVitorias, 
    sum(rResult) as rVitorias,
    (sum(bResult) + sum(rResult)) as total_vitorias
from
    (select 
        blueTeamTag, blueMiddleChamp, bResult 
    from 
        matchinfo
    where
        league = 'WC' and
        year = 2016) as blue
inner join
    (select 
        redTeamTag, redMiddleChamp, rResult 
    from 
        matchinfo
    where
        league = 'WC' and
        year = 2016) as red
on
    blue.blueMiddleChamp = red.redMiddleChamp
group by
    blueMiddleChamp
order by
    total_vitorias desc;
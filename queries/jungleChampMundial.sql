   select
    blueJungleChamp as JungleChamp, sum(bResult) as bVitorias, 
    sum(rResult) as rVitorias,
    (sum(bResult) + sum(rResult)) as total_vitorias
from
    (select 
        blueTeamTag, blueJungleChamp, bResult 
    from 
        matchinfo
    where
        league = 'WC' and
        year = 2016) as blue
inner join
    (select 
        redTeamTag, redJungleChamp, rResult 
    from 
        matchinfo
    where
        league = 'WC' and
        year = 2016) as red
on
    blue.blueJungleChamp = red.redJungleChamp
group by
    blueJungleChamp
order by
    total_vitorias desc;
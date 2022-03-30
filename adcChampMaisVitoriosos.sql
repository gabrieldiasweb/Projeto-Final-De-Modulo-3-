select
    blueADCChamp as ADCChamp, sum(bResult) as bVitorias, 
    sum(rResult) as rVitorias,
    (sum(bResult) + sum(rResult)) as total_vitorias
from
    (select 
        blueTeamTag, blueADCChamp, bResult 
    from 
        matchinfo
    where
        league = 'WC' and
        year = 2016) as blue
inner join
    (select 
        redTeamTag, redADCChamp, rResult 
    from 
        matchinfo
    where
        league = 'WC' and
        year = 2016) as red
on
    blue.blueADCChamp = red.redADCChamp
group by
    blueADCChamp
order by
    total_vitorias desc;
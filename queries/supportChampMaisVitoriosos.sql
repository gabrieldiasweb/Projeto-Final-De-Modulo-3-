select
    blueSupportChamp as SupportChamp, count(*) as `Quantidade de jogos`,
    (sum(bResult) + sum(rResult)) as total_vitorias
from
    (select 
        blueTeamTag, blueSupportChamp, bResult 
    from 
        matchinfo
    where
    (redTeamTag = 'itz' or blueTeamTag = 'itz') and
        league = 'WC' and
        year = 2016) as blue
inner join
    (select 
        redTeamTag, redSupportChamp, rResult 
    from 
        matchinfo
    where
        (redTeamTag = 'itz' or blueTeamTag = 'itz') and
        league = 'WC' and
        year = 2016) as red
on
    blue.blueSupportChamp = red.redSupportChamp
group by
    blueSupportChamp
order by
    total_vitorias desc;
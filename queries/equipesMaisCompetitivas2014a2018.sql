select 
    blueTeamTag as teamTag, bVitorias, rVitorias, (sum(bVitorias) + sum(rVitorias)) as total_vitorias
from
    (select 
        blueTeamTag, sum(bResult) as bVitorias
    from
        matchinfo
    group by
        blueTeamTag) as blue
inner join
    (select 
        redTeamTag, sum(rResult) rVitorias
    from
        matchinfo
    group by
        redTeamTag) as red
on
    blue.blueTeamTag = red.redTeamTag
group by
    blueTeamTag
order by
    total_vitorias desc;
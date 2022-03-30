select
    ADCChamp, count(*) as `Quantidade de Partidas`
from
    (select
        blueTeamTag as teamTag, blueADCChamp as ADCChamp
    from
        matchinfo
    where
        blueTeamTag = 'ITZ' and
        year = 2016 and
        league = 'WC'
    union all        
    select
        redTeamTag, redADCChamp
    from
        matchinfo
    where
        redTeamTag = 'ITZ' and
        year = 2016 and
    league = 'WC') as ADCChampions
group by
    ADCChamp
order by
    ADCChamp desc;
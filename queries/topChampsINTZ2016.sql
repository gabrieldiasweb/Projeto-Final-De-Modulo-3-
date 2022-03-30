select
    topChamp, count(*)
from
    (select
        blueTeamTag as teamTag, blueTopChamp as topChamp
    from
        matchinfo
    where
        blueTeamTag = 'ITZ' and
        year = 2016 and
        league = 'WC'
    union all        
    select
        redTeamTag, redTopChamp
    from
        matchinfo
    where
        redTeamTag = 'ITZ' and
        year = 2016 and
    league = 'WC') as topChampions
group by
    topChamp
order by
    topChamp asc;
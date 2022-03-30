select
	concat(blueTeamTag, ' ', bResult,
		   ' vs ',
           rResult, ' ', redTeamTag) as `match`,
           min_10, min_15, min_20, min_30
from
	matchinfo
    inner join
    gold
    on
    matchinfo.address = gold.address
where
	league = 'WC' and
    year = 2016 and
    (blueTeamTag = 'ITZ' or redTeamTag = 'ITZ');
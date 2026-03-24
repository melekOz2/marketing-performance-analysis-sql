facebook_ads_basic_daily
facebook_adset
facebook_campaign
google_ads_basic_daily


with facebook_cte as 
(
select D.ad_date, 'facebook_ads' as media_source,  C.campaign_name, A.adset_name, D.spend ,D.impressions  ,D.clicks ,D.value 
from facebook_ads_basic_daily D  
left join facebook_adset A  -- left join ile tabloları birleştirdik
on D.adset_id = A.adset_id
left join facebook_campaign C
on D.campaign_id = C.campaign_id 
), 

google_cte as -- tabloları istediğimiz gibi as ile isimlendirdik
(
select G.ad_date, 'google_ads' as media_source,  null as campaign_name, null as adset_name, G.spend , G.impressions  ,G.clicks  ,G.value 
from google_ads_basic_daily G -- çağırdığımız tabloyu harf ile kısaltık
),

all_data as  
(
select * from facebook_cte
union all -- oluşturduğumuz tabloları union all ile birleştirdik all kullandık çünkü veri kaybını engellemek için 
select * from google_cte
)

select -- son olarak istediğimiz sütunları çağırdık
ad_date,
media_source,
campaign_name,
adset_name,
sum(spend) as total_spend,
sum(impressions) as total_impressions,
sum(clicks) as total_clicks,
sum(value) as total_value
from all_data
where ad_date is not null
group by ad_date, media_source, campaign_name, adset_name -- burda campaign_name ve adset_name ekledik çünkü select te onları çağırıyoruz sum da yoklar onlarda gruplanmalı ki göünüp çağrılabilsin
order by ad_date desc, media_source ,campaign_name, adset_name




 

      
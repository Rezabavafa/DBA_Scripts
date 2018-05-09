Exec sp_SpaceUsed '[IHIO].[SalamatInquiryResponses_61]'

----[Khanevar].[AllNafar]	85209686            	97899640 KB	72850176 KB	24350712 KB	698752 KB


--104857600 --> 100MB
with x as (
select 
'[IHIO].[SalamatInquiryResponses_61]' as name
,'4310829' as rows
,'737720' as Reserved
,'733560' as data            
,'1752' as index_size
,'2408' as unused
)
select *
,(cast(data as bigint)*1024)/cast(rows as bigint)as BytePerRow
,cast(104857600 as bigint)/((cast(data as bigint)*1024)/cast(rows as bigint))as DefaultMaxBufferRows
,(cast(data as bigint)*1024)/cast(rows as bigint)*250000



   from x
select 사업장명, 인허가일자 from camping_info where 사업장명 like '%해수욕장%';

select max(인허가일자) from camping_info where  소재지전체주소 like '%제주%' and 사업장명 like '%해수욕장%';

-- 제일 최근 날짜 구할 때는 max()를 사용

select * from camping_info where 소재지전체주소 like '%강원%' and 사업장명 like '%해수욕장%' and 영업상태구분코드 =1;


select 사업장명, 시설면적 from camping_info order by 시설면적 desc limit 10;

select * from camping_info where 소재지전체주소 like  '%경기%' order by 시설면적 desc limit 1,4;

select substr(소재지전체주소,1,instr(소재지전체주소, ' ')) as LOCATION, count(*) 
from camping_info
where 영업상태구분코드 =1
group by substr(소재지전체주소,1,instr(소재지전체주소, ' '))
having count(*) >=300
order by count(*) desc;



select substr(폐업일자,1,4) as year,  count(*) 
from camping_info 
where  영업상태구분코드 =3
group by substr(폐업일자,1,4);

# odd and not boring (faster)
SELECT * FROM Cinema
WHERE id&1 && description<>'boring' 
ORDER BY rating DESC;

#496ms
SELECT * FROM Cinema
WHERE MOD(id,2)=1 && description<>'boring' 
ORDER BY rating DESC;
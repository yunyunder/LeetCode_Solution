UPDATE Salary
SET sex = CASE sex when 'm' THEN 'f'
    else 'm'
    END;
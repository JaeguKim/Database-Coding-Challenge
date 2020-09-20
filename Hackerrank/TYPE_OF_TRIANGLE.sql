SELECT IF((A+B > C AND C >= A AND C >= B) OR (B+C > A AND A>=B AND A>=C) OR (C+A > B AND B>=A AND B>=C), 
          IF(A = B AND B = C,
             'Equilateral',
             IF(A = B OR B = C OR C = A,'Isosceles','Scalene')),
          'Not A Triangle')
FROM TRIANGLES

#간단한 풀이
SELECT IF(A+B>C AND A+C>B AND B+C>A, IF(A=B AND B=C, 'Equilateral', IF(A=B OR B=C OR A=C, 'Isosceles', 'Scalene')), 'Not A Triangle') FROM TRIANGLES;
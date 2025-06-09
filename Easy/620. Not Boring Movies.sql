# Write your MySQL query statement below
# 1. easy way to find even or odd numbers is to use %2
# 2. string comparison can use "=" for exact match or Like("") for similar format

Select id,movie, description, rating
From Cinema
WHERE description != 'boring' AND (id%2<>0)
ORDER BY rating DESC

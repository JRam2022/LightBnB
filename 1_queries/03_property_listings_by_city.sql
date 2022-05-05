SELECT properties.id as id, properties.title as title, properties.cost_per_night as cost_per_night, AVG(property_reviews.rating) as average_rating
FROM properties
JOIN property_reviews ON properties.id = property_reviews.property_id
WHERE city LIKE '%ancouve%'
GROUP by properties.id
HAVING AVG(property_reviews.rating) >= 4
ORDER BY average_rating
LIMIT 10;
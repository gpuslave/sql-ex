-- Exercise: 7 (Serge I: 2002-11-02)
-- Get the models and prices for all commercially available products (of any type) produced by maker B.
SELECT pr.model, sec.price
FROM product pr
INNER JOIN pc sec ON pr.model=sec.model
WHERE pr.maker='B'
UNION
SELECT pr.model, sec.price
FROM product pr
INNER JOIN laptop sec ON pr.model=sec.model
WHERE pr.maker='B'
UNION
SELECT pr.model, sec.price
FROM product pr
INNER JOIN printer sec ON pr.model=sec.model
WHERE pr.maker='B'
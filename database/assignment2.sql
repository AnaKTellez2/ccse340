--1
INSERT INTO public.account (
    account_firstname,
    account_lastname, 
    account_email,
    account_password
  )
VALUES   (
    'Tony',
    'Stark',
    'tony@starkent.com',
    'Iam1ronM@n'
  );
  
--2
UPDATE public.account
SET account_type = 'Admin'
WHERE account_id = 1;

--3
DELETE FROM public.account WHERE account_id=1;

--4 
SELECT 
    REPLACE(inv_description, 'small interiors', 'a huge interior') AS inv_description
FROM 
    inventory;

--5 inner join
SELECT
    inv_make,
    inv_model,
    classification_name
FROM 
	classification 
INNER JOIN 
	inventory ON inventory.classification_id = classification.classification_id
WHERE 
	classification_name='Sport'; 

--6 
SELECT 
    REPLACE(inv_image, '/images', '/images/vehicles') AS inv_image,
    REPLACE(inv_thumbnail, '/images', '/images/vehicles') AS inv_thumbnail
FROM 
    inventory;



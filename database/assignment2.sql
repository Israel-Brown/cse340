--  Insert Tony Stark's record
INSERT INTO account (account_firstname, account_lastname, account_email, account_password)
VALUES ('Tony', 'Stark', 'tony@starkent.com', 'Iam1ronM@n');

-- Update Tony Stark's account_type
UPDATE account
SET account_type = 'Admin'
WHERE account_email = 'tony@starkent.com';

-- Delete Tony Stark's record
DELETE FROM account
WHERE account_email = 'tony@starkent.com';

-- Perform an INNER JOIN to fetch make, model, and classification_name
SELECT inv_make, inv_model, classification.classification_name
FROM inventory
INNER JOIN classification
ON inventory.classification_id = classification.classification_id
WHERE classification.classification_name = 'Sport';

-- Queries 4 and 6 to be added to the Database

-- Query 4: Update GM Hummer description
UPDATE inventory
SET inv_description = REPLACE(inv_description, 'small interiors', 'a huge interior')
WHERE inv_make = 'GM' AND inv_model = 'Hummer';

-- Query 6: Update inv_image and inv_thumbnail paths
UPDATE inventory
SET inv_image = REPLACE(inv_image, '/images/', '/images/vehicles/'),
    inv_thumbnail = REPLACE(inv_thumbnail, '/images/', '/images/vehicles/');



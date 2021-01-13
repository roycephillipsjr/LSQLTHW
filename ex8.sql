DELETE FROM pet WHERE id IN (
  SELECT pet.id
  FROM pet, person_pet, person
  WHERE
  person.id = person_pet.person_id AND
  pet.id = person_pet.pet_id AND
  person.first_name = 'Zed'
);

SELECT * FROM pet;
SELECT * FROM person_pet;

DELETE FROM person_pet
  WHERE pet_id NOT IN (
    SELECT id FROM pet
  );

SELECT * FROM person_pet;

DELETE FROM pet WHERE id IN (
  SELECT pet.id
  FROM pet, person_pet, person
  WHERE
  person.id = person_pet.person_id AND
  pet.id = person_pet.pet_id AND
  person.first_name = 'Royce'
);


DELETE FROM person WHERE id IN (
  SELECT person.id
  FROM person, person_pet, pet
  WHERE
  person.id = person_pet.person_id AND
  pet.id = person_pet.pet_id AND
  pet.dead = 0
);

CREATE TABLE IF NOT EXISTS

	Books (
		book_id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
		name VARCHAR(50) NOT NULL,
		category VARCHAR(50) NOT NULL, 
		cover VARCHAR(250) NOT NULL, 
		author VARCHAR(50) NOT NULL, 
		created_at TIMESTAMP NOT NULL DEFAULT NOW(),
		updated_at TIMESTAMP NOT NULL DEFAULT NOW(),
		published_at TIMESTAMP NOT NULL DEFAULT NOW()
	
    )

INSERT INTO 
	books (
		name,
		category,
		cover,
		author
		)
	VALUES(
		'The Davinci Code',
		'Thriller',
		'The_Davinci_Code.jpg',
		'Dan Brown'
		);


CREATE TABLE IF NOT EXISTS
	authors(
		authors_id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
		name VARCHAR(50) NOT NULL,
		lastname VARCHAR(50) NOT NULL,
		birthday VARCHAR(50) NOT NULL,
		country VARCHAR(50) NOT NULL
	);

    INSERT INTO
	authors(
		name,
		lastname,
		birthday,
		country
	)
	VALUES(
		'Agatha',
		'Christie',
		'January 12, 1976',
		'United Kingdom'
	);

    INSERT INTO
	books(
		name,
		category,
		cover,
		author
	)
	VALUES(
		'The Murder at the Vicarage',
		'Novel',
		'cover.png',
		'Agatha Christie'
	),
	(	
		'Poirot sul Nilo',
		'Crime',
		'cover.png',
		'Agatha Christie'
	),
	(	
		'The Mystery of the Blue Train',
		'Crime',
		'cover.png',
		'Agatha Christie'
	);

    UPDATE authors SET birthday='Its ma birthday today' WHERE authors_id = 3 RETURNING *;
    UPDATE books SET cover='updatedCovers.jpg' WHERE book_id = 3 RETURNING *;
    SELECT category FROM books
    SELECT * FROM books WHERE name LIKE 'A%'
    SELECT * FROM books WHERE name LIKE '%and%'
    SELECT * FROM authors WHERE birthday LIKE '%195%'  ORDER BY birthday DESC
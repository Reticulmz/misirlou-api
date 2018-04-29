ALTER TABLE tournaments ADD team_size TINYINT NOT NULL;

CREATE TABLE teams(
	id BIGINT NOT NULL AUTO_INCREMENT,
	name VARCHAR(25) NOT NULL,
	tournament BIGINT NOT NULL,
	captain INT NOT NULL,
	PRIMARY KEY (id),
	UNIQUE (name),
	FOREIGN KEY (tournament) REFERENCES tournaments(id)
		ON UPDATE CASCADE
		ON DELETE CASCADE
);

CREATE TABLE team_users(
	team BIGINT NOT NULL,
	attributes TINYINT NOT NULL,
	user INT NOT NULL,
	PRIMARY KEY(team, user),
	FOREIGN KEY(team) REFERENCES teams(id)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);

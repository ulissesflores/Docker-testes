USE carteira;

CREATE TABLE IF NOT EXISTS contacts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    phone VARCHAR(255) NOT NULL
);

INSERT INTO contacts (name, email, phone)
VALUES ('John Doe', 'john.doe@example.com', '+1 123-456-7890'),
       ('Jane Smith', 'jane.smith@example.com', '+1 098-765-4321'),
       ('Bob Ross', 'bob.ross@example.com', '+1 555-666-7777'),
       ('Alice Johnson', 'alice.johnson@example.com', '+1 234-567-8910'),
       ('Charlie Brown', 'charlie.brown@example.com', '+1 987-654-3210'),
       ('Eve Adams', 'eve.adams@example.com', '+1 345-678-9123'),
       ('Frank Miller', 'frank.miller@example.com', '+1 678-901-2345'),
       ('Grace Lee', 'grace.lee@example.com', '+1 012-345-6789'),
       ('Hank Moody', 'hank.moody@example.com', '+1 567-890-1234'),
       ('Ivy Morgan', 'ivy.morgan@example.com', '+1 890-123-4567');

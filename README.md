## Just Add Water

Just Add Water is a gentle personal growth app.

Currently users can sign up and create short journal entries. The app's resources are private to each user, so users can only create, read, update, and delete their own journal entries.

In future iterations users will also be able to set goals and note their progress towards those goals.


## Links

* [Deployed Client](https://rivermagnetic.github.io/client-just-add-water/)

* [Client Repo](https://github.com/RiverMagnetic/client-just-add-water)

* [ERD](https://github.com/RiverMagnetic/api-rails-just-add-water/blob/master/just-add-water-original-erd.jpg) for the MVP


## Technologies Used

This is a custom API I built using Ruby, Rails, and PostgreSQL.


## Development Process

I created tools to guide my development process, inculding an ERD, Wireframes, User Stories, and a Front-End Mock-Up. After the creating the mock-up I built the back end and tested the CRUD actions with curl scripts. Finally I added functionality and further styling to my Front End and linked it to the API I built.

In building the back-end I read more rails doumentation than I had in the past and increased my knowledge. When I ran into issues, I posted on the issue queue, looked through past lessons and closed issues, Googled, and reached out to instructors and my growing network of more experienced software engineers.


## Routes

In the current iteration, here are the routes the API expects:

| Request Type   | Path                   | Controller#Action |
|----------------|------------------------|-------------------|
| POST           | `/sign-up`             | `users#signup`    |
| POST           | `/sign-in`             | `users#signin`    |
| DELETE         | `/sign-out`            | `users#signout`   |
| PATCH          | `/change-password`     | `users#changepw`  |
| GET            | `/items`               | `items#index`     |
| POST           | `/items`               | `items#create`    |
| PATCH          | `/items/:id`           | `items#update`    |
| DELETE         | `/items/:id`           | `items#destroy`   |

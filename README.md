# How to run the application

*Download git repo to your local machine*

Please make sure you have downloaded RVM with Ruby ruby 3.1.3 [RVM](https://help.dreamhost.com/hc/en-us/articles/217185247-Ruby-Version-Manager-RVM) and all dependencies.

Run `Bundle install`

run `touch .env` Or create .env file

add these varaibles into .env

`DATABASE_USERNAME=database_username`

`DATABASE_PASSWORD=database_password`

Run `rails db:create`

Run `rails db:migrate`

Run `rails s`


# Questions for the Team:

**What does the "status" of a project represent?**

Possible answers: Status could refer to stages such as "In Progress", "Completed", "On Hold", etc. Clarifying the exact statuses available is crucial.
How should the comments and status changes be displayed in the conversation history?

Possible answers: The conversation history could show a timestamp, the user's name, and the comment or status change. It could be ordered from the newest to the oldest.
Do we need any form of user authentication or association with the comments and status changes?

Possible answers: Yes, users should log in, and the comments/status changes should be associated with a user.
Should we implement roles or permissions around who can comment and who can change the status?

Possible answers: All users can comment, but only certain roles like "Project Manager" or "Admin" can change the status.
Should the comment or status change allow attachments or only plain text?

Possible answers: No attachments, just plain text for now.
Should there be a character limit for comments?

Possible answers: Yes, a reasonable limit (e.g., 250 characters) should be applied to comments.
Should the system notify users when a new comment or status change is made?

Possible answers: No, notifications are not required for this task.
Do we need any particular design or UI framework to be implemented?

Possible answers: Yes, use Tailwind CSS for styling and Slim as the template engine.

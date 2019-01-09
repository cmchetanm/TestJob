# README

This application details:

* Ruby version - 2.5.1

* System dependencies - rails 5.2.2

* Database creation - Postgresql

* Database initialization - according database.yml + secrets.yml (role, createdb, password)
#####  rake db:create db:migrate db:seeds

* Deployment instructions - yet now

##  API endpoints

### 1.  Standart REST calls:
####  Get user
####  GET http://localhost:3000/api/v1/users/:id
##### Response:

	{
		"id": 1,
		"name": "First",
		"email": "user1@example.com",
		"group_events": [
		    {
	        "id": 1,
	        "user_id": 1,
	        "start_date": "2019-02-02T00:00:00.000Z",
	        "end_date": "2019-02-03T00:00:00.000Z",
	        "duration": 1,
	        "name": "Name",
	        "description": "description",
	        "markdown_description": "<p>description</p>\n",
	        "location": "location",
	        "published_at": "2019-01-09T20:00:42.553Z",
	        "deleted_at": "2019-01-09T19:49:16.236Z"
		    },
		    {
	        "id": 2,
	        "user_id": 1,
	        "start_date": "2019-02-02T00:00:00.000Z",
	        "end_date": "2019-02-03T00:00:00.000Z",
	        "duration": 1,
	        "name": "Name",
	        "description": "description",
	        "markdown_description": "<p>description</p>\n",
	        "location": "location",
	        "published_at": null,
	        "deleted_at": null
		    }
		]
	}


####  Get all users:
####  GET http://localhost:3000/api/v1/users/
##### Response:
	  [   
		  {
				 "id": 1,
				 "name": "First",
				 "email": "user1@example.com",
				 "group_events": [
				    {
			        "id": 1,
			        "user_id": 1,
			        "start_date": "2019-02-02T00:00:00.000Z",
			        "end_date": "2019-02-03T00:00:00.000Z",
			        "duration": 1,
			        "name": "Name",
			        "description": "description",
			        "markdown_description": "<p>description</p>\n",
			        "location": "location",
			        "published_at": "2019-01-09T20:00:42.553Z",
			        "deleted_at": "2019-01-09T19:49:16.236Z"
				    },
				    {
			        "id": 2,
			        "user_id": 1,
			        "start_date": "2019-02-02T00:00:00.000Z",
			        "end_date": "2019-02-03T00:00:00.000Z",
			        "duration": 1,
			        "name": "Name",
			        "description": "description",
			        "markdown_description": "<p>description</p>\n",
			        "location": "location",
			        "published_at": null,
			        "deleted_at": null
				    }
				]
			}
			{
			    "id": 2,
			    "name": "Second",
			    "email": "user2@example.com",
			    "group_events": []
			}
	  ]

####  If user not found:
####  GET http://localhost:3000/api/v1/users/13
##### Response: 

		{
		  "error": ["Record not found in Databas."],
		}


####  Get all events:
####  GET http://localhost:3000/api/v1/group_events
##### Response: 

		[
    {
        "id": 2,
        "user_id": 1,
        "start_date": "2019-02-02T00:00:00.000Z",
        "end_date": "2019-02-03T00:00:00.000Z",
        "duration": 1,
        "name": "Name",
        "description": "description",
        "markdown_description": "<p>description</p>\n",
        "location": "location",
        "published_at": null,
        "deleted_at": null,
        "user": {
            "id": 1,
            "name": "First",
            "email": "user1@example.com"
        }
    },
    {
        "id": 3,
        "user_id": 1,
        "start_date": "2019-02-02T00:00:00.000Z",
        "end_date": "2019-02-03T00:00:00.000Z",
        "duration": 1,
        "name": "Name",
        "description": "description",
        "markdown_description": "<p>description</p>\n",
        "location": "location",
        "published_at": null,
        "deleted_at": null,
        "user": {
            "id": 1,
            "name": "First",
            "email": "user1@example.com"
        }
    },
    {
        "id": 4,
        "user_id": 1,
        "start_date": "2019-02-02T00:00:00.000Z",
        "end_date": "2019-02-03T00:00:00.000Z",
        "duration": 1,
        "name": "Name",
        "description": "Fine meeting with developers in office [www.blog.com](my_email@google.com)!",
        "markdown_description": "<p>Fine meeting with developers in office <a href=\"my_email@google.com\">www.blog.com</a>!</p>\n",
        "location": "location",
        "published_at": null,
        "deleted_at": null,
        "user": {
            "id": 1,
            "name": "First",
            "email": "user1@example.com"
        }
    },
    {
        "id": 1,
        "user_id": 1,
        "start_date": "2019-02-02T00:00:00.000Z",
        "end_date": "2019-02-03T00:00:00.000Z",
        "duration": 1,
        "name": "Name",
        "description": "description",
        "markdown_description": "<p>description</p>\n",
        "location": "location",
        "published_at": "2019-01-09T20:00:42.553Z",
        "deleted_at": "2019-01-09T19:49:16.236Z",
        "user": {
            "id": 1,
            "name": "First",
            "email": "user1@example.com"
        }
    },
    {
        "id": 5,
        "user_id": 1,
        "start_date": "2019-02-02T00:00:00.000Z",
        "end_date": "2019-02-03T00:00:00.000Z",
        "duration": 1,
        "name": "Name",
        "description": "Fine meeting with developers in office [www.blog.com](my_email@google.com)!",
        "markdown_description": "<p>Fine meeting with developers in office <a href=\"my_email@google.com\">www.blog.com</a>!</p>\n",
        "location": "location",
        "published_at": null,
        "deleted_at": null,
        "user": {
            "id": 1,
            "name": "First",
            "email": "user1@example.com"
        }
    }
]


####  Get group event
####  GET  http://localhost:3000/api/v1/group_events/2
##### Response: 

		{
        "id": 2,
        "user_id": 1,
        "start_date": "2019-02-02T00:00:00.000Z",
        "end_date": "2019-02-03T00:00:00.000Z",
        "duration": 1,
        "name": "Name",
        "description": "description",
        "markdown_description": "<p>description</p>\n",
        "location": "location",
        "published_at": null,
        "deleted_at": null,
        "user": {
            "id": 1,
            "name": "First",
            "email": "user1@example.com"
        }
    }

####  If record not found:
####  GET http://localhost:3000/v1/users/15
##### Response: 

		{
		  "error": ["Record not found in Databas."],
		}


####  Create event
####  POST http://localhost:3000/api/v1/group_events
##### Params: 
        {"group_event"=>
          { 
          	"start_date"=>"2019-02-02",
            "end_date"=>"2019-02-03",
            "user_id"=>"1",
            "name"=>"Name",
            "location"=>"location",
            "description"=>"description [description](description)."}
        }

##### Response: 

		{
        "id": 2,
        "user_id": 1,
        "start_date": "2019-02-02T00:00:00.000Z",
        "end_date": "2019-02-03T00:00:00.000Z",
        "duration": 1,
        "name": "Name",
        "description": description [description](description).,
        "markdown_description": "<p>description <a href=\"description\">description</a>.</p>\n",,
        "location": "location",
        "published_at": null,
        "deleted_at": null,
        "user": {
            "id": 1,
            "name": "First",
            "email": "user1@example.com"
        }
    }

####  Update event - post new event, by user. Given username.
####  PUT http://localhost:3000/api/v1/group_events/7
##### Params: 
		{ 
			"group_event"=>{
			  "description":"description2 [description2](description2)."
			}
		}

##### Response: 

		{
        "id": 2,
        "user_id": 1,
        "start_date": "2019-02-02T00:00:00.000Z",
        "end_date": "2019-02-03T00:00:00.000Z",
        "duration": 1,
        "name": "Name",
        "description": description2 [description2](description2).,
        "markdown_description": "<p>description2 <a href=\"description2\">description2</a>.</p>\n",,
        "location": "location",
        "published_at": null,
        "deleted_at": null,
        "user": {
            "id": 1,
            "name": "First",
            "email": "user1@example.com"
        }
    }

####  Delete group event
####  DELETE  http://localhost:3000/api/v1/group_events/2 
##### Response:

		{
        "id": 2,
        "user_id": 1,
        "start_date": "2019-02-02T00:00:00.000Z",
        "end_date": "2019-02-03T00:00:00.000Z",
        "duration": 1,
        "name": "Name",
        "description": description [description](description).,
        "markdown_description": "<p>description <a href=\"description\">description</a>.</p>\n",,
        "location": "location",
        "published_at": null,
        "deleted_at": "2019-01-03T00:00:00.000Z",
        "user": {
            "id": 1,
            "name": "First",
            "email": "user1@example.com"
        }
    }

####  Publish Group Event.
####  http://localhost:3000/api/v1/group_events/1/publish
##### Response: 

			{
        "id": 2,
        "user_id": 1,
        "start_date": "2019-02-02T00:00:00.000Z",
        "end_date": "2019-02-03T00:00:00.000Z",
        "duration": 1,
        "name": "Name",
        "description": description [description](description).,
        "markdown_description": "<p>description <a href=\"description\">description</a>.</p>\n",,
        "location": "location",
        "published_at": "2019-01-03T00:00:00.000Z",,
        "deleted_at": null,
        "user": {
            "id": 1,
            "name": "First",
            "email": "user1@example.com"
        }
    }


##### If event already published - response:

		{
		    "errors": {
		        "base": [
		            "Already Published."
		        ]
		    }
		}

##### If Any filed is null:
##### PUT http://localhost:3000/api/v1/group_events/1/publish
##### Response: 
		{
		    "errors": {
		        "base": [
		            "To publish all of the fields are required.."
		        ]
		    }
		}

#### ----------------------------------------------------------------
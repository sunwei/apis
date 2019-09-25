CUR_TOKEN = eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE1NjkzOTgxNDAsIm5iZiI6MTU2OTM5ODE0MCwianRpIjoiOTVhYTlkZDMtNjc3YS00ODExLWFmY2YtMDc1ZGQ0N2Q5NWU4IiwiZXhwIjoxNTY5Mzk5MDQwLCJpZGVudGl0eSI6MiwiZnJlc2giOnRydWUsInR5cGUiOiJhY2Nlc3MifQ.eu2BYkbODVxKsRYsogDriZt5ke0j4BOfm-aRzdQNB1o
APP_STG_URL = https://oneapi-server-stg.herokuapp.com
APP_PROD_URL = https://oneapi-server.herokuapp.com
APP_URL = $(APP_PROD_URL)

register:
	curl -H 'Content-Type: application/json' -X POST -d \
	  '{"user": {"username":"test-user", "password":"abcd", "email":"oneapi-test@gmail.com"}}' \
	  $(APP_URL)/api/users

login:
	curl -H 'Content-Type: application/json' -X POST -d \
	  '{"user": {"password":"abcd", "email":"oneapi-test@gmail.com"}}' \
       $(APP_URL)/api/users/login

create-api:
	curl -H 'Content-Type: application/json' -X POST -d \
	  '{"api": {"body": "ewogICJ2ZXJzaW9uIjogInYxIiwKICAibmFtZXNwYWNlIjogImpzb24iLAogICJtZXRhZGF0YSI6IHsKICAgICJhdXRob3IiOiAiU3VuIFdlaSIsCiAgICAiZW1haWwiOiAid2F5ZGUuc3VuQGdtYWlsLmNvbSIsCiAgICAicmVwb3NpdG9yeSI6ICJodHRwczovL2dpdGh1Yi5jb20vc3Vud2VpL2FwaXMiLAogICAgImRlc2NyaXB0aW9uIjogIkpzb24gc3RvcmUgc2VydmljZSBwcm92aWRlZCBieSBvbmVhcGkuY2MsIHBvd2VyZWQgYnkgbXlqc29uLmNvbSIKICB9LAogICJhcGlzIjogWwogICAgewogICAgICAibmFtZSI6ICJKc29uIFN0b3JlIiwKICAgICAgInNwZWNzIjogImh0dHBzOi8vbXlqc29uLmNvbS9hcGkiLAogICAgICAicGF0aCI6ICIvYmlucy8iLAogICAgICAiZGVzY3JpcHRpb24iOiAiQSBsaWdodHdlaWdodCBqc29uIHN0b3JlIiwKICAgICAgImFubm90YXRpb25zIjogImpzb24sIHN0b3JlIgogICAgfQogIF0sCiAgInVwc3RyZWFtcyI6IFsKICAgIHsKICAgICAgIm5hbWUiOiAiTXlKc29uIiwKICAgICAgImVuZHBvaW50cyI6IFsKICAgICAgICAiYXBpLm15anNvbi5jb206NDQzIgogICAgICBdCiAgICB9CiAgXSwKICAicm91dGVTcGVjaWZpY2F0aW9ucyI6IFsKICAgIHsKICAgICAgImFwaVJlZiI6ICJKc29uIFN0b3JlIiwKICAgICAgInVwc3RyZWFtUmVmIjogIk15SnNvbiIsCiAgICAgICJ0bHMiOiAib24iLAogICAgICAicG9saWNpZXMiOnsKICAgICAgICAiYXV0aGVudGljYXRpb24iOiB7CiAgICAgICAgICAidHlwZSI6ICJCYXNpYyIKICAgICAgICB9CiAgICAgIH0KICAgIH0KICBdCn0="}}' \
	  -H "Authorization: Token $(CUR_TOKEN)" \
	  $(APP_URL)/api/apigws

CUR_TOKEN = eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE1NjkzNzQxNjQsIm5iZiI6MTU2OTM3NDE2NCwianRpIjoiN2NkM2RjZGEtMmEwNi00NjcxLWIwNzItY2Y1Nzg3ZTk2ODdlIiwiZXhwIjoxNTY5Mzc1MDY0LCJpZGVudGl0eSI6MiwiZnJlc2giOmZhbHNlLCJ0eXBlIjoiYWNjZXNzIn0.pkKdUuJmlOoTgpqUKA9JrEe66VMOL3xxGXi6SFQslpM
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
	  '{"api": {"body": "ewogICJ2ZXJzaW9uIjogInYxIiwKICAibmFtZXNwYWNlIjogImpzb24iLAogICJtZXRhZGF0YSI6IHsKICAgICJhdXRob3IiOiAiU3VuIFdlaSIsCiAgICAiZW1haWwiOiAid2F5ZGUuc3VuQGdtYWlsLmNvbSIsCiAgICAicmVwb3NpdG9yeSI6ICJodHRwczovL2dpdGh1Yi5jb20vc3Vud2VpL2FwaXMiLAogICAgImRlc2NyaXB0aW9uIjogIkpzb24gc3RvcmUgc2VydmljZSBwcm92aWRlZCBieSBvbmVhcGkuY2MsIHBvd2VyZWQgYnkgbXlqc29uLmNvbSIKICB9LAogICJhcGlzIjogWwogICAgewogICAgICAibmFtZSI6ICJKc29uIFN0b3JlIiwKICAgICAgInNwZWNzIjogImh0dHBzOi8vbXlqc29uLmNvbS9hcGkiLAogICAgICAicGF0aCI6ICIvanNvbi9teWpzb24iLAogICAgICAiZGVzY3JpcHRpb24iOiAiQSBsaWdodHdlaWdodCBqc29uIHN0b3JlIiwKICAgICAgImFubm90YXRpb25zIjogImpzb24sIHN0b3JlIgogICAgfQogIF0sCiAgInVwc3RyZWFtcyI6IFsKICAgIHsKICAgICAgIm5hbWUiOiAiTXlKc29uIiwKICAgICAgImVuZHBvaW50cyI6IFsKICAgICAgICAiYXBpLm15anNvbi5jb20iCiAgICAgIF0KICAgIH0KICBdLAogICJyb3V0ZVNwZWNpZmljYXRpb25zIjogWwogICAgewogICAgICAiYXBpUmVmIjogIkpzb24gU3RvcmUiLAogICAgICAidXBzdHJlYW1SZWYiOiAiTXlKc29uIiwKICAgICAgInBvbGljaWVzIjp7CiAgICAgICAgImF1dGhlbnRpY2F0aW9uIjogewogICAgICAgICAgInR5cGUiOiAiQmFzaWMiCiAgICAgICAgfQogICAgICB9CiAgICB9CiAgXQp9"}}' \
	  -H "Authorization: Token $(CUR_TOKEN)" \
	  $(APP_URL)/api/apigws

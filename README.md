Since the given api only returns one news item per call, filtering functionality has not been integrated. Every time you refresh the page, this application will retrieve the news from the given API and save it to the database. The saved news will then be displayed in the UI. Therefore, a new news item will be added to the database with each and every refresh.

#To run the project:

1. clone the repository
2. run the command "yarn install"
3. Make sure docker is installed in your machine. Then run "docker compose up -d"
4. run the command "npx prisma migrate dev"
5. run the command "yarn dev"

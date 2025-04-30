# REGISTRO ------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# Criar um usuario generico localmente
curl --request POST \--url http://localhost:3000/users/register \--header 'Content-Type: application/json' \--data '{"username":"userteste02","password":"senhateste01","email":"userteste02@example.com"}'

# Criar um usuario generico no deploy do vercel
curl --request POST \--url https://backend-mongo-crud-a1qv.vercel.app/users/register \--header 'Content-Type: application/json' \--data '{"username":"userteste02","password":"senhateste01","email":"userteste02@example.com"}'

# (ERRO) Testar registrar um usuario com email ja existente
curl --request POST \--url https://backend-mongo-crud-a1qv.vercel.app/users/register \--header 'Content-Type: application/json' \--data '{"username":"usertestemail02","password":"senhateste01","email":"usertesterepetido@example.com"}'

# (ERRO) Testar registrar uma senha invalida (menos de 6 caracteres)
curl --request POST \--url https://backend-mongo-crud-a1qv.vercel.app/users/register \--header 'Content-Type: application/json' \--data '{"username":"usertesteSenhaCurta","password":"s","email":"usertestesenha@example.com"}'

# (ERRO) Testar registrar um email invalido (sem @)
curl --request POST \--url https://backend-mongo-crud-a1qv.vercel.app/users/register \--header 'Content-Type: application/json' \--data '{"username":"usertesteemailinvalido","password":"senhateste01","email":"userteste02example.com"}'

# LOGIN ------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# Login com usuario generico
curl --request POST \--url http://localhost:3000/users/login \--header 'Content-Type: application/json' \--data '{"username":"userTesteLogin","password":"senhateste"}'

# (ERRO) Login com usuario invalido
curl --request POST \--url http://localhost:3000/users/login \--header 'Content-Type: application/json' \--data '{"username":"userInvalid","password":"senhateste"}'

# (ERRO) Login com senha invalida
curl --request POST \--url http://localhost:3000/users/login \--header 'Content-Type: application/json' \--data '{"username":"userTesteLogin","password":"senhainvalida"}'

# Acessando rota protegida
curl --request GET \--url http://localhost:3000/protected \--header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY4MTI2M2U0YTk3MTU1YzlmNDk0OGY4MSIsImlhdCI6MTc0NjAzNTczMCwiZXhwIjoxNzQ2MDM5MzMwfQ.gOsprjKcQjoqHFGjyFEWfsncOIrcbZZ_yyvCAsB7Lig'

# (ERRO) Acessando rota protegida sem token
curl --request GET \--url http://localhost:3000/protected \--header 'Content-Type: application/json'

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

# Login com usuario generico
curl --request POST \--url http://localhost:3000/users/login \--header 'Content-Type: application/json' \--data '{"username":"userTesteLogin","password":"senhateste"}'


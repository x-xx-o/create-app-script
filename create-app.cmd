@echo off

rem Prérequis
rem - .NET 5+
rem - NPM

rem Création de l'appli ASP.NET
dotnet new webapp

rem Création de l'appli dans NPM
npm init

rem install Tailwind CSS
npm install -D tailwindcss@latest postcss@latest autoprefixer@latest

rem Init Tailwind CSS
npx tailwindcss init

rem Crée le fichier tailwind.css
(
echo @tailwind base;
echo @tailwind components;
echo @tailwind utilities;
)>"tailwind.css"

rem Install PostCSS CLI
npm i -D postcss-cli

rem Crée le fichier postcss.config.js
(
echo module.exports = {
echo    plugins: {
echo        tailwindcss: {},
echo        autoprefixer: {},
echo    }
echo }
)>"postcss.config.js"

rem TODO tailwind.config.js 
rem - [ ] mettre 'jit' dans mode
rem - [ ] mettre './Pages/**/*.{cshtml,razor,js,ts}' dans purge
rem - [ ] mettre './Components/**/*.{cshtml,razor,js,ts}' dans purge 
rem - [ ] mettre './wwwroot/**/*.js' dans purge si nécessaire

rem TODO package.json
rem - [ ] ajouter "dev": "npx postcss tailwind.css -o ./wwwroot/tailwind.css -w" dans scripts
rem - [ ] ajouter "build": "npx postcss tailwind.css -o ./wwwroot/tailwind.css" dans scripts

rem TODO wwwroot/
rem - [ ] virer tout le contenu de ce dossier

rem TODO Pages/Shared/_Layout.cshtml
rem - [ ] virer les lignes de style
rem - [ ] ajoute la ligne de style suivante : <link rel="stylesheet" href="~/tailwind.css" />
rem - [ ] modifier tout le contenu pour qu'il corresponde à ce qu'on souhaite
rem - [ ] virer les 3 lignes de script en bas
rem - [ ] ajouter script en bas <script src="//unpkg.com/alpinejs" defer></script>

rem TODO Pages/
rem - [ ] modifier selon ce qu'on veut

rem TODO quand on dév pour activer le jit tailwind
rem - [ ] npm run dev

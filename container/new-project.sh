cd /
api-builder init myproject
cd myproject
npm install -save-dev highlight.js@9.14.2
npm install --no-optional

# Remove localhost access restriction
cd conf
cp default.js default.js.bak
sed -i "/'localhost/d" default.js

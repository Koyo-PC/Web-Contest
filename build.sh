cd `dirname ${0}`
rm -r ./.temp/*
npx @zoi-dayo/scml build
cp -r ./dist ./.temp/240166C
find ./.temp/240166C -name "*.ai" -type f -exec rm {} +
find ./.temp/240166C -name "*.psd" -type f -exec rm {} +
find ./.temp/240166C -name "*.mdp" -type f -exec rm {} +
cd ./.temp
zip -r ./240166C.zip ./240166C -x "*.DS_Store" "*__MACOSX*"
#mv ./.temp/240166C.zip ./240166C.zip
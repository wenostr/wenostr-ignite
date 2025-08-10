# wenostr.com

## build
```Shell
iginite build
```

## preview
```Shell
ignite run --preview
```

## deploy
```Shell
rm -rf ../wenostr.github.io/*
cd Build
cp -r * ../../wenostr.github.io
cd ..
```
Then git commit and push

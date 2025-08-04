# Deployment (manually, for now)

```Shell
zolo build
rm -rf ../wenostr.github.com/*
cd public
cp -r * ../../wenostr.github.com
cd ..
```
Then git commit and push

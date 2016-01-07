# Cordova

## Something to say

### Install Deploy Tools
``` 
$ npm install -g ios-sim
$ npm install -g ios-deploy
```

### Create a New Project
```
$ cordova create hello com.example.hello "HelloWorld"
$ cd hello
$ cordova platform add ios
$ cordova prepare              # or "cordova build"
```

### Deploy the app
```
// To deploy the app on a connected iOS device: 
$ cordova run ios --device

// To deploy the app on a default iOS emulator:
$ cordova emulate ios
```

## References
1. [Cordova Official Docs](http://cordova.apache.org/docs/en/latest/guide/overview/)
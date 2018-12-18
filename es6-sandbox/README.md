# Setting up the ES6 Sandbox

The configuration of tools like babel are one of the things that throws off beginners when learning to use the technology.  We've setup our vagrant environment to give the folder `/vagrant/src/es6-sandbox` everything it needs to start working with the ES6 programming language (without worrying about getting the perfect babel configuration).

There are a few things we needed to do to supercharge babel to work in this environment.  Here are a few concepts that exist in babel and how we configured our ES6 Sandbox to work.

## Setting Up Babel

We used NPM to install babel in the environment by executing the command:

```
npm install -g babel-cli
```


## Presets

Babel supports a variety of different _preset_ configurations for standard configurations.  Our ES6 Sandbox supports 2 specific presets.

* stage-2
* es2015

This exposes two things you need to learn about with ES6.  `Stages` and `es2015`.  Here's what these are.

## Stages

Babel supports multiple stages of changes.  These stages indicate how mature the changes are and how likely they are to make it into the real core language.  We've set our sandbox to use `stage-2` or pretty mature features.

Stage 0 includes changes that haven't been thoroughly discussed and will likely never see the light of day or will change in the near future.  Stage 2 is in the "draft spec", which means it's fairly mature.

When living on the edge, you have the ability to test out super new cutting edge things (stage 0), fairly stable new features (stage 2), or you could stick to just using the `node` command, which will include many of these ES6 features that are *definitely* ready for primetime use anywhere (including inside web browsers, although they may or may not work inside web browsers, depending on how old they are).

## ES2015

ES2015 contains much of the core plugins or new features of using the ES6 language.  Things like `import` and `export` are defined in the `es2015` plugin.

## Installation

These plugins were installed to the `/vagrant/src/es6-sandbox` folder by running the command to install them to the folder through NPM.

```
npm install --save-dev babel-preset-stage-2
```

```
npm install --save-dev babel-preset-es2015
```

This installed these packages into the folder `/vagrant/src/es6-sandbox/node_modules`, and NPM will use this folder to install any future packages to the folder.

## Configuration

Babel's configuration file in `/vagrant/src/es6-sandbox/.babelrc` will be used for any further nested folders (including `/vagrant/src/es6-sandbox/code`).

The configuration file contains the following JSON:

```
{
  "presets": ["stage-2", "es2015"]
}
```

This configures our environment to use both those presets by default.

It's worth noting this will only impact JavaScript files within the `/vagrant/src/es6-sandbox` folder.  Folder that are not nested underneath here are welcome to use different babel configurations.
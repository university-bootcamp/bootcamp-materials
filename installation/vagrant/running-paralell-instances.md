## Running Two Vagrant Environments in Parallel.

Two different vagrant environments can be run on the same machine.  Here's how.  

**First**, make sure you're initial vagrant environment is powered down.  Move to the directory the environment is listed by running this command:

```
cd Desktop/vagrant
```

From there you can run the command to power it down.

```
vagrant halt
```

**Second**, when downloading the _vagrant_ file and moving it to your Desktop in [Step 2](https://github.com/FirehoseProject/firehose-vagrant/blob/master/windows.md#step-2--get-the-files-for-your-development-environment), call the folder something besides vagrant.  For example `vagrant-javascript`.

**Third**, navigate to the `vagrant-javascript` folder instead of just the normal `vagrant` setup on your computer.

```
cd ../vagrant-javascript
```

**Fourth**, run the command to boot up the environment:

```
vagrant up
```

**Fifth**, continue on [Step #5](https://github.com/FirehoseProject/firehose-vagrant/blob/master/windows.md#step-5-log-into-your-dev-environment) of the process.
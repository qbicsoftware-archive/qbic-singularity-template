# Containers for QBIC

<Please include the Singularity Hub Badge here in all repositories if possible!> 

This is the central template repository for creating Singularity containers being used at [QBIC](https://qbic.life) in Tübingen, Germany.

For further information or help, please contact: alexander.peltzer@qbic.uni-tuebingen.de. 

## Documentation

You can call the tool typically by using the Singularity container hosted on Singularity Hub like this:
```
singularity exec shub://qbicsoftware/qbic-singularity-<toolname> <toolname/command/etc> 
```

### Image sizes
We try to keep things in a base Ubuntu image (e.g. ubuntu:latest). Previous attempts with Alpine linux revealed that the time effort to keep things working is not worth the savings. 

### Template Image

The template Singularity file can be found in the root of this repository. Please rename the file according to our SOP to `Singularity.<toolname/pipeline-name>` or accordingly. Accompanying this, a `build.sh` file is also stored here, typically used to install stuff in the image environment that is required for all versions of a specific tool. If you have multiple versions, copy the `Singularity.latest` file and keep it as a specific version there. 

## Author

* [Alexander Peltzer](https://github.com/apeltzer)

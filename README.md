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

To keep image sizes as small as possible, we use the Alpine Linux base image (only 5MB in size)! instead of using full-size dependencies that we dont want to have in our environment at all. If there is a specific reason, please state that before "only used Ubuntu because I know Ubuntu" and make some comments why you had to use a different base image. GATK for example didn't work for some very hard to debug GCC issues on Alpine Linux, so we had to use Ubuntu here.  

### Template Image

The template Singularity file can be found in the root of this repository. Please rename the file according to our SOP to `Singularity.<toolname/pipeline-name>` or accordingly. Accompanying this, a `build.sh` file is also stored here, typically used to install stuff in the image environment. If you have multiple versions, copy the `Singularity.latest` file and keep it as a specific version there. 

## Author

* [Alexander Peltzer](https://github.com/apeltzer)

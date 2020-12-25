# Deep Reinforcement Learning Bootcamp í´–

This repository provides the solutions for the labs carried out at the [Deep RL
bootcamp](https://sites.google.com/view/deep-rl-bootcamp/lectures).

## Installation

For now this just supports Linux and WSL systems.

1. Create the conda environment described in the ``environment.yml`` file.

```
$ conda env create -f environment.yml python=3.5
```

2. Install docker and download the image `dementrock/deeprlbootcam`.

```
$ docker pull dementrock/deeprlbootcamp
```

4. Setup your XServer and accordingly set the `DISPLAY` environment value. (Tip:
try to run `xclock` command. If you can see a graphic window displaying a clock, it means 
that everything works.)

5. Run the tester to see if the installation was sucessful.

```
$ ./docker-run.sh test/test_environment_setup.py
[2020-12-25 11:32:53,593] Making new env: CartPole-v0
[2020-12-25 11:32:53,595] Making new env: RoboschoolHalfCheetah-v1
Your environment has been successfully set up!
```

6. Optionally, you can check the xserver installation with the following command:
```
$ ./docker_run.sh test/simplepg/rollout.py
```

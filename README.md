# ezomero workshop - I2K, May 6th, 2022

This repo has all the information, examples and setup information for the ezomero workshop at the I2K conference in May 2022.


# Setup

This workshop requires two things: a Python environment with `ezomero` installed and access to an OMERO server. There are a few options to get that done detailed on the [setup guide](SETUP.md).

# `ezomero` itself

`ezomero` is a library of convenience functions to interact with an OMERO server from Python. It is available on [PyPI](https://pypi.org/project/ezomero/) and any issues or PRs should go to the [Github page](https://github.com/TheJacksonLaboratory/ezomero), which is also where you find the [documentation](https://thejacksonlaboratory.github.io/ezomero/).

# Notebooks

The notebooks with all the code I will be presenting in the workshop are in this repository, and also available inside the jupyterlab server from the docker-compose should you choose to use it.

# Recommended workflow

## Before the workshop

If you are using an existing OMERO server with data on it and you have gone through the setup instructions, you're all set. If you are using the `docker-compose` from this repository to run a local OMERO server for the workshop, we recommend putting a tiny amount of data in there before starting the workshop; any images will do!

## During the workshop

The workshop will be available pre-recorded. We recommend a "I do, you do" approach: start from an empty notebook (rather than from the complete notebooks in this repo), pause the video frequently, type the commands I have shown and see they working in your instance! Actually typing out the commands instead of just watching the video helps your brain to learn, so I recommend making the extra effort. While the video is paused, feel free to also explore other options in the code and other "what happens if" scenarios!

Remember to take notes for questions and clarifications you might want to ask about during the Q&A session. I am also generally avaliable on image.sc, twitter, or anywhere else you can find me to answer questions!

## After the workshop

The first step is to bring any questions, comments or feedback to the Q&A session during I2K! It will be the one synchronous time we will have during this conference, so make the best use of it. If you think this will be an useful tool for your work, excellent! We love to see people using ezomero. If you think there's something you would like to see in the library that is not there, even better! Go to the github page, open an issue, try your hand at fixing any problems! Despite being a small, niche project, we've already had contributions from multiple groups and we're completely open to them.

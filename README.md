### SORTEE 2026 Workshop 3
### An introduction to using Docker with R for reproducible research
# Example: Summarising the penguins data set (R 3.6.0)

_This repository is set up to be used to build a Docker image locally with Docker Desktop. For the version of this example that can be launched on mybinder.org, go to <https://github.com/stevekambouris/idrr-workshop-ex01a-binder>._

This Docker image is based on [rocker/tidyverse:3.6.0](https://hub.docker.com/layers/rocker/tidyverse/3.6.0/), which has R version `3.6.0` installed, along with `tidyverse` packages (and in particular, `dplyr` version `0.8.3`).

**Instructions**
1. Use the green "Code" button above to **clone** this repository to a folder on your computer.
2. In the Docker terminal (or another terminal of your choice), navigate to the folder containing the files from this repository.
3. In the terminal, type the following command: `docker build -t idrr-example01a:R3.6.0 .`
   - (Note that the final dot `.` is important: it indicates that docker should use the files in the current folder to build an image.)
   - (Also note that you don't _have_ to call the image `idrr-example01a`, or use the tag `R3.6.0` - I have done this to be clear and unambiguous about what this Docker image represents.)
4. Confirm that the image has been built, by looking for it in the list of local images in Docker Desktop.
5. In the terminal, type of the following command: `docker run -p 8787:8787 -e PASSWORD=yourpassword idrr-example01a:R3.6.0`
   - (Note that you should change `yourpassword` to a password of your choice, whether `hunter2`, `12345`, or `CorrectHorseBatteryStaple`.)
6. Go to your web browser, and enter `http://localhost:8787/` into the navigation bar.
7. You will be presented with a login screen, enter Username `rstudio` (this does not change) and your password (changed from literally `yourpassword` in the command above).
8. After logging in, you should see an instance of RStudio in your web browser window.
9. There will be two files available, `data_penguins.csv` and `summarise_penguins.R`.
10. Open `summarise_penguins.R` in RStudio and run the code from the top, observing the output to the console as you progress.

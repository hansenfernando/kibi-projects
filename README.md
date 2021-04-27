# Automate Installation Setup on MAC OS

Imagine that you got task from your company to setup the mac os with requirements e.g. the standard user can install apps but doesn't have administrator privilige and the users have their each standard application based on their role. In this project, I will help you for that task. I use homebrew as apps installation helper. In my scripts, I automate environment setup for homebrew and automate apps installation on mac os based on user standard's role. 

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for setup homebrew and install apps automatically. 

### Prerequisites

Make sure your mac already installed zip.

Go to your terminal and check with this command:

```
which zip
```


### Installing

This step by step to use the script

1. In your administrator user, create standard user
2. Login to your standard user
3. Open your terminal
4. Download this project
    ```
    curl -L -O https://github.com/hansenfernando/kibi-projects/archive/refs/heads/main.zip
    ```
5. Unzip main.zip
    ```
    unzip main.zip
    ```
6. Copy file from unzip folder to home directory
    ```
    cp ./kibi-projects-main/* ~/
    ```

## Running the scripts

1. Give permission to bash script file
    ```
    chmod +x autoinstall.sh installapps.sh
    ```
2. Run script autoinstall.sh to automate and configure homebrew
    ```
    ./autoinstall.sh
    ```
3. Run script installapps.sh and choose installation menu based on standard user role
    ```
    ./installapps.sh
    ```

## Contributing


## Versioning



## Authors

* **Yohansen Fernando** - (https://github.com/hansenfernando) (https://linkedin.com/in/yohansen)


## License



## Acknowledgments

* Hat tip to anyone whose code was used
* Inspiration
* etc


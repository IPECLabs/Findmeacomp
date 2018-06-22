# How to contribute

Since this is our first project together I would like you all to follow some guide line that will help you learn git in better way and will also keep things simple for us to work together

## Requirements

* python 3
    ```
    sudo apt install python3
    ```
* git
    ```
    sudo apt install git
    ```

__NOTE__
We all prefer linux so these commands only works for linux

## Fork a repo

Forking a repo is an easy task. Just press a small fork button on the right side of the screen and Github will fork this repository(repo) to your profile.

**Why do we need a fork**
 Basically the idea behind fork is that if you want to make changes to the any github repo then you can fork(meaning kinda of copy) the repo and make changes to your copy and then make a pull request(PR) to the main repo.
 What is PR, we'll look into it in a minute.

## Clone a repo

**What is cloning ?**

Just like forking, cloning is also same as copying the repo but this time you are copying the repo to your system. Meaning you will get all the files a repo consist of. Difference between fork and clone is just this that fork copys the repo to your github profile and cloning will copy the repo to you own system.

**How to Clone**

From command line run:

```
git clone <link of the cloning repo>
```

__NOTE__

Clone the fork repo not the main repo.

## Setup a remote

You will have to set a remote for your repo. so go to your folder from command line and then follow the instruction [here](https://help.github.com/articles/configuring-a-remote-for-a-fork/)


## Make new branches

Now you have a clone of you're fork repo. Now even before you start working on any thing you should make a branch.

**What is branch ?**

It's just like a tree branch. Like a tree have stems and then its branch same with github repo you have a main repo which is -- repo on my(mzfr) account from which you have forked/cloned which act as an stem.

I know now you might be thinking whats with the forked repo that you have on your profile/System. what is that ? well this is quite confusing concept so pay attention.

There's this whole concept of `upstream` and `origin` repo on github.

What is upstream ? -- The repo that you forked from in the starting. Ex: the main `findmeacomp` repo that is present on my(@mzfr) profile si the upstream repo.

what is origin ? -- The forked repo that is present on your own profile. That is origin.

So basically you can imagine this like a tree having a stem i.e upstream and then having a thick branch i.e origin and then you will have small branches on both the stem and the thick branch.

This can be a bit of confusing concept but once you understand it then it will all be buttery.

**How to make a branch**

From command line go to your repo and run

```
git checkout -b <branch_name>
```

**Name of a branch**

keep the name of the branch specific that can be understood by everyone and not just youself.

Ex: branch name should be like `css-for-front-page` or `scraper-for-wca`
Please don't make branch name like: `scraper` or `css` or with any number or random name.

Also dont use `_`(underscore) in the name of a branch instead sperated every word with a `-`(hyphen)

__NOTE__

Remember to always create a new branch from a master branch not from any other branch if you'll make a branch from any other branch then changes from current branch will be in new branch causing conflicts.

What is master branch ? -- this is kind of default branch that will be present when you'll get a cloned repo.


## How to use Git locally

Now you have a new branch so you are ready to work.

Make all the changes you want to then follow these step:
* git status - shows all the changes etc etc
* git add <file_name_to_add to repo>
* git commit -m "<commit_message>"
* git push

**About commit message**

* Commit message should be saying about what you have done. Ex:
    if commit message is `add css to front page` then the changes in that commit should only consist for addition of css and nothing else like python or HTML.
* Don't make commits like: `add css` or `HTML code` etc etc. Be specific about what you have done.
* Take commit message as the `subect` in emails and letters
* You can make multiple commits before doing `git push`. Ex:
    ```
    git add xyz.py
    git commit -m "add xyz.py file for backend"
    git add home.html
    git commit -m "add home page for the website"
    git push
    ```
Now all these changes will go to your forked repo or the origin repo.

__NOTE__
The above is just an examply try not to add python and HTML files from the same branches or within the same PR.

## Make a pull request(PR)

Now you have all the changes commit to your origin repo. Now all you have to do is make a PR.
For making PR
* Go to upstream repo i.e the main repo
* Go to pull request section
* click on new pull request
* then there will be a small option present saying `compar across forks` click on it
* then select your repo and branch on from the left side drop down
* then create pull request button will get activate click on it
* Add the header and description of the PR and the create a PR

__NOTE__

please write a good header and description of the PR explaining what it will do and how will this be benificial.

#### This was all you had to know how to work with whole fork system now we will see how too stay updated with the upstream.

## Update your local with upstream

Now as you know other will also be working on the upstream so you should have the latest changes made to the repo for that you will have to update your local branches.
For this checkout to your master branch by `git checkout master` then run
```
git pull upstream master
```

This command will bring all the new changes to your own repo.

This is all I can think from the top of my mind but if you have an other queries then you know where to find me

@nitish I know you're a windows user so I would ask you to shift to linux. For info on how to install linux contact @ugtan

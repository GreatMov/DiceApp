===> Instructions on working with Git <===

We have keep the "main" branch only for production code that has been tested and is working.
All new features will be first written in a separate branch. Preferable it should be 1 branch / feature.

You should first pull the latest build. We will assume this is from the main branch:

    GIT CHECKOUT MAIN
    GIT PULL ORIGIN MAIN

Second, create a new branch:
    
    GIT CHECKOUT -B <branch_name>

    !!! it is good practice to name the branch after the new feature it implements.

If you want to commit the new branch:

    GIT ADD .
    GIT COMMIT -M "commit message"
        ===> it is good practice to detail what the changes are about in the commit message
    GIT PUSH -U ORIGIN <branch_name>

If you want to verify if the branch was saved:

    GIT BRANCH
        ===> you should see your branch listed here
    
When the feature was fully written, you should merge the branch with main:

    GIT CHECKOUT MAIN
    GIT PULL ORIGIN MAIN
    GIT MERGE <branch_name>
    GIT PUSH ORIGIN MAIN

After the merge, you should delete the branch locally and remote:

    GIT BRANCH -d <branch_name>
        ===> this deleted locally
    GIT PUSH ORIGIN --delete <branch_name>


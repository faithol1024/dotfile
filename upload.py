import os
import time
from git import Repo

repo = Repo(search_parent_directories=True)
assert not repo.bare


def moveDotfiles():
    pass

def gitNewBranch():
    branchName =  "dotfile_update_"+ str(time.time)

    print("set HEAD to " + branchName)
    newBranch = repo.create_head(branchName)

    print("create new branch " + branchName)
    newBranch.checkout()

    print("git add .")
    repo.git.add("*")
    


def gitCheckDiff():
    pass

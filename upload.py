import os
import time
from git import Repo

repo = Repo(search_parent_directories=True)
assert not repo.bare


def moveDotfiles():
    pass

def gitNewBranch():
    branchName =  "dotfile_update_"+ str(time.time())

    print("set HEAD to " + branchName)
    newBranch = repo.create_head(branchName)

    print("create new branch " + branchName)
    newBranch.checkout()

    print("git add .")
    repo.git.add(all=True)

    print("committing change")
    repo.git.commit(m=branchName)

    print("pushing change")
    repo.git.push('--set-upstream', 'origin', newBranch)
    


def gitCheckDiff():
    pass

gitNewBranch()
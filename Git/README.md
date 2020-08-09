# Git Commands
-------------------------------------------------------
**Step 1** Git Configuration  *Note - enter username with quotes*
```
git config --global user.name "git_username"
git config --global user.email johndoe@example.com
```

**Step 2** In a project folder initialize git.
```
git init
```

**Step 3** Check status of your current git project on desktop. 
```
git status                          
```

**Step 4** Adds the files in your new local repo. Preps for commit
```
git add .           // Period means all files
git add <filename>
```

**Step 5** Commit changes and ready to push *Note - a = all -- m = message*
```
git commit -am "Enter message here"
git commit -m "Enter message here"
```
**Step 6** If you want to use existing repository
```
git remote add origin <repo URL>
git remote -v  // verifies the new remote URL
```

**Step 7** push local changes to master
```
git push origin master
```

Create branch
```
git checkout -b branchname
```

Pushing changes to your branch
```
git push origin branchname          
```

Switch branch
```
git branch checkout branchname      
```

Check all branches on computer
```
git branch -a                      
```

Downloads content from the repository without merge
```
git fetch --all
```

Integrate changes from another branch
```
git merge branchname                
```

Git pull does a git fetch followed by a git merge
```
git pull origin branchname          
```

**Update your branch with master**
```
git checkout branchname
git pull origin master
```

Revert all changes to your working copy
```
git checkout .
git fetch --all                     *get data*
git reset --hard origin/master      *Erase your changes and pulls from master*
git reset --hard origin/branchname  *Erase your changes and pulls from branch*
```
*Note: pull is designed around merging changes together in some way, whereas reset is designed around simply making your local copy match a specific commit.*


Revert a change that you have committed
```
git revert <commit 1> <commit 2>    
```

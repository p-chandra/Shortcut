# Git Commands
-------------------------------------------------------
**Git Configuration**  *Note - enter username with quotes*
```
git config --global user.name "git_usernamer"
git config --global user.email johndoe@example.com
```

Check status of your current git project on desktop
```
git status                          
```

Commit changes and ready to push
```
git commit -am                      
```

Create branch
```
git checkout -b branchname
```

Pushing changes to your branch
```
git push origin branchname          
```

Pushing changes to origin master
```
git push origin master              
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

Adds all modified and new files to current directory
```
git add .                           
```

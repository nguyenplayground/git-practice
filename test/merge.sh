git checkout main
git checkout -D branchA
git checkout -D branchB


git checkout main
git checkout -b branchA

echo "line1\nline2 " >> test/a.txt
git add test/a.txt
git commit -m "a12 in branch A"


git checkout main
git checkout -b branchB

echo "line1\nline3 " >> test/a.txt
git add test/a.txt
git commit -m "a13 in branch B"


git merge branchA
echo "line1\nline3\n=======\nline2\n\n" >> test/a.txt
git add test/a.txt
git commit -m "Merge branch 'branchA' into branchB"



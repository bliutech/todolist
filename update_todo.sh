# signing dates is cringe bro
git config commit.gpgsign false

startdate=20221231
d=
n=0
until [ "$n" = "18" ]
do
    ((n++))
    d=$(date -d "$startdate + $n days" +%Y%m%d)
    export GIT_COMMITTER_DATE=$(date -d "$d")
    git commit -m "todo: write LA CTF challs" --allow-empty --date  "$GIT_COMMITTER_DATE"
done

# Create today's morning pages.
alias mp='echo -e "% $(date)\n\n" >> `date +"%y_%m_%d".md` & vim + `date +"%y_%m_%d".md`'
# Commit today's morning pages.
alias gc='git add `date +"%y_%m_%d".md` && git commit -m "Morning pages for $(date +"%d/%m/%y")"'

# Todo.txt
alias t="~/bin/todo.txt-cli/todo.sh -ct -d ~/.todo/todo.cfg"

# R
alias R="R -q --no-save --no-restore"

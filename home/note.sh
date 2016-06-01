echo "note : $note var : $var"

export note_workspace="$HOME/Sites/notes.local/projects"

## Utils
function git_root() { basename $(git rev-parse --show-toplevel) }

alias sv="source_var"
function source_var(){ var="$note_workspace/$(git_root)/var.sh" && echo "source $var" && source $var  && source ~/note.sh source}

echo "note : $note var : $var"

export note_workspace="$HOME/Sites/notes.local/projects"

## Utils
function git_root() { basename $(git rev-parse --show-toplevel) }

alias np="new_project"
function new_project(){ project_directory="$note_workspace/$(git_root)"; var=$project_directory/var.sh; mkdir -p $project_directory  && touch $var }


alias sv="source_var"
function source_var(){ var="$note_workspace/$(git_root)/var.sh" && echo "source $var" && source $var  && source ~/note.sh source}

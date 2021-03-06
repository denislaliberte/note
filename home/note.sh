echo "note : $note var : $var";

export note_workspace="$HOME/_workspace/notes.local/projects"

## Utils
function git_root() { basename $(git rev-parse --show-toplevel); }
function project_directory() { echo "$note_workspace/$(git_root)"; }

alias np="new_project";
function new_project() { mkdir -p $(project_directory)  && touch "$(project_directory)/var.sh" && echo $(project_directory); }

alias sv="source_var";
function source_var(){ var="$note_workspace/$(git_root)/var.sh" && echo "source $var" && source $var  && source ~/note.sh source; }

alias nt="$HOME/newtask.sh";

function vn(){ vim $note -O $@; }
function en(){ echo $note && echo "\n  $* " | tee -a  $note; }
function tdn(){ echo $note && echo "__todo__    |  $*  | **status**  | **détails**   " | tee -a  $note; }
function qn(){ echo $note && echo "__question__ |  $*  | **réponse**  | **détails**    " | tee -a  $note; }

function todo(){ clear && resume | grep 'plus tard' && echo '\n\n todo \n' ;grep \*  $s/resume.md | grep -v 'plus tard'; }
alias tn="tail $note";
alias ta="tee -a $note";
alias vv="vim -O $var $note";

function run {
    command=$1
    
    echo "##[command] $command"
    
    eval $command
}

function group {
    message=$1
    shift

    echo "##[group] $message"
    for command in $@
    do
      eval "$command"
    done
    echo "##[endgroup]"
}

function section {
    echo "##[section] $1"
}
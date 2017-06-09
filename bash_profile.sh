git_current_branch() {
   git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

source /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-prompt.sh
source /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-completion.bash

export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$(git_current_branch)$ "
export CLICOLOR=1

# The next line updates PATH for the Google Cloud SDK.
source '/Users/sushobhan.nayak/google-cloud-sdk/path.bash.inc'

# The next line enables shell command completion for gcloud.
source '/Users/sushobhan.nayak/google-cloud-sdk/completion.bash.inc'


export JAVA_HOME=$(/usr/libexec/java_home -v 1.7)
export PATH=$JAVA_HOME/bin:$PATH
export PATH=/Users/sushobhan.nayak/apache-maven-3.3.9/bin:$PATH
setjdk() {
    export JAVA_HOME=$(/usr/libexec/java_home -v $1)
}

# snap-eye test
export PYTHONPATH="$PYTHONPATH:/usr/local/google_appengine"

alias ssh-roger='gcloud compute ssh roger-instance-2 --project snap-eye --zone us-central1-a'
alias bk='gcloud compute ssh breaking-news-instance-1 --project=research-prototypes --zone us-central1-f'
alias bk-remote='gcloud compute ssh --zone=us-central1-f --project=research-prototypes --ssh-flag="-D 1080" --ssh-flag="-N" --ssh-flag="-n" breaking-news-instance-1 &'
alias bk-remote-chrome='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --proxy-server="socks5://localhost:1080" --host-resolver-rules="MAP * 0.0.0.0 , EXCLUDE localhost" --user-data-dir=/tmp/ http://breaking-news-instance-1:8123/notebooks/'
alias jupyter-hub='gcloud compute ssh sushobhan.nayak@jupyter-hub --project snapsearch-dev --zone us-central1-c' 
alias cleanidea='cd /Users/sushobhan.nayak/Desktop/Snapchat/Dev/appengine;./gradlew clean;./gradlew idea';
alias context-tunnel='gcloud compute ssh --zone="us-west1-a" --project=snap-brain --ssh-flag="-D" --ssh-flag="10000" --ssh-flag="-N" "contextual-service-m"'
alias context='gcloud compute ssh --zone="us-west1-a" --project=snap-brain "contextual-service-m"'
alias context-chrome='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome "http://contextual-service-m:8123" --proxy-server="socks5://localhost:10000" --host-resolver-rules="MAP * 0.0.0.0 , EXCLUDE localhost" --user-data-dir=/tmp/'

#export GOOGLE_APPLICATION_CREDENTIALS=/Users/sushobhan.nayak/.credentials/snap-eye-84d40d8e9589.json
# added by Anaconda2 4.1.1 installer
export PATH="/Users/sushobhan.nayak/anaconda/bin:$PATH"
export PATH="/Developer/NVIDIA/CUDA-7.5/bin:$PATH"
export DYLD_LIBRARY_PATH="/Developer/NVIDIA/CUDA-7.5/lib:$DYLD_LIBRARY_PATH"
export DYLD_FALLBACK_LIBRARY_PATH="/usr/local/cuda/lib:$HOME/anaconda/lib:/usr/local/lib:/usr/lib"
export SCALA_HOME=/Users/sushobhan.nayak/scala-2.11.8/
export PATH=$PATH:$SCALA_HOME/bin

. /Users/sushobhan.nayak/z/z.sh
source /Users/sushobhan.nayak/git-subrepo/.rc

export PATH=/Users/sushobhan.nayak/protoc-3.1.0-osx-x86_64/bin:$PATH
export ES_USER=sushobhan.nayak 
export ES_PWD=sushobhan@elastic-search

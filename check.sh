# Download and setup PMD & CPD
PMD_VERSION=6.9.0
PMD_DIR=pmd-bin-$PMD_VERSION
cd $HOME
wget https://github.com/pmd/pmd/releases/download/pmd_releases%2F$PMD_VERSION/$PMD_DIR.zip
unzip $PMD_DIR.zip
cd $PMD_DIR
PMD_PATH=`pwd`
alias pmd="$PMD_PATH/bin/run.sh pmd"
alias cpd="$PMD_PATH/bin/run.sh cpd"

# Switch over to our sources
cd
cd src/Ne10

# Check our sources with PMD
# NOTE Not possilbe! PMD does not support C/C++
#pmd -d . -R rulesets/java/quickstart.xml -f text > pmd.log

# Check our sources with CPD
cpd --minimum-tokens 50 --language cpp --files . > cpd.log

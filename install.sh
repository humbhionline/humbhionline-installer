tooldir=`dirname $0`
tooldir=$PWD/$tooldir
application_dir="$tooldir/application"
humbionline_repo=git@github.com:humbhionline/humbhionline.git

mkdir -p $application_dir
cd $application_dir

for repo in git@github.com:open-succinct-community/common.git git@github.com:open-succinct-community/reflection.git git@github.com:open-succinct-community/swf-all.git git@github.com:open-succinct-community/reflection.git git@github.com:open-succinct-community/swf-plugin-mobilesignup.git git@github.com:open-succinct-community/swf-plugin-slideshow.git git@github.com:open-succinct-community/swf-plugin-calendar.git git@github.com:open-succinct-community/swf-plugin-wiki.git git@github.com:open-succinct-community/swf-plugin-ecommerce.git git@github.com:beckn-on-succinct/beckn-sdk-java.git git@github.com:beckn-on-succinct/swf-plugin-beckn.git git@github.com:beckn-on-succinct/onet.core git@github.com:beckn-on-succinct/onet.boc git@github.com:beckn-on-succinct/bap.shell $humbionline_repo
do 
    echo "Building $repo"
    dir=`basename $repo |sed 's/.git//g'`
    if [ ! -d $dir ] 
    then
        git clone $repo 
    fi
    cd $application_dir/$dir 
    git pull
    if [ "$repo" != "$humbionline_repo" ] 
    then 
        mvn clean install 
    else
        mvn clean compile
    fi
    cd $application_dir
done

cd $application_dir/humbhionline
rsync --ignore-existing -av overrideProperties.sample/ overrideProperties/
chmod +x bin/*


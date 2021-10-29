tooldir=`dirname $0`
tooldir=$PWD/$tooldir
application_dir="$tooldir/application"
humbionline_repo=git@github.com:venkatramanm/humbhionline.git

mkdir -p $application_dir
cd $application_dir

for repo in git@github.com:venkatramanm/common.git git@github.com:venkatramanm/swf-all.git git@github.com:venkatramanm/swf-plugin-mobilesignup.git git@github.com:venkatramanm/swf-plugin-slideshow.git git@github.com:venkatramanm/swf-plugin-calendar.git git@github.com:venkatramanm/swf-plugin-wiki.git git@github.com:venkatramanm/swf-plugin-ecommerce.git	git@github.com:venkatramanm/beckn-sdk-java.git $humbionline_repo
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


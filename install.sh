mkdir application
cd application
for repo in git@github.com:venkatramanm/common.git git@github.com:venkatramanm/swf-all.git git@github.com:venkatramanm/swf-plugin-mobile-signup.git git@github.com:venkatramanm/swf-plugin-slideshow.git git@github.com:venkatramanm/swf-plugin-calendar.git git@github.com:venkatramanm/swf-plugin-wiki.git git@github.com:venkatramanm/swf-plugin-ecommerce.git	git@github.com:venkatramanm/beckn-sdk-java.git
do 
    echo "Building $repo"
    git clone $repo 
    dir=`basename $repo`
    cd $dir 
    mvn clean install 
    cd .. 
done
git clone git@github.com:venkatramanm/humbhionline.git
cd humbhionline
mvn clean compile 
cp -r overrideProperties.sample overrideProperties
chmod +x bin/*
bin/swfstart.real

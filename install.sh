# install solr
/usr/local/bin/brew install solr
echo "Brewed solr"

export SOLR_CONF=`brew --prefix solr`/libexec/example/solr/
export SOLR_SCHEMA=`brew --prefix solr`/libexec/example/solr/conf/schema.xml

alias solr=`/usr/local/bin/solr $SOLR_CONF`

echo
echo "Add the following to your bash_profile or equivalent:"
echo
echo "export SOLR_CONF=\`brew --prefix solr\`/libexec/example/solr/"
echo "export SOLR_SCHEMA=\`brew --prefix solr\`/libexec/example/solr/conf/schema.xml"
echo
echo "alias solr=\`solr \$SOLR_CONF\`"
echo
echo "--------------------------------------------------------------------------------"
echo
echo "Solr is now runnable with: solr"
echo
echo "Export your schema with: python manage.py build_schema -f \$SOLR_SCHEMA"
echo

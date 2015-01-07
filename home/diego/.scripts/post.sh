JEKYLL_LOCAL_ROOT="$HOME/blog/"
JEKYLL_FORMATTING="markdown"
AUTHOR="drog"

# 'builtin cd' into the local jekyll root

builtin cd "$JEKYLL_LOCAL_ROOT/_posts/blog"

# Get the date for the new post's filename

FNAME_DATE=$(date "+%Y-%m-%d")

# Get the title for the new post

read -p "Enter title of the new post: " POST_TITLE

# Convert the spaces in the title to hyphens for use in the filename

FNAME_POST_TITLE=`echo $POST_TITLE | tr ' ' "-"`

# Now, put it all together for the full filename

FNAME="$FNAME_DATE-$FNAME_POST_TITLE.md"

# And, finally, create the actual post file. But we're not done yet...

touch "$FNAME"

# Write a little stuff to the file for the YAML Front Matter

echo "---" >> $FNAME

echo "layout: post          #important: don't change this" >> $FNAME

# Echo the original post title to the YAML Front Matter header

echo "title: $POST_TITLE" >> $FNAME

# Now we have to get the date, again. But this time for in the header (YAML Front Matter) of
# the file

YAML_DATE=$(date "+%B %d %X")

# Echo the YAML Formatted date to the post file

echo "date: $YAML_DATE" >> $FNAME

echo "author: $AUTHOR" >> $FNAME

echo "categories:" >> $FNAME

echo "- blog                #important: leave this here" >> $FNAME

echo >> $FNAME

echo "tags:" >> $FNAME	

# Close the YAML Front Matter Header
echo >> $FNAME
echo "---" >> $FNAME
echo >> $FNAME

# Open the file in your favorite editor

$EDITOR $FNAME &

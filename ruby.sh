#!/usr/bin/sudo sh

## ruby_revealer.sh -- decrypt obfuscated GHE .rb files. 2.0.0 to 2.3.1+.

## From `strings ruby_concealer.so`:
##
## > This obfuscation is intended to discourage GitHub Enterprise customers
## > from making modifications to the VM.
##
## Well, good, as long as its not intended to discourage *me* from doing this!
## After all, I'm not a GitHub Enterprise customer. I'm just some dude who
## grabbed the .ova file off the internet!
##
## > We know this 'encryption' is easily broken.
##
## Err, yeah. Just do a binary `s/eval/puts/`. Like this!

# So...

# A version of the ruby_concealer.so with just such a patch, xz'd and base64'd.
ruby_revealer_so='
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
HEZ/sCAAAAAARZWg=='

# Find the existing .so (don't hardcode it).
ruby_concealer_so=$(find / -name ruby_concealer.so)

# Find the corresponding ruby and put it in our PATH.
export PATH=$(echo $ruby_concealer_so | sed s'|lib.*|bin|'):$PATH

# Backup the original file.
mv $ruby_concealer_so $ruby_concealer_so.bak

# Overwrite the original.
echo "$ruby_revealer_so" | base64 --decode | xz -dc > $ruby_concealer_so
touch -r $ruby_concealer_so.bak $ruby_concealer_so


# This function takes the name of the file to be decrypted from stdin.
# There's some weirdness with a couple (pre|post)-receive-hooks in earlier GHE
# versions; these seem to like it a little better if one `cd`s to the directory
# first, using bundler if necessary.
# They still squawk a bit but seem to decrypt fine. We're avoiding a
# temporary file by setting a variable containing the decrypted contents;
# /bin/echo is necessary to avoid interpolating escaped newlines, etc.

ruby_revealer(){
  f=$(cat); cd $(dirname $f)

  # Save the original.
  cp -p $f $f.bak

  # Output our replacement.
  r=$(ruby $(basename $f) 2>/dev/null ||
      bundle exec 'ruby $(basename $f) 2>/dev/null' 2>/dev/null)

  r=$(/bin/echo "$r" | head -n -2)

  # If it has failed, move the original back.
  # (A few do, due to bugs *in the code* itself, I believe.)
  [ $(/bin/echo "$r" | wc -c) -lt 2 ] && (rm -f $f && mv $f.bak $f) ||
     (/bin/echo "$r" > $f && touch -r $f.bak $f && rm -f $f.bak)
}

# Presto change-o.
voila(){
  echo "One moment..." >&2 # While we grep through a bunch of other files...

  for c in $(grep --include \*.rb -Rl __ruby_concealer__ /data 2>/dev/null); do
    echo Revealing $c ... >&2; echo $c | ruby_revealer
  done
}

# Put the module back how we found it; be sure to use a redirect to
# preserve permissions and modification dates, etc.
cleanup(){
  cp -p $ruby_concealer_so.bak $ruby_concealer_so &&
    rm -f $ruby_concealer_so.bak
}

# Make absolutely sure we put the .so back properly so we're not foobar'd.
trap cleanup INT

voila
cleanup

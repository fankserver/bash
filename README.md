Fankserver Bash
===============

## Git Aliases

### Install latest git aliases

**Option 1: Include in gitconfig (Recommended)**
```bash
# Add to your ~/.gitconfig (won't duplicate if already present)
echo "[include]" >> ~/.gitconfig
echo "    path = ~/.gitconfig_fankserver_alias" >> ~/.gitconfig

# Download the alias file
curl -s https://raw.githubusercontent.com/Fankserver/bash/master/gitconfig_alias > ~/.gitconfig_fankserver_alias
```

**Option 2: Direct append (may create duplicates)**
```bash
# Backup your gitconfig first!
cp ~/.gitconfig ~/.gitconfig.backup

# Append aliases
curl -s https://raw.githubusercontent.com/Fankserver/bash/master/gitconfig_alias >> ~/.gitconfig
```

### Remove aliases

**If using Option 1 (include method):**
```bash
# Remove the include path line
sed -i '/path.*gitconfig_fankserver_alias/d' ~/.gitconfig

# Optionally clean up empty [include] section
sed -i '/^\[include\]$/N;/^\[include\]\n$/d' ~/.gitconfig

# Remove the alias file
rm -f ~/.gitconfig_fankserver_alias
```

**If using Option 2 (direct append):**
```bash
# WARNING: This only removes the [alias] section, not individual aliases
# Make a backup first!
cp ~/.gitconfig ~/.gitconfig.backup

# Remove the entire [alias] section (use with caution)
perl -i -pe 'BEGIN{undef $/;} s/\[alias\][^\[]*(?=\[|$)//smg' ~/.gitconfig
```

### Update aliases
```bash
# If using Option 1, just re-download:
curl -s https://raw.githubusercontent.com/Fankserver/bash/master/gitconfig_alias > ~/.gitconfig_fankserver_alias
```

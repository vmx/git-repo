Repo for Windows
================

This is my fork of [Repo][1] to make it work under Windows.

It uses the [ntfsutils][2] for making junctions and hardlinks
instead of symlinks. I couldn't get symlinks for properly.

[1]: https://code.google.com/p/git-repo/
[2]: https://github.com/sid0/ntfs


Usage
-----

Let's say you want to checkout a Repo manifest into a direcory
called myproject:

    md myproject\.repo
    cd myproject\.repo
    git clone https://github.com/vmx/git-repo.git repo
    cd ..
    python.exe .repo\repo\repo init --no-repo-verify [...whatever arguments you need]
    python.exe .repo\repo\repo sync

In case you want to be able to just type`repo`, just copy the main repo files
(`repo` and `repo.cmd`) into a directory that is in your `PATH`:

    mkdir repo
    cd repo
    set "path=%PATH%;%CD%"
    copy myproject\.repo\repo\repo* .

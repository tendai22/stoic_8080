#! /bin/sh
sed '/^$/{
:flush
    x
    s/- *\n//g
    s/\n/ /g
    s/^  *//
    /^$/!p
    s/.*//
    x
    p
    d
}
/^```/,/^```/{
    /^```/!s/^ */    /
    p
    d
}
/^ /b flush
/^</b flush
$b flush
{
    H
    d
}
' "$@"

#!/bin/bash

dpi=300
width=$(bc <<< "$dpi * 2.5 / 1")
height=$(bc <<< "$dpi * 3.5 / 1")
radius=$(bc <<< "$dpi * 1/8")
echo $width
echo $height
echo $radius

copy=$(cat <<-EOF
While <b>wearing</b> this ring, you can speak its command word as an action to summon a particular djinni from the Elemental Plane of Air. The djinni appears in an unoccupied space you choose within 120 feet of you. It remains as long as you concentrate (as if concentrating on a spell), to a maximum of 1 hour, or until it drops to 0 hit points. It then returns to its home plane.

While summoned, the djinni is friendly to you and your companions. It obeys any commands you give it, no matter what language you use. If you fail to command it, the djinni defends itself against attackers but takes no other actions.

After the djinni departs, it can’t be summoned again for 24 hours, and the ring becomes nonmagical if the djinni dies.
EOF
)

body=$(mktemp).png
convert -background transparent -size 650x500 pango:"$copy" $body

convert -size "$width"x"$height" xc:transparent \
  -fill white -stroke black -strokewidth 1 -draw "roundrectangle 2,2 $((width-2)),$((height-2)) $radius,$radius" \
  -page +50+500 $body \
  -layers flatten \
  out.png

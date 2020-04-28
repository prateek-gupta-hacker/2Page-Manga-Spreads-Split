mkdir fixed
for i in *.jpg ; do convert -resize 1200x1200 -quality 90 -crop 50%x100% +repage "$i" "fixed/${i%.*}.jpg" ; done

cd fixed && rename 's/-0.jpg/-2.jpg/g' *


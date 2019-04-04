for f in *.png; do mv "$f" "${f//[[:blank:]]/-}"; done


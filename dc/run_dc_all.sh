#go though all dc script except TOP
for dir in */; do
    dir=${dir%/}  # Remove trailing slash
    if [ "$dir" != "TOP" ]; then
        echo "Entering $dir"
        (cd "$dir" && ./dc.sh)
    fi
done

# Handle TOP directory last
if [ -d "TOP" ]; then
    echo "Entering TOP"
    (cd TOP && ./dc.sh)
fi


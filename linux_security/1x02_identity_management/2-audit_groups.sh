#!/bin/bash
#!/bin/bash
awk -F: '$3 >= 1000 {print $1}' "$1" | xargs -I{} sh -c 'id -nG {} | tr " " "\n" | grep -E "^(disk|docker|shadow)$" | sed "s/^/{}:/"'
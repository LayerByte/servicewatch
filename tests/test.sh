set -euo pipefail
bash -n "$(dirname "$0")/../servicewatch.sh"
grep -q '^set -euo pipefail$' "$(dirname "$0")/../servicewatch.sh"
echo "servicewatch syntax test passed"

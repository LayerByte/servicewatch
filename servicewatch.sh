set -euo pipefail
(( $# )) || { echo 'usage: servicewatch.sh UNIT...' >&2; exit 2; }
command -v systemctl >/dev/null || { echo 'systemctl is required' >&2; exit 1; }
printf '%-32s %-10s %-12s %s\n' UNIT LOAD ACTIVE SUB
for unit in "$@"; do
  data=$(systemctl show "$unit" --property=LoadState,ActiveState,SubState --value 2>/dev/null || printf 'not-found\nunknown\nunknown')
  mapfile -t fields <<<"$data"
  printf '%-32s %-10s %-12s %s\n' "$unit" "${fields[0]:-unknown}" "${fields[1]:-unknown}" "${fields[2]:-unknown}"
done

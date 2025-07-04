use std/util "path add"

path add "/opt/homebrew/bin"
path add "/opt/homebrew/sbin"
path add ($nu.home-path | path join .local bin)

# default settings of v2rayU
# let local_http_proxy = "http://127.0.0.1:1087"
# let local_socks_proxy = "socks5://127.0.0.1:1080"

# default settings of v2rayN for macOS
let local_http_proxy = "http://127.0.0.1:10808"
let local_socks_proxy = "socks5://127.0.0.1:10808"

$env.http_proxy = $local_http_proxy
$env.https_proxy = $local_http_proxy
$env.all_proxy = $local_socks_proxy

$env.HTTP_PROXY = $local_http_proxy
$env.HTTPS_PROXY = $local_http_proxy
$env.ALL_PROXY = $local_socks_proxy


const init_path = $nu.default-config-dir | path join inits
const mise_init_path = $init_path | path join mise.nu
source $mise_init_path


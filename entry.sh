#!/bin/sh

cmd="btcd"

[ -n "$BTCD_TESTNET" ] && cmd="$cmd --testnet"

[ -n "$BTCD_PROXY" ] && cmd="$cmd --proxy $BTCD_PROXY"
[ -n "$BTCD_PROXYUSER" ] && cmd="$cmd --proxyuser $BTCD_PROXYUSER"
[ -n "$BTCD_PROXYPASS" ] && cmd="$cmd --proxypass $BTCD_PROXYPASS"

[ -n "$BTCD_ONION" ] && cmd="$cmd --onion $BTCD_ONION"
[ -n "$BTCD_ONIONUSER" ] && cmd="$cmd --onionuser $BTCD_ONIONUSER"
[ -n "$BTCD_ONIONPASS" ] && cmd="$cmd --onionpass $BTCD_ONIONPASS"

[ -n "$BTCD_NOONION" ] && cmd="$cmd --noonion"
[ -n "$BTCD_TORISOLATION" ] && cmd="$cmd --torisolation"

[ -n "$BTCD_UPNP" ] && cmd="$cmd --upnp"
[ -n "$BTCD_EXTERNALIP" ] && cmd="$cmd --externalip $BTCD_EXTERNALIP"
[ -n "$BTCD_MAXPEERS" ] && cmd="$cmd --maxpeers $BTCD_MAXPEERS"

[ -n "$BTCD_NORPC" ] && cmd="$cmd --norpc"
[ -n "$BTCD_NODNSSEED" ] && cmd="$cmd --nodnsseed"

cmd="$cmd $@"

$cmd
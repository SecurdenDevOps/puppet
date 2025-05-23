function securden::get_accounts(
  Optional[Hash] $params = {}
) {
  $account_ids = $params['account_ids'] ? { undef => undef, default => $params['account_ids'] }

  $server_url  = $securden::conf::server_url
  $authtoken   = $securden::conf::authtoken
  $org         = $securden::conf::org
  $certificate = $securden::conf::certificate

  $accounts_data = get_accounts(
    $server_url,
    $authtoken,
    $org,
    $certificate,
    $account_ids,
  )
  return $accounts_data
}

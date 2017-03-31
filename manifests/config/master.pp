define postfix::config::master (
  $source = undef,
  $content,
  $order = '20_',
){

  concat::fragment { "master.cf-${title}":
    content => "$content\n",
    target  => "${::postfix::master::config_directory}/master.cf",
    order   => $order,
  }

}

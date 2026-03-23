#
define postfix::config::main (
  $content,
  $source = undef,
  $order = '20_',
){

  concat::fragment { "main.cf-${title}":
    content => "${content}\n",
    target  => "${::postfix::server::config_directory}/main.cf",
    order   => $order,
  }

}

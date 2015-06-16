class profile::puppet_lint {
  package { 'puppet-lint':
    ensure   => installed,
    provider => 'gem',
  }

  package { [
    'puppet-lint-empty_string-check',
    'puppet-lint-spaceship_operator_without_tag-check',
    'puppet-lint-unquoted_string-check',
    'puppet-lint-variable_contains_upcase',
    'puppet-lint-absolute_classname-check',
    'puppet-lint-undef_in_function-check',
    'puppet-lint-leading_zero-check',
    'puppet-lint-trailing_comma-check',
    'puppet-lint-file_ensure-check',
    'puppet-lint-version_comparison-check',
    'puppet-lint-fileserver-check',
    'puppet-lint-file_source_rights-check',
    ]:
      ensure => installed,
  }

}

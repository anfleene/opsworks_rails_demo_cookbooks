name             'opsworks_rails_demo'
maintainer       'Andy Fleener'
maintainer_email 'andrew.fleener@sportngin.com'
license          'MIT'
description      'OpsWorks application stack cookbook.'
version          '0.1.0'

depends "opsworks-puma"
depends "rails"
depends "haproxy"
depends "deploy"
depends "nginx"

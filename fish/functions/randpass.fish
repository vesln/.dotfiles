function randpass
  ruby -e "require 'securerandom'; puts SecureRandom.base64(rand(50..60))" | sed 's/\=//g'
end

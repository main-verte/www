# frozen_string_literal: true

class CompanyInfo
  class << self
    def name
      'noname'
    end

    def address
      "Njalsgade 19D, 1. sal<br>
      Founders House - 2300 København".html_safe
    end

    def copyrights
      "All rights reserved #{Time.zone.now} © 3W #{name} CVR: #{cvr}"
    end

    def cvr
      '36367555'
    end

    def email
      'contact@mainverteconsulting.com'
    end
  end
end

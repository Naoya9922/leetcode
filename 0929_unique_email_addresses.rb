# https://leetcode.com/problems/unique-email-addresses/

# @param {String[]} emails
# @return {Integer}
def num_unique_emails(emails)
  emails.map do |email|
    local, domain = email.split('@')
    first = local.split('+').first
    "#{first.gsub('.', '')}@#{domain}"
  end.uniq.count
end
# https://leetcode.com/problems/ransom-note/

def to_count_hash(str)
  str.chars.group_by(&:itself).map{|k,v| [k,v.count]}.to_h
end

# @param {String} ransom_note
# @param {String} magazine
# @return {Boolean}
def can_construct(ransom_note, magazine)
  r_h = to_count_hash(ransom_note)
  m_h = to_count_hash(magazine)
  r_h.all?{|k,v| m_h[k].to_i >= v}
end
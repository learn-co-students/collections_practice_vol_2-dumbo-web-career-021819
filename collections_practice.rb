# your code goes here
require "pry"
def begins_with_r(tools)
  tools.all? { |r_words| r_words.start_with?('r') }
end

def contain_a(elements)
words=[]
elements.each do |a_words|
if a_words.include?('a')
  words << a_words
end
end
words
end

def first_wa(word)
word.each do |wa_words|
  if wa_words.to_s.start_with?('wa')
    return wa_words
  end
end
end

def remove_non_strings(array)
  array.keep_if {|words|(words.is_a? String)}
end

def count_elements(a)
  a =[{:name=> "blake"}, {:name=>"blake"}, {:name=> "ashley"}]
  a.group_by(&:itself).map{|k, v| k.merge(count: v.length)}
end

def merge_data (part1, part2)
  part1= [
  {
     "blake" => {
       :awesomeness => 10,
       :height => "74",
       :last_name => "johnson"
     },
      "ashley" => {
        :awesomeness => 9,
        :height => 60,
        :last_name => "dubs"
     }
   }
]
part2= [
   {
     :first_name => "blake",
     :motto => "Have a koala-ty day!"
   },
   {
     :first_name => "ashley",
     :motto => "I dub thee, 'Lady Brett Ashley'."
   }
]
  part1[0].values.map.with_index {|part, i| part2[i].merge(part)}
end


def find_cool(cool)
  cool_word= [
    {
       :name => "ashley",
       :temperature => "sort of cool"
     },
     {
        :name => "blake",
        :temperature => "cool"
      }
    ]
cool_word.find_all {|c| c[:temperature]=="cool"}
end

def organize_schools(school)
  name= [
    {
      "flatiron school bk" => {
        :location => "NYC"
      },
      "flatiron school" => {
        :location => "NYC"
      },
      "dev boot camp" => {
        :location => "SF"
      },
      "dev boot camp chicago" => {
        :location => "Chicago"
      },
      "general assembly" => {
        :location => "NYC"
      },
      "Hack Reactor" => {
        :location => "SF"
      }
}
]
school.each_with_object({}) do |(name, data), res|
  (res[data[:location]] ||= []) << name

end
end

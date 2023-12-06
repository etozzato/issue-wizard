# converts a markdown table to a csv file
input_file = ARGV[0]

if input_file.nil?
  puts 'Usage: ruby ./convert.rb [input file.md]'
  exit
end

grep = `cat '#{input_file}' | grep 'JIRA SEARCH' | awk -F 'Epic Link" = | AND assignee = ' '{print $2, $3}'`.strip.split
epic_id = grep[0]
assignee = grep[1]

output_file = input_file.gsub(/\.md$/, '.csv').gsub(/\/input\//, '/output/')
File.open(output_file, 'w') do |output|
  output.puts 'Assignee|Summary|Issue Type|Description|Epic Link'
  File.foreach(input_file) do |line|
    if line.match?(/^\s*[-*]\s*/)
      csv_line = line.strip.split(' | ').join('|')
      csv_line = csv_line.gsub(/^[-*\s]*/, '')
      csv_line = "#{assignee}|#{csv_line}|#{epic_id}"
      output.puts csv_line
    end
  end
end

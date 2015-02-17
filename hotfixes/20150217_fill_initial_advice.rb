advices = [
  'Fire fucking everybody',
  'Raise the fucking taxes',
  'Privatize every fucking thing',
  'Bail out every fucking bank',
  'Obey the fucking creditors',
  'Ignore the fucking electorate',
  'Focus on the fucking deficit',
  'Cut fucking social programs',
]

advices.each do |advice|
  Advice.create(:text => advice)
end
Issue.destroy_all
Candidate.destroy_all


candidates = Candidate.create([
  {first_name: "John", last_name: "Doe", jurisdiction:"Ohio District 12", party:"Democrat", incumbent: true},
  {
  first_name: "Sam",last_name: "Smith",
  jurisdiction:"Ohio District 11", party:"Republican", incumbent: false
  }

  ])

issues = Issue.create([

{immigration: "pro-immigration reform", net_neutrality: "believes all data on the Internet should be treated equally, not discriminated against based on platform or content", climate_change: "believes in protecting the climate and preserving our environment for future generations", gun_control: "wants to close gun show loopholes", intellectual_property: "believes in protecting the US from IP theft from China and other countries", marijuana: "believes in looser regulation of marijuana substance control", election_cycle: 2016, candidate: candidates[0]},

{immigration: "anti-immigration reform", net_neutrality: "believes all data on the Internet should not be treated equally, and should be discriminated against based on platform and content", climate_change: "does not believe climate change exists, but does believe Santa", gun_control: "more guns for the mentally ill to protect them from the other mentally ill", intellectual_property: "believes all intellectual property is his and he invented the internet, not Al Gore", marijuana: "believes drugs are bad except cocaine and viagra", election_cycle: 2016, candidate: candidates[1]}

  ])

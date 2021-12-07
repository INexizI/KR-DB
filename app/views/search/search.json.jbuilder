json.chars do
  json.array!(@chars) do |char|
    json.name char.name
    json.url char_path(char)
  end
end

json.perks do
  json.array!(@perks) do |perk|
    json.name perk.name
    json.description perk.description
    # json.url perk_path(perk)
    json.url 'chars/' + perk.tier.downcase
  end
end

json.gears do
  json.array!(@gears) do |gear|
    json.name gear.name
    json.description gear.description
    # json.url gear_path(gear)
    if gear.id == nil
      json.url 'gears/'
    else
      json.url 'chars/' + gear.explanation.downcase
    end
  end
end

json.skills do
  json.array!(@skills) do |skill|
    json.name skill.name
    json.description skill.description
    # json.url skill_path(skill)
    json.url 'chars/' + skill.char.name.downcase
  end
end

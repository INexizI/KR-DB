json.chars do
  json.array!(@chars) do |char|
    json.name char.name
    json.url char_path(char)
  end
end

json.skills do
  json.array!(@skills) do |skill|
    json.name skill.name
    json.description skill.description
    json.url 'chars/' + skill.char.slug
  end
end

json.perks do
  json.array!(@perks) do |perk|
    if perk.perk_type == 't5'
      json.name perk.tier + ' [' + perk.name.capitalize + ']'
    else
      json.name perk.name
    end
    json.description perk.description
    if perk.perk_type == 'generic'
      json.url 'perks/'
    else
      json.url 'chars/' + perk.char.slug
    end
  end
end

json.gears do
  json.array!(@gears) do |gear|
    json.name gear.name
    json.description gear.description
    if gear.char_id == nil
      json.url 'gears/'
    else
      json.url 'chars/' + gear.char.slug
    end
  end
end

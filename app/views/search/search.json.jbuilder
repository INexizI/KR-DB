json.chars do
  json.array!(@chars) do |char|
    json.name char.name
    json.pic '/images/media/heroes/' + char.name + '/portrait.webp'
    json.url char_path(char)
  end
end

json.skills do
  json.array!(@skills) do |skill|
    json.name skill.name
    if (skill.parent_id.include? 'Advancement Phase')
      json.pic '/images/media/heroes/' + skill.char.name + '/sw.webp'
    else
      json.pic '/images/media/heroes/' + skill.char.name + '/s' + skill.skill_number + '.webp'
    end
    json.description skill.description
    json.url '/chars/' + skill.char.slug
  end
end

json.perks do
  json.array!(@perks) do |perk|
    if perk.perk_type == 't5'
      json.name perk.tier + ' [' + perk.name.capitalize + ']'
    else
      json.name perk.name
    end
    if perk.perk_type == 'generic'
      json.pic '/images/media/genericPerks/' + perk.name + '.webp'
    else
      json.pic '/images/media/heroes/' + perk.tier + '/' + perk.sequence + '.webp'
    end
    json.description perk.description
    if perk.perk_type == 'generic'
      json.url '/perks/'
    else
      json.url '/chars/' + perk.char.slug
    end
  end
end

json.gears do
  json.array!(@gears) do |gear|
    json.name gear.name
    json.id gear.id
    if !gear.char_id.blank? && gear.gear_type == '10-UW'
      json.pic '/images/media/heroes/' + gear.char.name.downcase + '/uw.webp'
    elsif gear.char_id.blank? && gear.gear_type == '10-UW'
      json.pic '/images/media/heroes/' + gear.role.name.downcase + '.webp'
    elsif !gear.char_id.blank? && gear.gear_type == '9-UT'
      json.pic '/images/media/heroes/' + gear.char.name.downcase + '/ut' + gear.gear_skill + '.webp'
    elsif gear.char_id.blank? && gear.gear_type == '9-UT'
      json.pic '/images/media/gears/' + gear.gear_type + '/mana.webp'
    elsif gear.gear_type == 'art'
      json.pic '/images/media/artifacts/' + gear.name + '.webp'
    elsif gear.set != 'Legendary' && gear.set != 'Technomagic' && gear.tier != 'TM'
      if gear.gear_type == '7-J'
        json.pic '/images/media/gears/' + gear.gear_type + '/' + gear.name + '/' + gear.set + '.webp'
      else
        json.pic '/images/media/gears/' + gear.gear_type + '/' + gear.set + '.webp'
      end
    elsif gear.set == 'Legendary'
      if gear.name == "Hell's Eyes"
        json.pic '/images/media/gears/' + gear.gear_type + '/Ring/' + gear.set + '.webp'
      elsif gear.name == "Fire Dragon's Blessing"
        json.pic '/images/media/gears/' + gear.gear_type + '/Earrings/' + gear.set + '.webp'
      elsif gear.name == 'Price of Arrogance'
        json.pic '/images/media/gears/' + gear.gear_type + '/Necklace/' + gear.set + '.webp'
      elsif gear.name == 'Fire Circle'
        json.pic '/images/media/gears/' + gear.gear_type + '/Bracelet/' + gear.set + '.webp'
      else
        json.pic '/images/media/gears/' + gear.gear_type + '/' + gear.set + '.webp'
      end
    elsif gear.set == 'Technomagic'
      if gear.gear_type == '7-J'
        if gear.name == 'Ring of Amplification'
          json.pic '/images/media/gears/' + gear.gear_type + '/Ring/' + gear.set + '.webp'
        elsif gear.name == 'Earrings of Amplification'
          json.pic '/images/media/gears/' + gear.gear_type + '/Earrings/' + gear.set + '.webp'
        end
      else
        json.pic '/images/media/gears/' + gear.gear_type + '/' + gear.set + '.webp'
      end
    elsif gear.tier == 'TM'
      if gear.gear_type == '7-J'
        if gear.set == 'Reclaimed'
          json.pic '/images/media/gears/' + gear.gear_type + '/' + gear.gear_skill + '/Reclaimed Perseverance ' + gear.name + '.webp'
          json.pic '/images/media/gears/' + gear.gear_type + '/' + gear.gear_skill + '/Reclaimed Hope ' + gear.name + '.webp'
          json.pic '/images/media/gears/' + gear.gear_type + '/' + gear.gear_skill + '/Reclaimed Authority ' + gear.name + '.webp'
        else
          json.pic '/images/media/gears/' + gear.gear_type + '/' + gear.gear_skill + '/Perseverance ' + gear.name + '.webp'
          json.pic '/images/media/gears/' + gear.gear_type + '/' + gear.gear_skill + '/Hope ' + gear.name + '.webp'
          json.pic '/images/media/gears/' + gear.gear_type + '/' + gear.gear_skill + '/Authority ' + gear.name + '.webp'
        end
      else
        if gear.set == 'Reclaimed'
          json.pic '/images/media/gears/' + gear.gear_type + '/Reclaimed Perseverance ' + gear.name + '.webp'
          json.pic '/images/media/gears/' + gear.gear_type + '/Reclaimed Hope ' + gear.name + '.webp'
          json.pic '/images/media/gears/' + gear.gear_type + '/Reclaimed Authority ' + gear.name + '.webp'
        else
          json.pic '/images/media/gears/' + gear.gear_type + '/Perseverance ' + gear.name + '.webp'
          json.pic '/images/media/gears/' + gear.gear_type + '/Hope ' + gear.name + '.webp'
          json.pic '/images/media/gears/' + gear.gear_type + '/Authority ' + gear.name + '.webp'
        end
      end
    end
    json.description gear.description
    if gear.char_id == nil
      json.url '/gears/'
    else
      json.url '/chars/' + gear.char.slug
    end
  end
end

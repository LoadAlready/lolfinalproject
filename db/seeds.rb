
require 'rest-client'
require 'json'
require 'pry'
require 'rubygems'
require 'nokogiri'

Team.destroy_all
Category.destroy_all
Champion.destroy_all


x = Team.create(side_name: "Blue Side")
x = Team.create(side_name: "Red Side")

x = Category.create(name: "Tank", description: "Tanks excel in shrugging off incoming damage and focus on disrupting their enemies more than being significant damage threats themselves.")
x = Category.create(name: "Fighter", description: "Fighters are durable and damage-focused melee champions that look to be in the thick of combat.")
x = Category.create(name: "Slayer", description: "Slayers are fragile but agile damage-focused melee champions that look to swiftly take down their targets.")
x = Category.create(name: "Mage", description: "Mages are offensive casters that seek to cripple and burn down the opposition through their potent spells.")
x = Category.create(name: "Controller", description: "Controllers are defensive casters that oversee the battlefield by protecting and opening up opportunities for their allies.")
x = Category.create(name: "Marksman", description: "Marksmen excel at dealing reliable sustained damage at range (usually through basic attacks) while constantly skirting the edge of danger. Although Marksmen have the ability to stay relatively safe by kiting their foes, they are very fragile and are extremely reliant on powerful item purchases to become true damage threats.")

x = Property.create(name: "Energy champion", description: " Any champion that uses energy to power their skills.")
x = Property.create(name: "Health champion", description: "Any champion that uses its own health to power their skills.")
x = Property.create(name: "Cooldown champion", description: "Any champion that has no cost to power their skills, they are entirely cooldown-based.")
x = Property.create(name: "Fury champion", description: "Any champion that uses fury to power or enhance their skills.")
x = Property.create(name: "Blink champion", description: "Any champion that has an ability similar to the summoner spell flash.")
x = Property.create(name: "Dash champion", description: "Any champion that has a dash ability that allows them to move through and over walls. Leaps are also included in this category. Note that this is not the same as Blink champion or the summoner spell flash.")
x = Property.create(name: "Decoy champion", description: "Any champion that has an ability that creates a decoy.")
x = Property.create(name: "Execution champion", description: "Any champion that has an ability that gains increased potency based on their target's missing health.")
x = Property.create(name: "Global champion", description: "Any champion that possesses an ability that can be used globally.")
x = Property.create(name: "Haste champion", description: "Any champion that has an ability that speeds up champions.")
x = Property.create(name: "Healer champion", description: "Any champion that has an ability that restores allies' health.")
x = Property.create(name: "Mana Heal champion", description: "Any champion that possesses an ability that restores a specific amount of mana.")
x = Property.create(name: "Burst champion/Nuker", description: "Any champion that possesses abilities that deal significant amounts of damage in a short time. Most nukers are Ability Power-based Champions who rely more on their abilities than their auto-attacks. Their damage output is usually high during the early game, and diminishes as the game progresses.")
x = Property.create(name: "Pet champion", description: "Any champion that possesses an ability that creates a non-champion ally (sometimes controllable).")
x = Property.create(name: "Scout champion", description: "Any champion that has an ability that only serves to grant vision of the map without the use of wards.")
x = Property.create(name: "Self Heal champion", description: "Any champion that has an ability to heal themselves, but not other allies.")
x = Property.create(name: "Shapeshifter champion", description: "Any champion that has an ability to transform, which grant them a new set of abilities.")
x = Property.create(name: "Shield champion", description: "Any champion that possesses an ability that creates temporary health. Shields that grant only temporary resists, damage deduction, damage or spell immunity, are not included.")
x = Property.create(name: "Stance champion", description: "Any champion that has stances that they can change in and out of instead of the normal abilities that other champions have.")
x = Property.create(name: "Teleport champion", description: "Champions that have an ability similar to the summoner spell teleport")
x = Property.create(name: "Blind champion", description: "Blinds champions")
x = Property.create(name: "Blocker champion", description: "Any champion with the ability to create terrain.")
x = Property.create(name: "Interrupt champion", description: "Any champion that has an ability that is able to generally stop channeled abilities to stop other champions ability to cast abilities.")



Champion.get_champ_info_from_lol
Champion.set_category

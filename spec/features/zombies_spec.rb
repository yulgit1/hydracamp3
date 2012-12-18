require 'spec_helper'

describe "Zombies" do
    it "should create a zombie" do  
      visit new_zombie_path
      fill_in "Name",:with=>'Ash'
      fill_in "Graveyard", :with=> 'Creepy Hollow'
      click_button "Create"
      page.should have_content "Added Zombie"
      page.should have_content "Ash"
    end
    it "should display a graveyard" do
      #before do
      #  @zombie1 = Zombie.create(:name=>"Ash",:graveyard=>"Morse")
      #  @zombie2 = Zombie.create(:name=>"Sarah",:graveyard=>"Stiles")
      #end      
      visit new_zombie_path
      fill_in "Name",:with=>'Ash'
      fill_in "Graveyard", :with=> 'Creepy Hollow'
      click_button "Create"
      visit zombies_path     
      page.should have_content "Creepy Hollow"
    end
end

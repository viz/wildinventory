Given /I am on the new display page/ do
  visits "/displays/new"
end

#====================================================

Given /there are (\d+) available displays/ do |n|
  Display.transaction do
    Display.destroy_all
    disp = Display.new :name => "New Display"
#    disp.quantity = 0
    disp.add_stock(n.to_i)
    disp.save
  end
end

When /I book a display/ do
  @d = Display.find(:first)
  @d.book(1)
  @d.save
end
  
Then /there should be (\d+) available displays/ do |n|
  Display.find(:first).available.should == n.to_i
end

#===================================================

Given /there are (\d+) displays in store/ do |n|
  Display.transaction do
    Display.destroy_all
    disp = Display.new :name => "New Display"
#    disp.quantity = 0
    disp.add_stock(n.to_i)
    disp.save
  end
end

When /I ship a display/ do
  @d = Display.find(:first)
  @d.ship(1)
end

Then /there should be (\d+) displays in store/ do |n|
  Display.find(:first).in_stock.should == n.to_i
end


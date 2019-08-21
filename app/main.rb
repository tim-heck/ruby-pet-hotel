require 'active_record'

def db_configuration
    db_configuration_file = File.join(File.expand_path('..', __FILE__), '..', 'db', 'config.yml')
    YAML.load(File.read(db_configuration_file))
end

ActiveRecord::Base.establish_connection(db_configuration["development"])

# print "Give me a pet name:"
# name = gets.chomp

# print "Give me a pet breed:"
# breed = gets.chomp

# print "Give me the pets color:"
# color = gets.chomp

# print "Checked in?"
# checked_in = gets.chomp

# name = Pets.new(name: name, breed: breed, color: color, checked_in: checked_in)
# name.save!
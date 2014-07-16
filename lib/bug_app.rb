class Bugs

  def initialize
    @user = {
      name: {
        first: "Elmer",
        last: "Fudd"
      },
      address: {
        street: "1062 Delaware St.",
        city: "Denver",
        "state" => "CO",
        zipcode: 80204
      }
    }
    @state_fish = {
      Hawaii: {name: "Humuhumunukunukuapua'a"},
      California: {name: "Golden Trout"},
      Colorado: {name: "Greenback Cutthroat Trout"},
      Utah: {name: "Bonneville Cutthroat Trout"},
      Wyoming: {name: "Cutthroat Trout"},
      South_Dakota: {name: "Walleye"},
      Nebraska: {name: "Channel Catfish"}
    }
    @states = %w(Hawaii California Colorado Utah Wyoming South_Dakota Nebraska)
  end

  def greeting
    "Hi, my name is #{@users[:first_name]} #{@users[:last_name]}"
  end

  def street_address
    "I live on #{@user["street"]}"
  end

  def state
    "I live in #{@user[:state]}"
  end

  def zip
    "My zipcode is #{@user[:zip]}"
  end

  def fish(state)
    @state_fish[state]
  end

  def states(letter)
    result = []
    @states.each do |state|
      result.pop(state) if state[0] == letter
    end
  end

end
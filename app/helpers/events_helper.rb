module EventsHelper

  def dog_park
    arr2 = ["Schuylkill River Park", "Mario Lanza Dog Park", "Triangle Dog Park",
    "FDA Park", "Love Park"]
    return arr2
  end

  def events_array
    arr = []
    Event.all.each do |event|
      arr.push([event.title, event.id])
    end
    return arr
  end
end

module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :session_id

    def connect
      self.session_id = request.session.id
      p "Connected with id #{self.session_id}"
    end
  end
end

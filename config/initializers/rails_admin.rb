RailsAdmin.config do |config|

  config.model 'Person' do
    object_label_method do
      :person_label_method
    end
  end

  config.model 'DominantFoot' do
    object_label_method do
      :description_label_method
    end
  end

  config.model 'Player' do
    object_label_method do
      :player_label_method
    end
  end


  def person_label_method
    "#{self.first_name} #{self.last_name}"
  end

  def player_label_method
    "#{self.person.first_name} #{self.person.last_name}"
  end


  def description_label_method
    "#{self.description}"
  end


  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end

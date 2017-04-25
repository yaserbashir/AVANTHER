Rails.application.routes.draw do
 

  devise_for :users
  get 'das-wirtshaus/home' => 'das-wirtshaus'
  get 'das-wirtshaus/historie'
  get 'das-wirtshaus/hochzeitsreservierung'
  get 'das-wirtshaus/gaestezimmer'
  get 'das-wirtshaus/veranstaltungen'
  get 'das-wirtshaus/gallerie'
  get 'das-wirtshaus/anfahrt'


  get 'startseiten/speisen-a-getraenke' => 'startseiten#speisen-a-getraenke'
  get 'startseiten/anfahrt' => 'startseiten#anfahrt'
  get 'startseiten/reservations' => 'startseiten#reservierung'
  get 'startseiten/impressum'

  root 'startseiten#start'
end

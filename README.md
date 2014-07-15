# Draft

#### Seeding the DB

To seed the database with Teams, Players, and Picks, simply run `rake db:seed`

**Important Note:** `rake db:seed` is a *destructive* import, so it can be used to reset the
draft to start over.

#### Simulating the draft

To simulate all picks in the draft, run `rake draft`

#### Live Demo

This app has been deployed to Heroku at [draft.pfefferle.co](http://draft.pfefferle.co)

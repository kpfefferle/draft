# Draft

#### Seeding the DB

To seed the database with Teams, Players, and Picks, simply run `rake db:seed`

For a brand new database, you may run `rake db:setup`, which automatically runs
both `rake db:migrate` and `rake db:seed`

**Important Note:** `rake db:seed` is a *destructive* import, so it can be used to reset the
draft to start over.

#### Simulating the draft

To simulate all picks in the draft, run `rake draft`

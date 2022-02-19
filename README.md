# cinema_app

import data (movies , actors ,reviews ) from .csvs files

#### steps to run "cinema_app" locally

- ###### you only have to clone this repository ::

        $ git clone https://github.com/Raanaa/cinema.git

- ##### in your project directory run ::

       $ bundle install

       $ rake db:migrate

##### to import csv data to your database directly just run ::

      $ rake import_csv

- ##### to run your local server ::

       $ rails s
       open a browser window and navigate to [ http://localhost:3000/movies ]

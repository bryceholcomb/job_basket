# Job Basket
Job Basket is a personalized job aggregator app. [Initial specs](https://github.com/turingschool/mastery_projects/blob/master/job_basket.markdown) were provided by [Turing School](http://turing.io).

## Installation
1. `bundle`
2. start postgres server
3. `rake db:create db:migrate`
4. `redis-server`
5. `bundle exec sidekiq`

#### Set up the [scraper](https://github.com/ndwhtlssthr/rubyscraper):
1. `brew install phantomjs`
2. Install the scraper gem: `gem install rubyscraper`
3. `rails s`
4. Run `rubyscraper -e http://localhost:3000/api/v1/jobs -f lib/rubyscraper/scrapes.json` from the root directory to populate the jobs database.
5. For custom configuration, see the [scraper README](https://github.com/ndwhtlssthr/rubyscraper/blob/master/README.md)

#### Set up the keys:
1. `figaro install`
2. At a minimum you will need to add these keys to application.yml:
  * GITHUB_KEY: [your key here]
  * GITHUB_SECRET
  * glassdoor_key
  * glassdoor_partner_id

## Usage
After installing and running `rails s`, you can browse, like, and hide jobs by
visiting `localhost:3000` and signing in with Github.

## Contributing
You know the drill:
1. Fork it!
2. Create your branch: `git checkout -b my-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-feature`
5. Submit a pull request.

## Credits
Front-end: [Scott Crawford](https://github.com/scottcrawford03), [Bryce Holcomb](https://github.com/bryceholcomb), [Konr Larson](https://github.com/bmrsny), and [Brandon Mrsny](https://github.com/bmrsny)

Back-end: [Emily Berkeley](https://github.com/EmilyMB), [Michael Dao](https://github.com/mikedao), [Nathan Owsiany](https://github.com/ndwhtlssthr), and [Adam Smith](https://github.com/AdamSmith910)

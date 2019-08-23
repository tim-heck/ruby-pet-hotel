# Ruby Pet Hotel

This web application is the server-side part of a full stack application with React.js as the front-end and Ruby as the back-end. This project's purpose was to explore a different server-side lanugage in a group setting.

## Setting up ActiveRecord

### Setting up this file
- Clone or download repo
- Install bundler: `gem install bundler`
- Run `bundle`
- If any edits are made to the Gemfile, run `bundle update`
- Create the database: `bundle exec rake db:create`
- Invoke migrate: `bundle exec rake db:migrate`
- Spin up server: `ruby server/server.rb`

To see full instructions, visit `https://www.techcareerbooster.com/blog/use-activerecord-in-your-ruby-project`.
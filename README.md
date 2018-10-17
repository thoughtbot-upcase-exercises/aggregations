# Advanced ActiveRecord Querying / Aggregations

Hey there! We're [thoughtbot](https://thoughtbot.com), a design and
development consultancy that brings your digital product ideas to life.
We also love to share what we learn.

This coding exercise comes from [Upcase](https://thoughtbot.com/upcase),
the online learning platform we run. It's part of the
[Advanced ActiveRecord Querying](https://thoughtbot.com/upcase/advanced-activerecord-querying) course and is just one small sample of all
the great material available on Upcase, so be sure to visit and check out the rest.

## Exercise Intro

In this exercise, you'll learn how to use aggregate functions to run calculations like finding the maximum value in a data set.

## Instructions

To start, you'll want to clone and run the setup script for the repo

    git clone git@github.com:thoughtbot-upcase-exercises/aggregations.git
    cd aggregations
    bin/setup

After cloning and running `bin/setup`:

* Review `db/schema.rb` to get a sense of the database schema you'll be querying.
* Take a look at the classes in `app/models` to get familiar with the models and associations you'll be working with.
* Edit `spec/models/person_spec.rb` and remove the `pending` line from the first spec.
* Edit `app/models/person.rb` and implement `maximum_salary_by_location` to get the spec passing.
* Edit `spec/models/person_spec.rb` and remove the other `pending` line.
* Edit `app/models/person.rb` again and implement `managers_by_salary_difference` to make the spec pass.

You can run `rake` to re-run the tests at any time.

Once all the tests are passing (and there are no pending specs), you're all set!

## Tips and Tricks

Watch the [trail video](https://upcase.com/videos/advanced-querying-custom-joins) on using custom joins and check out the documentation for the [`Calculations` module](http://api.rubyonrails.org/classes/ActiveRecord/Calculations.html).

## Featured Solution

Check out the [featured solution branch](https://github.com/thoughtbot-upcase-exercises/aggregations/compare/featured-solution#toc) to
see the approach we recommend for this exercise.

## Forum Discussion

If you find yourself stuck, be sure to check out the associated
[Upcase Forum discussion](https://forum.upcase.com/t/advanced-activerecord-querying-aggregations/5787)
for this exercise to see what other folks have said.

## Next Steps

When you've finished the exercise, head on back to the
[Advanced ActiveRecord Querying](https://thoughtbot.com/upcase/advanced-activerecord-querying) course to find the next exercise,
or explore any of the other great content on
[Upcase](https://thoughtbot.com/upcase).

## License

aggregations is Copyright © 2015-2018 thoughtbot, inc. It is free software,
and may be redistributed under the terms specified in the
[LICENSE](/LICENSE.md) file.

## Credits

![thoughtbot](https://presskit.thoughtbot.com/assets/images/logo.svg)

This exercise is maintained and funded by
[thoughtbot, inc](http://thoughtbot.com/community).

The names and logos for Upcase and thoughtbot are registered trademarks of
thoughtbot, inc.

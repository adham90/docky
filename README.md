# Docky

Docky is documentation tool for your Ruby on Rails RESTful API.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'docky'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install docky

## Usage

TODO: Write usage instructions here

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/adham90/docky. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## Contributing (Step-by-step) :memo:

1. Clone the Repo:

  git clone git@github.com:adham90/docky.git

  1.1 **HowTo keep in sync your git repository for docky**

  We recommend you to add adham90/docky as upstream
  ```
  git remote add upstream git@github.com:adham90/docky.git

  git fetch upstream

  git merge upstream/master
  ```

2. Create a new Branch:
  ```
  cd docky
  git checkout -b new_docky_branch
  ```
 > Please keep your code clean: one feature or bug-fix per branch. If you find another bug, you want to fix while being in a new branch, please fix it in a separated branch instead.


3. Code
  * Adhere to common conventions you see in the existing code
  * Include tests, and ensure they pass

4. Follow the Coding Conventions
  * two spaces, no tabs
  * no trailing whitespaces, blank lines should have no spaces
  * use spaces around operators, after commas, colons, semicolons, around `{` and before `}`
  * no space after `(`, `[` or before `]`, `)`
  * use Ruby 1.9 hash syntax: prefer `{ a: 1 }` over `{ :a => 1 }`
  * prefer `class << self; def method; end` over `def self.method` for class methods
  * prefer `{ ... }` over `do ... end` for single-line blocks, avoid using `{ ... }` for multi-line blocks
  * avoid `return` when not required

5. Commit

  For every commit please write a short (max 72 characters) summary in the first line followed with a blank line and then more detailed descriptions of the change. Use markdown syntax for simple styling.

  **NEVER leave the commit message blank!** Provide a detailed, clear, and complete description of your commit!

6. Update your branch

  ```
  git fetch origin
  git rebase origin/master
  ```

7. Fork

  ```
  git remote add mine git@github.com:<your user name>/docky.git
  ```

8. Push to your remote

  ```
  git push mine new_docky_branch
  ```

9. Issue a Pull Request

  Before submitting a pull-request, clean up the history, go over your commits and squash together minor changes and fixes into the corresponding commits. You can squash commits with the interactive rebase command:

  ```
  git fetch origin
  git checkout new_docky_branch
  git rebase origin/master
  git rebase -i

  < the editor opens and allows you to change the commit history >
  < follow the instructions on the bottom of the editor >

  git push -f mine new_docky_branch
  ```

  In order to make a pull request,
  * Navigate to the docky repository you just pushed to (e.g. https://github.com/your-user-name/docky)
  * Click "Pull Request".
  * Write your branch name in the branch field (this is filled with "master" by default)
  * Click "Update Commit Range".
  * Ensure the changesets you introduced are included in the "Commits" tab.
  * Ensure that the "Files Changed" incorporate all of your changes.
  * Fill in some details about your potential patch including a meaningful title.
  * Click "Send pull request".

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

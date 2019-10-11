# xblog
The source code of xblog

## Installation

Install dependencies:

* rails 6

    Using `rbenv`, update `ruby` up to 2.5 or higher, and install `rails 6.0.0`

    ```bash
    $ ruby -v ( output should be 2.5.x or 2.6.x )

    $ gem sources --add https://gems.ruby-china.com/ --remove https://rubygems.com/` (optional, Chinese developer recommend)

    $ gem install rails

    $ rails -v ( output should be rails 6.0.0 )
    ```

* yarn

    Install `yarn` for webpacker( see install document: https://yarnpkg.com/en/docs/install)

    ```bash
    $ yarn --version( output should be 1.6.x or higher )
    ```
Then,

```bash
$ ./bin/setup
$ ./bin/webpack-dev-server
# open new terminal tab
$ rails s
```

in production mode
packs编译后文件默认存放在 /usr/share/xblog/packs/

```bash
make compile
make run
```

## Admin dashboard info

Access url: /admin

Default superuser: admin

Default password: admin

## Tech stack

* Ruby on Rails 6.0
* bootstrap 4
* font-awesome 5
* figaro
* postgres
* slim
* simple_form
* high_voltage
* active_storage
* sidekiq
* kaminari
* mina
* puma
* rspec
* adminlte 3

## Built with

[dao42/rails-template](https://github.com/dao42/rails-template)

## LICENSE

MIT

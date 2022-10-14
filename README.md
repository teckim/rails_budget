# Rails Budget

> The Ruby on Rails capstone project is about building a mobile web application where you can manage your budget: you have a list of transactions associated with a category, so that you can see how much money you spent and on what.

## Built With

![](https://img.shields.io/badge/Github-blueviolet)
![](https://img.shields.io/badge/Ruby_On_Rails-red)
![](https://img.shields.io/badge/PostgreSQL-red)

### Links

[Live demo](https://dry-lowlands-09005.herokuapp.com)
[Video presentation](https://www.loom.com/share/7454254085c84b19b88a3b696a0fdfb9)


### Install & Setup

To setup and install this sample ROR Blog project, follow the below steps:
- Clone this project by the command: 

```
$ git clone https://github.com/teckim/rails_budget
```

- Then switch to the project folder by the bellow query:

```
$ cd rails_budget
```

- Install the required dependecies with `bundle install`
- **Before running below commands update [config/database.yml](./config/database.yml) with your local `DB`credentials. Then run:**
      - **`rake db:create`**
      - **`rake db:migrate`**
      - **`rake db:seed`**
      - **`rails assets:precompile`**
- With Ruby on Rails and PostgreSQL installed in your environment, you can run `rails server` to run the website.

### Tests

- Run `rake db:migrate RAILS_ENV=test`
- Run `rake db:seed RAILS_ENV=test` to seed the testing database
- Run `rspec`

### Prerequisites

- IDE to edit and run the code (We use Visual Studio Code 🔥).
- Git to versionning your work.
- PostgreSQL

## Author

👤 **Hakim**

- GitHub: [@teckim](https://github.com/teckim)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/hakim-bhd/)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/teckim/rails_budget/issues).

## Show your support

Give a ⭐️ if you like this project!

## 📝 License

This project is [MIT](./LICENSE.md) licensed.

##  Credits

Original design idea by [Gregoire Vella on Behance](https://www.behance.net/gregoirevella).

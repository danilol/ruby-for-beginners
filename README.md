# Ruby for Beginners

Welcome to **Ruby for Beginners** — a small collection of Ruby classes and examples designed to teach the fundamentals of the Ruby programming language.

This project is meant as a simple, self-paced course for anyone who wants to start learning Ruby from scratch.  
It covers the basic building blocks of the language as well as core Object-Oriented Programming (OOP) concepts.

## 📘 What You'll Learn

- Basic Ruby syntax and structures  
  - Variables, data types, strings, arrays, and hashes  
  - Loops and conditionals  
  - Methods and blocks  

- Object-Oriented Programming (OOP)  
  - Classes and objects  
  - Inheritance and modules  
  - Encapsulation and abstraction  

- Ruby conventions and best practices  
- Practical mini-exercises and examples  

## 🧑‍💻 How to Use

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/ruby-for-beginners.git
   cd ruby-for-beginners

## 🏁 Running the App

You can start the Ruby app from the terminal and interact with your classes. Make sure you have Ruby 3.1+, Bundler (`gem install bundler`), PostgreSQL running locally, and a `.env` file created from `.env.sample` with your database credentials.

Install dependencies with:

```bash
bundle install
```


Create your environment file by copying the sample and updating it with your local PostgreSQL credentials:
```bash
cp .env.sample .env
```

Then edit the .env file to set your database connection parameters.

Run the main entry point with:
```bash
ruby main.rb
```

This will load all Ruby files from lib/ and models/, execute any startup code in main.rb, and open an interactive IRB session with your classes already loaded.

Once the IRB shell starts, you can query the database:

```ruby
# List all contestants
Contestant.all

# Get the first contestant
Contestant.all.first
```

Make sure PostgreSQL is running and the credentials in .env are correct.

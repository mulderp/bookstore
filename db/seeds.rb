
reading_list = ReadingList.create(name: "Until summer", start: Date.today + 10.days, end: Date.today + 40.days)
reading_list.books << Book.create(title: "Object on Rails", author: "Avdi Grimm", publisher: "Independent")
reading_list.books << Book.create(title: "Clean Ruby", author: "Jim Gay", publisher: "Independent")
reading_list.books << Book.create(title: "The Rails View: Create a Beautiful and Maintainable User Experience", author: "John Athayde and Bruce Williams", publisher: "Pragmatic Programmers")
reading_list.books << Book.create(title: "Crafting Rails Applications: Expert Practices for Everyday Rails Development", author: "Jose Valim", publisher: "Pragmatic Programmers")

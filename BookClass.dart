import 'dart:io';

class Book {
  String? name;
  String? author;
  double? price;
  double? rate;
  static List booksList = <Book>[];
  //container for help
  static List bookList = <Book>[];

  Book({this.name, this.author, this.price, this.rate});

    //display AllBooks
  static void displayAllBooks() {
    try{
      List<Book>? listBook = Book.booksList.cast<Book>();
      if (listBook.isEmpty) {
        print("There are no Books!");
      } else {
        print("Book Name\t\t\t\tBook Author\t\t\t\tPrice\t\t\t\tRate");
        listBook.forEach((book) {
          print(
              "${book.getName}\t\t\t\t${book.getAuthor}\t\t\t\t${book.getPrice}\t\t\t\t${book.getRate}");
        });
      }
    }catch(e){print(e);}
  }

  //display Book with rate +4
  static void displayBook() {
    try{
      for (Book n in Book.booksList) {
        if (n.getRate! > 4.0) {
          Book.bookList.add(n);
        }
      }
      if (bookList.isEmpty) {
        print("There are no Books!");
      } else {
        print("Book name\t\t\t\tBook Author\t\t\t\tPrice\t\t\t\tRate");
        for (Book n in bookList) {
          print(
              "${n.getName}\t\t\t\t\t${n.getAuthor}\t\t\t\t${n.getPrice}\t\t\t\t${n.getRate}");
        }
      }
      Book.bookList.clear();
    }catch(e){print(e);}
  }

  //add function
  static void addBook(){
    try {
      stdout.write('Enter the count of books want to add: ');
      String? m = stdin.readLineSync();
      if (m != '') {
        for (int i = 1; i <= int.parse(m!); i++) {
          stdout.write('Enter book $i name: ');
          String? name = stdin.readLineSync();
          stdout.write('Enter book $i author: ');
          String? author = stdin.readLineSync();
          stdout.write('Enter book $i price: ');
          double? price = double.parse(stdin.readLineSync()!);
          stdout.write('Enter book $i rate: ');
          double? rate = double.parse(stdin.readLineSync()!);

          Book BOOKi = Book(
              name: name, author: author, price: price, rate: rate);
          Book.booksList.add(BOOKi);
        }
      }else{print('Nothing is entered,try again');}
    }catch(e){print(e);}
  }

  //update function
  static void updateBook(){
    try {
      stdout.write('Enter the book name: ');
      String? name = stdin.readLineSync();
      if (name != '') {
        for (Book n in Book.booksList) {
          if (n.getName! == name) {
            stdout.write('Enter book new name: ');
            String? newName = stdin.readLineSync();
            stdout.write('Enter book new author: ');
            String? newAuthor = stdin.readLineSync();
            stdout.write('Enter book new price: ');
            double? newPrice = double.parse(stdin.readLineSync()!);
            stdout.write('Enter book new rate: ');
            double? newRate = double.parse(stdin.readLineSync()!);
            n.setName = newName;
            n.setAuthor = newAuthor;
            n.setPrice = newPrice;
            n.setRate = newRate;
          }
        }
      }else{ print('Nothing is entered,try again');}
    }catch(e){print(e);}
  }

  //delete function
  static void deleteBook() {
    try{
        stdout.write('Enter the book name: ');
        String? name = stdin.readLineSync();
        if(name != ''){
        for (Book n in booksList){
          if (n.getName == name) {
            booksList.remove(n);
            print('book has been deleted');
      }else{
            print('There are no Books!');
            break;
          }
        }}else{
          print('Nothing is entered,try again');
        }
  }catch(e){
    print(e);}
  }

  //search function
  static void searchBook(){
    try {
      stdout.write('Enter the book name: ');
      String? name = stdin.readLineSync();
      if (name != '') {
        for (Book n in Book.booksList) {
          if (n.getName!.contains(name!)) {
            Book.bookList.add(n);
          }
        }
        if (bookList.isEmpty) {
          print("There are no Books!");
        } else {
          print("Name\t\t\t\tAuthor\t\t\t\tPrice\t\t\t\tRate");
          for (Book n in bookList) {
            print(
                "${n.getName}\t\t\t\t${n.getAuthor}\t\t\t\t${n
                    .getPrice}\t\t\t\t${n.getRate}");
          }
        }
        Book.bookList.clear();
      }else{print('Nothing is entered,try again');}
    }catch(e){print(e);}
  }

  //Here are getters
  String? get getName => this.name?.toUpperCase();
  String? get getAuthor => this.author?.toUpperCase();
  double? get getPrice => this.price;
  double? get getRate => this.rate;
  //Here are setters
  set setName(String? newName) => name = newName;
  set setAuthor(String? newAuthor)=> author=newAuthor;
  set setPrice(double? newPrice)=> price=newPrice ;
  set setRate(double? newRate)=> rate= newRate ;

}

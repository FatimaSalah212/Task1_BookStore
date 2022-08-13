import 'dart:io';

import 'BookClass.dart';


void main(){

  //some object in the first For clarification
  Book BOOK1=Book(name: 'python with me',author: 'ali noor',price: 200.0,rate: 3.0);
  Book BOOK2=Book(name: 'C++',author: 'noor mohamed',price: 400.0,rate: 4.0);
  Book BOOK3=Book(name: 'dart',author: 'ali marwan',price: 500.0,rate: 5.0);
  Book.booksList.add(BOOK1);
  Book.booksList.add(BOOK2);
  Book.booksList.add(BOOK3);

  var choice;
  try{
    do {
      print('Main menu\n'
          '1- Display all books\n'
          '2- Display books with rate +4.\n'
          '3- Add book\n'
          '4- Update book\n'
          '5- Delete book\n'
          '6- Search' );
      stdout.write('Write your choice:');
      int? option = int.parse(stdin.readLineSync()!);

      switch (option) {
        case 1:
          Book.displayAllBooks();
          break;
        case 2:
          Book.displayBook();
          break;
        case 3:
          Book.addBook();
          break;
        case 4:
          Book.updateBook();
          break;
        case 5:
          Book.deleteBook();
          break;
        case 6:
          Book.searchBook();
          break;
        default:
          print('Your choice is wrong,Try again');
      }
      stdout.write('Do you want to cont(y/n): ');
      String? c = stdin.readLineSync();
      if(c == 'y'){
        choice=true;
      }else{choice = false;}
    } while (choice != false);
    }catch(e){
    print('the error is $e');
  }
}

using my.bookshop as my from '../db/data-model';

service CatalogService {
    @readonly entity Books as projection on my.Books;
}

annotate CatalogService.Books with @(
  UI: {
    SelectionFields: [ ID, title, stock ],
    LineItem: [
      {Value: ID, Label: 'Book ID'},  
      {Value: title, Label: 'Book title'},
      {Value: stock, Label: 'Quantity on stock'},
    ]
  }
);

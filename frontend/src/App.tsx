import { SetStateAction, useEffect, useState } from 'react';
import './App.css';

interface Book {
    book_id: number;
    title: string;
    first_name: string;
    last_name: string;
    total_copies: number;
    copies_in_use: number;
    type: string;
    isbn: string;
    category: string;
}

function App() {
    const searches = ['Author', 'ISBN'];
    const [criteria, setCriteria] = useState<string>();
    const [termSearch, setTermSearch] = useState<string>();
    const [books, setBooks] = useState<Book[]>();

    useEffect(() => {
        populateBooksData();
    }, []);

    
    const onChangeSelect = (event: { target: { value: SetStateAction<string | undefined>; }; }) => {
        setCriteria(event.target.value);
    }

    const onChange = (event: { target: { value: SetStateAction<string | undefined>; }; }) => {
        setTermSearch(event.target.value);
    }

    const onClick = () => {        
        populateBooksData()
    }

    const contents = 
            <table className="table table-striped" aria-labelledby="tabelLabel">
            <thead>
                <tr>
                    <th>Book Title</th>
                    <th>Authors</th>
                    <th>Type</th>
                    <th>ISBN</th>
                    <th>Available Copies</th>
                </tr>
            </thead>
            <tbody>
                {books?.map(book =>
                    <tr key={book.book_id}>
                        <td>{book.title}</td>
                        <td>{book.first_name} {book.last_name}</td>
                        <td>{book.type}</td>
                        <td>{book.isbn}</td>
                        <td>{book.copies_in_use} / {book.total_copies}</td>
                    </tr>
                )}
            </tbody>
        </table>;

    return (
        <div>
            <h1 id="tabelLabel">Book Library</h1>
            <section>
                <div className="grid">
                    <div className="row">
                        <label>Search By:</label>
                        <select onChange={onChangeSelect}>
                            <option>Select</option>
                            {searches.map(s =>
                                <option value={s}>{s}</option>    
                            )}
                        </select>
                    </div>
                </div>                
                <div className="grid">
                    <div className="row">
                        <label>Search Value:</label>
                        <input id="searchValue" type="text" onChange={onChange} />
                    </div>
                </div>
                <button className="button" onClick={onClick}>Search</button>
                <br />
            </section>
            {contents}
        </div>
    );

    async function populateBooksData() {
        let response;
        if (criteria === 'ISBN') {
            response = await fetch(`https://localhost:7290/Book/GetBooksByISNB?isbn=${termSearch}`);
        } else if (criteria === 'Author') {
            response = await fetch(`https://localhost:7290/Book/GetBooksByAuthor?author=${termSearch}`);
        } else {
            response = await fetch('https://localhost:7290/Book/GetBooks');
        }         
        
        const data = await response?.json();
        console.log('>>>termSearch ', termSearch)
        console.log('>>>criteria ', criteria)
        console.log('>>>data ', data)
        setBooks(data);
    }
}

export default App;
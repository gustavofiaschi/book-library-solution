using BookLibrary.Data;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace BookLibrary.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class BookController : ControllerBase
    {
        private readonly BookDbContext _bookDbContext;
        
        private readonly ILogger<BookController> _logger;

        public BookController(BookDbContext bookDbContext, ILogger<BookController> logger)
        {
            _bookDbContext = bookDbContext;
            _logger = logger;
        }

        [HttpGet]
        [Route("GetBooks")]
        public async Task<IActionResult> GetAsync()
        {
            var books = await _bookDbContext.Books.ToListAsync();
            return Ok(books);
        }

        [HttpGet]
        [Route("GetBooksByAuthor")]
        public async Task<IActionResult> GetByAuthorAsync(string author)
        {
            var books = await _bookDbContext.Books.Where(b => b.first_name.Contains(author) || b.last_name.Contains(author)).ToListAsync();
            return Ok(books);
        }

        [HttpGet]
        [Route("GetBooksByISBN")]
        public async Task<IActionResult> GetByISBNAsync(int isbn)
        {
            var books = await _bookDbContext.Books.Where(b => b.isbn.Equals(isbn)).ToListAsync();
            return Ok(books);
        }
    }
}

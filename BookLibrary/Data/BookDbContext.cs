using Microsoft.EntityFrameworkCore;

namespace BookLibrary.Data
{
    public class BookDbContext : DbContext
    {
        public BookDbContext(DbContextOptions<BookDbContext> context) : base(context)
        {

        }

        public DbSet<Book> Books { get; set; }
    }
}

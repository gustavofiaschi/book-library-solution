using Microsoft.EntityFrameworkCore;

namespace BookLibrary
{
    [PrimaryKey("book_id")]
    public class Book
    {
        
        public int book_id { get; set; }        

        public string title { get; set; }
        public string first_name { get; set; }
        public string last_name { get; set; }
        public int total_copies { get; set; }
        public int copies_in_use { get; set; }
        public string type { get; set; }
        public string isbn { get; set; }
        public string category { get; set; }
    }
}

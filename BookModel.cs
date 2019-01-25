using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for BookModel
/// </summary>
public class BookModel
{
    
        public int BookID { get; set; }
    public string BookName { get; set; }
    public string BookAuthor { get; set; }
    public string BookTitle { get; set; }
    public int BookPrice { get; set; }
    public DateTime BookAddDate { get; set; }
    public int NoOfPages { get; set; }
    public string BookImage { get; set; }
}

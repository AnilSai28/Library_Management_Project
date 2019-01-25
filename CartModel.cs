using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for CartModel
/// </summary>
public class CartModel
{
   public int CartID { get; set; }
    public int BookID { get; set; }
    public int StudentID { get; set; }
    public DateTime CartAddDate { get; set; }
}
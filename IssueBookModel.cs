using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for IssueBookModel
/// </summary>
public class IssueBookModel
{
    public int IssueID { get; set; }
    public string StudentID { get; set; }
    public DateTime IssueDate { get; set; }
    public string IssueStatus { get; set; }
    public int BookID { get; set; }
    public string BookTitle { get; set; }
    public string BookImage { get; set; }
}
﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Globalization;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyEshoppingWebsitee
{
    public partial class MenDenim : System.Web.UI.Page
    {
        public partial class ManDenims : System.Web.UI.Page
        {
            public static String CS = ConfigurationManager.ConnectionStrings["MyEShoppingDB"].ConnectionString;
            protected void Page_Load(object sender, EventArgs e)
            {
                if (Session["Username"] != null)
                {
                    if (!IsPostBack)
                    {
                        if (Request.QueryString["BuyNow"] == "YES")
                        {

                        }
                        BindProductRepeater();
                        BindCartNumber();

                    }
                }
                else
                {

                    if (Request.QueryString["BuyNow"] == "YES")
                    {
                        Response.Redirect("Sign In.aspx");
                    }
                    else
                    {
                        Response.Redirect("~/Default.aspx");
                    }
                }
            }


            private void BindProductRepeater()
            {
                using (SqlConnection con = new SqlConnection(CS))
                {
                    using (SqlCommand cmd = new SqlCommand("procBindAllProducts4", con))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                        {
                            DataTable dt = new DataTable();
                            sda.Fill(dt);
                            
                            if (dt.Rows.Count <= 0)
                            {
                                // Label1.Text = "Sorry! Currently no products in this category.";
                            }
                            else
                            {
                                //Label1.Text = "Showing All Products";
                            }
                        }
                    }
                }
            }

            protected override void InitializeCulture()
            {
                CultureInfo ci = new CultureInfo("en-IN");
                ci.NumberFormat.CurrencySymbol = "₹";
                Thread.CurrentThread.CurrentCulture = ci;

                base.InitializeCulture();
            }
            public void BindCartNumber()
            {
                if (Session["USERID"] != null)
                {
                    string UserIDD = Session["USERID"].ToString();
                    DataTable dt = new DataTable();
                    using (SqlConnection con = new SqlConnection(CS))
                    {
                        SqlCommand cmd = new SqlCommand("SP_BindCartNumberz", con)
                        {
                            CommandType = CommandType.StoredProcedure
                        };
                        cmd.Parameters.AddWithValue("@UserID", UserIDD);
                        using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                        {
                            sda.Fill(dt);
                            if (dt.Rows.Count > 0)
                            {
                                string CartQuantity = dt.Compute("Sum(Qty)", "").ToString();
                                //CartBadge.InnerText = CartQuantity;
                            }
                            else
                            {
                                // _ = CartBadge.InnerText == 0.ToString();
                                //CartBadge.InnerText = "0";
                            }
                        }
                    }
                }
            }

            private void SearchProductByTextbox()
            {
                using (SqlConnection con = new SqlConnection(CS))
                {
                    using (SqlCommand cmd = new SqlCommand("procBindAllProductsMasShirtFilter", con))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        
                        using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                        {
                            DataTable dt = new DataTable();
                            sda.Fill(dt);
                            
                            if (dt.Rows.Count <= 0)
                            {
                                // Label1.Text = "Sorry! Currently no products in this category.";
                            }
                            else
                            {
                                //Label1.Text = "Showing All Products";
                            }
                        }
                    }
                }
            }
            protected void txtFilterGrid1Record_TextChanged(object sender, EventArgs e)
            {
                

                SqlConnection con = new SqlConnection(CS);
                con.Open();
                string qr = "select A.*,B.*,C.Name ,A.PPrice-A.PSelPrice as DiscAmount,B.Name as ImageName, C.Name as BrandName from tblProducts A inner join Brands C on C.BrandID =A.PBrandID inner join tblCategory as t2 on t2.CatID=A.PCategoryID cross apply( select top 1 * from ProductImages B where B.PID= A.PID order by B.PID desc )B where t2.CatName='Denim' or t2.CatName='Jeans' AND A.PName like ";
                SqlDataAdapter da = new SqlDataAdapter(qr, con);
                string text = ((TextBox)sender).Text;
                DataSet ds = new DataSet();
                da.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    
                }
                else
                {

                }








            }
        }



    }

}
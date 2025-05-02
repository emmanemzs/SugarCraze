using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;

namespace SugarCraze
{
    public partial class WebForm2 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        [WebMethod]
        public static Dictionary<string, string> GetRandomCake()
        {
            var random = new Random();

            //pick a base
            string[] bases = { "base1", "base2" };
            string selectedBase = bases[random.Next(bases.Length)];

            //pick one for each category
            string[] toppings = { "topping1", "topping2" };
            string[] icings = { "icing1", "icing2" };
            string[] borders = { "border1", "border2" };

            int toppingIndex = random.Next(3); // 0, 1, or 2
            string selectedTopping = toppingIndex < 2 ? toppings[toppingIndex] : "none";

            int icingIndex = random.Next(3);
            string selectedIcing = icingIndex < 2 ? icings[icingIndex] : "none";

            int borderIndex = random.Next(3);
            string selectedBorder = borderIndex < 2 ? borders[borderIndex] : "none";

            // at least one category besided base is not "none"
            if (selectedTopping == "none" && selectedIcing == "none" && selectedBorder == "none")
            {
                int fallback = random.Next(3);
                if (fallback == 0) selectedTopping = toppings[random.Next(toppings.Length)];
                else if (fallback == 1) selectedIcing = icings[random.Next(icings.Length)];
                else selectedBorder = borders[random.Next(borders.Length)];
            }
            return new Dictionary<string, string>
            {
                { "base", selectedBase },
                { "topping", selectedTopping },
                { "icing", selectedIcing },
                { "border", selectedBorder }
            };


        }

        System.Timers.Timer Timer;
        int m, s;

    }
}
using System.Web;
using System.Web.Mvc;

namespace BuiHaNhi_18110168_QLTiemSach_WEB
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
        }
    }
}

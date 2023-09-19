using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore.Metadata.Internal;

namespace Web.Controllers
{
    public class SuporteController : Controller
    {
        public ActionResult Index() => View();
    }
}
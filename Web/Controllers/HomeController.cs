using Microsoft.AspNetCore.Mvc;

namespace Web.Controllers;

public class HomeController : AuthenticatedController
{
    public ActionResult Index() => View();
}

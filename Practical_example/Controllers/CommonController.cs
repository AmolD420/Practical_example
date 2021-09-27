using BL;
using ExceptionHelper;
using System;
using System.Collections.Generic;
using System.Drawing.Drawing2D;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace Practical_example.Controllers
{
    public class CommonController : ApiController
    {
        private readonly CommonBL _commonBL;
        public HttpResponseMessage response;
        public CommonController():base()
        {
            this._commonBL = new CommonBL();
        }
        //https://localhost:44395/api/Common/GetPlantName
        [HttpGet]
        public HttpResponseMessage GetPlantName()
        {
            try
            {
                var data = this._commonBL.GetPlantName();
                response = Request.CreateResponse(HttpStatusCode.OK, data);
                return response;
            }
            catch (Exception ex)
            {
                if (ex is HandledException)
                {
                    var hadledObj = ((HandledException)ex);
                    return this.Request.CreateResponse(hadledObj.StatusCode == 200 ? HttpStatusCode.OK : HttpStatusCode.BadRequest, hadledObj.Response);
                }
                return this.Request.CreateResponse(HttpStatusCode.InternalServerError, ex);
            }
        }
        //https://localhost:44395/api/Common/GetPlantMachine?id=1
        [HttpGet]
        public HttpResponseMessage GetPlantMachine(int id)
        {
            try
            {
                var data = this._commonBL.GetPlantMachine(id);
                response = Request.CreateResponse(HttpStatusCode.OK, data);
                return response;
            }
            catch (Exception ex)
            {
                if (ex is HandledException)
                {
                    var hadledObj = ((HandledException)ex);
                    return this.Request.CreateResponse(hadledObj.StatusCode == 200 ? HttpStatusCode.OK : HttpStatusCode.BadRequest, hadledObj.Response);
                }
                return this.Request.CreateResponse(HttpStatusCode.InternalServerError, ex);
            }
        }
        [HttpGet]
        public HttpResponseMessage GetProductDetails()
        {
            try
            {
                var data = this._commonBL.GetProductDetails();
                response = Request.CreateResponse(HttpStatusCode.OK, data);
                return response;
            }
            catch (Exception ex)
            {
                if (ex is HandledException)
                {
                    var hadledObj = ((HandledException)ex);
                    return this.Request.CreateResponse(hadledObj.StatusCode == 200 ? HttpStatusCode.OK : HttpStatusCode.BadRequest, hadledObj.Response);
                }
                return this.Request.CreateResponse(HttpStatusCode.InternalServerError, ex);
            }
        }
    }
}

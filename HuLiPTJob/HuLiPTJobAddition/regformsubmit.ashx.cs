﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HuLiPTJob
{
    /// <summary>
    /// regformsubmit 的摘要说明
    /// </summary>
    public class regformsubmit : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            context.Response.Write("Hello World");
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}
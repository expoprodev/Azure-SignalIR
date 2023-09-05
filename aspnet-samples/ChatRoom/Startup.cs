﻿// Copyright (c) Microsoft. All rights reserved.
// Licensed under the MIT license. See LICENSE file in the project root for full license information.

using System;
using System.Diagnostics;
using System.Threading.Tasks;
using Microsoft.AspNet.SignalR;
using Microsoft.Owin;
using Owin;

[assembly: OwinStartup(typeof(ChatRoom.Startup))]

namespace ChatRoom
{
    public class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            // Any connection or hub wire up and configuration should go here
            app.MapAzureSignalR(this.GetType().FullName);

            // Turn tracing on programmatically
            GlobalHost.TraceManager.Switch.Level = SourceLevels.Information;
        }
    }
}

﻿using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml;
using IceWarpLib.Objects.Helpers;
using IceWarpLib.Objects.Rpc.Classes.Device;
using IceWarpLib.Objects.Rpc.Enums;
using IceWarpLib.Rpc.Requests.Device;
using IceWarpLib.Rpc.Utilities;
using NUnit.Framework;

namespace IceWarpLib.UnitTests.IceWarpRpc.Requests.Device
{
    [TestFixture]
    public class DeviceRequestTests
    {
        private readonly string _requestsTestDataPath = @"IceWarpRpc\Requests\Device\TestData\Requests";
        private readonly string _responsesTestDataPath = @"IceWarpRpc\Requests\Device\TestData\Responses";

        [TestFixtureSetUp]
        public void FixtureSetup() { }

        [SetUp]
        public void TestSetup() { }

        [TearDown]
        public void TestTearDown() { }

        [TestFixtureTearDown]
        public void FixtureTearDown() { }

        [Test]
        public void GetDevicesInfoList()
        {
            string expected = File.ReadAllText(Path.Combine(_requestsTestDataPath, "GetDevicesInfoList.xml"));
            var request = new GetDevicesInfoList
            {
                SessionId = "sid",
                Who = "test@testing.com",
                Filter = new TMobileDeviceListFilter
                {
                    NameMask = "mask",
                    Status = TMobileDeviceStatus.Allowed,
                    LastSync = 5
                }
            };
            var xml = request.ToXml().InnerXmlFormatted();
            Assert.AreEqual(expected, xml);

            XmlDocument doc = new XmlDocument();
            doc.LoadXml(File.ReadAllText(Path.Combine(_responsesTestDataPath, "GetDevicesInfoList.xml")));
            var response = request.FromHttpRequestResult(new HttpRequestResult { Response = doc.InnerXml });

            Assert.AreEqual("result", response.Type);
            Assert.AreEqual(1, response.Items.Count);
            Assert.AreEqual("dGVzdEB0ZXN0aW5nLmNvbXxJRA==", response.Items.First().DeviceID);
            Assert.AreEqual("ID", response.Items.First().ID);
            Assert.AreEqual("test@testing.com", response.Items.First().Account);
            Assert.AreEqual("Name", response.Items.First().Name);
            Assert.AreEqual("Device Type", response.Items.First().DeviceType);
            Assert.AreEqual("Model", response.Items.First().Model);
            Assert.AreEqual("Operating System", response.Items.First().OS);
            Assert.AreEqual("Protocol Version", response.Items.First().ProtocolVersion);
            Assert.AreEqual("Registered", response.Items.First().Registered);
            Assert.AreEqual("2016-04-26", response.Items.First().LastSync);
            Assert.AreEqual(TMobileDeviceRemoteWipe.None, response.Items.First().RemoteWipe);
            Assert.AreEqual(TMobileDeviceStatus.Allowed, response.Items.First().Status);
        }

    }
}

﻿using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using IceWarpLib.Objects.Rpc.Classes.Domain;
using IceWarpLib.Objects.Rpc.Classes.Property;
using IceWarpLib.Objects.Rpc.Enums;
using IceWarpLib.Rpc;
using IceWarpLib.Rpc.Exceptions;
using IceWarpLib.Rpc.Requests.Domain;
using IceWarpLib.Rpc.Requests.Session;
using NUnit.Framework;

namespace IceWarpLib.IntegrationTests
{
    [TestFixture]
    public class IntegrationTests
    {
        private string _url = ConfigurationManager.AppSettings["IceWarpUrl"];
        private string _adminEmail = ConfigurationManager.AppSettings["AdminEmail"];
        private string _adminPassword = ConfigurationManager.AppSettings["AdminPassword"];

        [TestFixtureSetUp]
        public void FixtureSetup() { }

        [SetUp]
        public void TestSetup() { }

        [TearDown]
        public void TestTearDown() { }

        [TestFixtureTearDown]
        public void FixtureTearDown() { }

        [Test]
        public void Connect()
        {
            var api = new IceWarpRpcApi();
            var authenticate = new Authenticate
            {
                AuthType = TAuthType.Plain,
                Digest = "",
                Email = _adminEmail,
                Password = _adminPassword,
                PersistentLogin = false
            };
            var authResult = api.Execute(_url, authenticate);

            Assert.NotNull(authResult);
            Assert.NotNull(authResult.HttpRequestResult);
            Assert.True(authResult.HttpRequestResult.Success);

            var sessionInfo = new GetSessionInfo
            {
                SessionId = authResult.SessionId
            };
            var sessionInfoResult = api.Execute(_url, sessionInfo);

            Assert.NotNull(sessionInfoResult);
            Assert.NotNull(sessionInfoResult.HttpRequestResult);
            Assert.True(sessionInfoResult.HttpRequestResult.Success);

            var logout = new Logout
            {
                SessionId = authResult.SessionId
            };
            var logoutResult = api.Execute(_url, logout);

            Assert.NotNull(logoutResult);
            Assert.NotNull(logoutResult.HttpRequestResult);
            Assert.True(logoutResult.HttpRequestResult.Success);
        }

        [Test]
        public void DeleteDomain()
        {
            var api = new IceWarpRpcApi();
            var authenticate = new Authenticate
            {
                AuthType = TAuthType.Plain,
                Digest = "",
                Email = _adminEmail,
                Password = _adminPassword,
                PersistentLogin = false
            };
            var authResult = api.Execute(_url, authenticate);

            Assert.NotNull(authResult);
            Assert.NotNull(authResult.HttpRequestResult);
            Assert.True(authResult.HttpRequestResult.Success);

            var domainToDelete = "deletedomain.com";
            var deleteDomainAdminEmail = "test@testing.com";

            //Check domain does not exist
            var getDomainProperties = new GetDomainProperties
            {
                SessionId = authResult.SessionId,
                DomainStr = domainToDelete,
                DomainPropertyList = new TDomainPropertyList
                {
                    Items = new List<TAPIProperty>
                    {

                        new TAPIProperty {PropName = "D_AdminEmail"}
                    }
                }
            };
            var exception = Assert.Throws<IceWarpErrorException>(() => api.Execute(_url, getDomainProperties));
            Assert.AreEqual("domain_invalid", exception.IceWarpError);

            //Create domain
            var createDomain = new CreateDomain
            {
                SessionId = authResult.SessionId,
                DomainStr = domainToDelete,
                DomainProperties = new TPropertyValueList
                {
                    Items = new List<TPropertyValue>
                    {
                        new TPropertyValue
                        {
                            APIProperty = new TAPIProperty{ PropName = "D_AdminEmail"},
                            PropertyVal = new TPropertyString{ Val = deleteDomainAdminEmail},
                            PropertyRight = TPermission.ReadWrite
                        }
                    }
                }
            };
            var createDomainResult = api.Execute(_url, createDomain);
            Assert.True(createDomainResult.Success);

            //Check can get properties for new domain
            var getDomainPropertiesResult = api.Execute(_url, getDomainProperties);
            Assert.AreEqual(1, getDomainPropertiesResult.Items.Count);
            Assert.AreEqual("tpropertystring", getDomainPropertiesResult.Items.First().PropertyVal.ClassName);
            Assert.AreEqual(deleteDomainAdminEmail, ((TPropertyString)getDomainPropertiesResult.Items.First().PropertyVal).Val);

            //Delete domain
            var deleteDomain = new DeleteDomain
            {
                SessionId = authResult.SessionId,
                DomainStr = domainToDelete
            };
            var deleteDomainResult = api.Execute(_url, deleteDomain);
            Assert.True(deleteDomainResult.Success);

            //Check domain does not exist
            exception = Assert.Throws<IceWarpErrorException>(() => api.Execute(_url, getDomainProperties));
            Assert.AreEqual("domain_invalid", exception.IceWarpError);

            //Logout
            var logout = new Logout
            {
                SessionId = authResult.SessionId
            };
            var logoutResult = api.Execute(_url, logout);

            Assert.NotNull(logoutResult);
            Assert.NotNull(logoutResult.HttpRequestResult);
            Assert.True(logoutResult.HttpRequestResult.Success);
        }
    }
}

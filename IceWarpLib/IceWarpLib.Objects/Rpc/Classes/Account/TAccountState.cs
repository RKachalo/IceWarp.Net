﻿using System.Xml;
using IceWarpLib.Objects.Helpers;
using IceWarpLib.Objects.Rpc.Classes.Property;
using IceWarpLib.Objects.Rpc.Enums;

namespace IceWarpLib.Objects.Rpc.Classes.Account
{
    /// <summary>
    /// State of IceWarp account
    /// </summary>
    public class TAccountState : TPropertyVal
    {
        /// <summary>
        /// State value
        /// </summary>
        public TUserState State { get; set; }
        
        public TAccountState()
        {
        }

        /// <summary>
        /// Creates new instance from an XML node. See <see cref="XmlNode"/> for more information.
        /// </summary>
        /// <param name="node">The Xml node. See <see cref="XmlNode"/> for more information.</param>
        public TAccountState(XmlNode node)
        {
            if (node != null)
            {
                State = (TUserState)Extensions.GetNodeInnerTextAsInt(node.GetSingleNode("State"));
            }
        }

        public override XmlElement BuildXmlElement(XmlDocument doc, string name)
        {
            XmlElement element = XmlHelper.CreateElement(doc, name);

            XmlHelper.AppendTextElement(element, "ClassName", ClassName);
            XmlHelper.AppendTextElement(element, "State", State);

            return element;
        }
    }
}
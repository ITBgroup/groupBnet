using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;

namespace Backstage.admin
{
    public class Hash
    {
        static public string SHA512(string strPlain)
        {
            SHA512Managed sha512 = new SHA512Managed();
            string strHash = string.Empty;
            byte[] btHash = sha512.ComputeHash(UnicodeEncoding.Unicode.GetBytes(strPlain));
            for (int i = 0; i < btHash.Length; i++)
            {
                strHash = strHash + Convert.ToString(btHash[i], 16);
            }
            return strHash;
        }
    }
}
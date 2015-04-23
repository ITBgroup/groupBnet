﻿//------------------------------------------------------------------------------
// <auto-generated>
//    此代码是根据模板生成的。
//
//    手动更改此文件可能会导致应用程序中发生异常行为。
//    如果重新生成代码，则将覆盖对此文件的手动更改。
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Collections.Generic;

public partial class admin
{
    public int id { get; set; }
    public string account { get; set; }
    public string password { get; set; }
    public string name { get; set; }
}

public partial class article
{
    public int id { get; set; }
    public string title { get; set; }
    public string text { get; set; }
    public int viewnum { get; set; }
    public System.TimeSpan addtime { get; set; }
    public string author { get; set; }
    public int @class { get; set; }

    public virtual articleclass articleclass { get; set; }
}

public partial class articleclass
{
    public articleclass()
    {
        this.article = new HashSet<article>();
    }

    public int id { get; set; }
    public string name { get; set; }
    public int @class { get; set; }

    public virtual ICollection<article> article { get; set; }
}

public partial class sysdiagrams
{
    public string name { get; set; }
    public int principal_id { get; set; }
    public int diagram_id { get; set; }
    public Nullable<int> version { get; set; }
    public byte[] definition { get; set; }
}

public partial class video1
{
    public int id { get; set; }
    public string title { get; set; }
    public string url { get; set; }
    public string author { get; set; }
    public System.TimeSpan addtime { get; set; }
    public int @class { get; set; }
    public int viewnum { get; set; }

    public virtual videoclass1 videoclass1 { get; set; }
}

public partial class videoclass1
{
    public videoclass1()
    {
        this.video1 = new HashSet<video1>();
    }

    public int id { get; set; }
    public string name { get; set; }
    public int @class { get; set; }

    public virtual ICollection<video1> video1 { get; set; }
}

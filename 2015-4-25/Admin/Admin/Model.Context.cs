﻿//------------------------------------------------------------------------------
// <auto-generated>
//    此代码是根据模板生成的。
//
//    手动更改此文件可能会导致应用程序中发生异常行为。
//    如果重新生成代码，则将覆盖对此文件的手动更改。
// </auto-generated>
//------------------------------------------------------------------------------

namespace Admin
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class hackerEntities : DbContext
    {
        public hackerEntities()
            : base("name=hackerEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<admin> admin { get; set; }
        public DbSet<article> article { get; set; }
        public DbSet<articleclass> articleclass { get; set; }
        public DbSet<sysdiagrams> sysdiagrams { get; set; }
        public DbSet<video> video { get; set; }
        public DbSet<videoclass> videoclass { get; set; }
    }
}

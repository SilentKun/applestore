namespace AppleStore.WebUI.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class InitialCreate1 : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.AspNetUsers", "Name", c => c.String());
            DropColumn("dbo.AspNetUsers", "Year");
        }
        
        public override void Down()
        {
            AddColumn("dbo.AspNetUsers", "Year", c => c.Int(nullable: false));
            DropColumn("dbo.AspNetUsers", "Name");
        }
    }
}

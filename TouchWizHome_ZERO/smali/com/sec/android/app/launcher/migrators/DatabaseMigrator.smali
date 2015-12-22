.class public interface abstract Lcom/sec/android/app/launcher/migrators/DatabaseMigrator;
.super Ljava/lang/Object;
.source "DatabaseMigrator.java"


# virtual methods
.method public abstract getDatabaseName()Ljava/lang/String;
.end method

.method public abstract getVersionFrom()I
.end method

.method public abstract getVersionTo()I
.end method

.method public abstract migrate(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/sec/android/app/launcher/migrators/TableCreator;)V
.end method

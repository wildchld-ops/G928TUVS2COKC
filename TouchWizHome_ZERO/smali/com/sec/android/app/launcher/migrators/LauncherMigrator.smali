.class public abstract Lcom/sec/android/app/launcher/migrators/LauncherMigrator;
.super Ljava/lang/Object;
.source "LauncherMigrator.java"


# instance fields
.field protected mRequiredPageCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/launcher/migrators/LauncherMigrator;->mRequiredPageCount:I

    return-void
.end method


# virtual methods
.method public abstract getRequiredPageCount()I
.end method

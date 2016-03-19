.class public Lcom/ime/framework/dbmanager/DbDownloadInfo;
.super Ljava/lang/Object;
.source "DbDownloadInfo.java"


# instance fields
.field public bAvailable:Z

.field public dbId:Ljava/lang/String;

.field public fileName:Ljava/lang/String;

.field public percent:I

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/ime/framework/dbmanager/DbDownloadInfo;->fileName:Ljava/lang/String;

    iput-object p1, p0, Lcom/ime/framework/dbmanager/DbDownloadInfo;->dbId:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/ime/framework/dbmanager/DbDownloadInfo;->percent:I

    return-void
.end method

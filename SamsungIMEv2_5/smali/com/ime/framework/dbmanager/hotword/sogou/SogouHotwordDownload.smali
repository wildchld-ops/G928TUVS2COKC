.class public Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload;
.super Ljava/lang/Object;
.source "SogouHotwordDownload.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload$DownloadThread;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SogouHotwordDownload"


# instance fields
.field private mDownloadThread:Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload$DownloadThread;

.field private mFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload;->mFileName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload;->mFileName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public download(Ljava/lang/String;Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;)V
    .locals 1

    new-instance v0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload$DownloadThread;

    invoke-direct {v0, p0, p1, p2}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload$DownloadThread;-><init>(Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload;Ljava/lang/String;Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;)V

    iput-object v0, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload;->mDownloadThread:Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload$DownloadThread;

    iget-object v0, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload;->mDownloadThread:Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload$DownloadThread;

    invoke-virtual {v0}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload$DownloadThread;->startDownload()V

    return-void
.end method

.method public stopDownload()V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload;->mDownloadThread:Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload$DownloadThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload;->mDownloadThread:Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload$DownloadThread;

    invoke-virtual {v0}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload$DownloadThread;->isDownloading()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload;->mDownloadThread:Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload$DownloadThread;

    invoke-virtual {v0}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload$DownloadThread;->stopDownload()V

    :cond_0
    return-void
.end method

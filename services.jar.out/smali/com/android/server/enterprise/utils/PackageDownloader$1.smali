.class Lcom/android/server/enterprise/utils/PackageDownloader$1;
.super Landroid/content/BroadcastReceiver;
.source "PackageDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/utils/PackageDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/utils/PackageDownloader;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/utils/PackageDownloader;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/utils/PackageDownloader$1;->this$0:Lcom/android/server/enterprise/utils/PackageDownloader;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/enterprise/utils/PackageDownloader$1;->this$0:Lcom/android/server/enterprise/utils/PackageDownloader;

    # getter for: Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/server/enterprise/utils/PackageDownloader;->access$000(Lcom/android/server/enterprise/utils/PackageDownloader;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/enterprise/utils/PackageDownloader$1;->this$0:Lcom/android/server/enterprise/utils/PackageDownloader;

    # invokes: Lcom/android/server/enterprise/utils/PackageDownloader;->handleNetworkState()V
    invoke-static {v3}, Lcom/android/server/enterprise/utils/PackageDownloader;->access$100(Lcom/android/server/enterprise/utils/PackageDownloader;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v3, "edm.intent.action.sec.CHECK_REENROLLMENT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "pkg"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v3, "url"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/server/enterprise/utils/PackageDownloader$1;->this$0:Lcom/android/server/enterprise/utils/PackageDownloader;

    # invokes: Lcom/android/server/enterprise/utils/PackageDownloader;->handleDownloadProcess(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v1, v2}, Lcom/android/server/enterprise/utils/PackageDownloader;->access$200(Lcom/android/server/enterprise/utils/PackageDownloader;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v3, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/enterprise/utils/PackageDownloader$1;->this$0:Lcom/android/server/enterprise/utils/PackageDownloader;

    # invokes: Lcom/android/server/enterprise/utils/PackageDownloader;->handleDownloadComplete()V
    invoke-static {v3}, Lcom/android/server/enterprise/utils/PackageDownloader;->access$300(Lcom/android/server/enterprise/utils/PackageDownloader;)V

    goto :goto_0
.end method

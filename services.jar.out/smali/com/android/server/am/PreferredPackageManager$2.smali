.class Lcom/android/server/am/PreferredPackageManager$2;
.super Ljava/lang/Object;
.source "PreferredPackageManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/PreferredPackageManager;->triggerScannerPackageByBGCountChecked(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/PreferredPackageManager;

.field final synthetic val$resumedPkgName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/am/PreferredPackageManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/PreferredPackageManager$2;->this$0:Lcom/android/server/am/PreferredPackageManager;

    iput-object p2, p0, Lcom/android/server/am/PreferredPackageManager$2;->val$resumedPkgName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v2, p0, Lcom/android/server/am/PreferredPackageManager$2;->this$0:Lcom/android/server/am/PreferredPackageManager;

    # getter for: Lcom/android/server/am/PreferredPackageManager;->mLowMemState:Z
    invoke-static {v2}, Lcom/android/server/am/PreferredPackageManager;->access$300(Lcom/android/server/am/PreferredPackageManager;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/android/server/am/PreferredPackageManager;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "PreferredPackage"

    const-string v3, "Not enough bg procs. Don\'t start preferred procs"

    invoke-static {v2, v3}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/server/am/PreferredPackageManager$2;->this$0:Lcom/android/server/am/PreferredPackageManager;

    # getter for: Lcom/android/server/am/PreferredPackageManager;->mScanning:Z
    invoke-static {v2}, Lcom/android/server/am/PreferredPackageManager;->access$400(Lcom/android/server/am/PreferredPackageManager;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-boolean v2, Lcom/android/server/am/PreferredPackageManager;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "PreferredPackage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "now PPM is blocked. mScanning="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/PreferredPackageManager$2;->this$0:Lcom/android/server/am/PreferredPackageManager;

    # getter for: Lcom/android/server/am/PreferredPackageManager;->mScanning:Z
    invoke-static {v4}, Lcom/android/server/am/PreferredPackageManager;->access$400(Lcom/android/server/am/PreferredPackageManager;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v2, p0, Lcom/android/server/am/PreferredPackageManager$2;->this$0:Lcom/android/server/am/PreferredPackageManager;

    # getter for: Lcom/android/server/am/PreferredPackageManager;->mHandler:Lcom/android/server/am/PreferredPackageManager$PreferredPackageHandler;
    invoke-static {v2}, Lcom/android/server/am/PreferredPackageManager;->access$500(Lcom/android/server/am/PreferredPackageManager;)Lcom/android/server/am/PreferredPackageManager$PreferredPackageHandler;

    move-result-object v2

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, p0, v4, v5}, Lcom/android/server/am/PreferredPackageManager$PreferredPackageHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/server/am/PreferredPackageManager$2;->this$0:Lcom/android/server/am/PreferredPackageManager;

    # getter for: Lcom/android/server/am/PreferredPackageManager;->mHandler:Lcom/android/server/am/PreferredPackageManager$PreferredPackageHandler;
    invoke-static {v2}, Lcom/android/server/am/PreferredPackageManager;->access$500(Lcom/android/server/am/PreferredPackageManager;)Lcom/android/server/am/PreferredPackageManager$PreferredPackageHandler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "name"

    iget-object v3, p0, Lcom/android/server/am/PreferredPackageManager$2;->val$resumedPkgName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/server/am/PreferredPackageManager$2;->this$0:Lcom/android/server/am/PreferredPackageManager;

    # getter for: Lcom/android/server/am/PreferredPackageManager;->mHandler:Lcom/android/server/am/PreferredPackageManager$PreferredPackageHandler;
    invoke-static {v2}, Lcom/android/server/am/PreferredPackageManager;->access$500(Lcom/android/server/am/PreferredPackageManager;)Lcom/android/server/am/PreferredPackageManager$PreferredPackageHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/am/PreferredPackageManager$PreferredPackageHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

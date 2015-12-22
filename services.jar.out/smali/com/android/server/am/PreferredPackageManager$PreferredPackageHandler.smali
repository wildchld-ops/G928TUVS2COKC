.class final Lcom/android/server/am/PreferredPackageManager$PreferredPackageHandler;
.super Landroid/os/Handler;
.source "PreferredPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/PreferredPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PreferredPackageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/PreferredPackageManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/PreferredPackageManager;Landroid/os/Looper;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageHandler;->this$0:Lcom/android/server/am/PreferredPackageManager;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    sget-boolean v0, Lcom/android/server/am/PreferredPackageManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "PreferredPackage"

    const-string/jumbo v1, "receiving unknown message !!"

    invoke-static {v0, v1}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageHandler;->this$0:Lcom/android/server/am/PreferredPackageManager;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "name"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "reason"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/server/am/PreferredPackageManager;->handleActivityResumeFinished(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/am/PreferredPackageManager;->access$000(Lcom/android/server/am/PreferredPackageManager;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageHandler;->this$0:Lcom/android/server/am/PreferredPackageManager;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "name"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "lastPauseTime"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    # invokes: Lcom/android/server/am/PreferredPackageManager;->handleActivityPaused(Ljava/lang/String;J)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/am/PreferredPackageManager;->access$100(Lcom/android/server/am/PreferredPackageManager;Ljava/lang/String;J)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageHandler;->this$0:Lcom/android/server/am/PreferredPackageManager;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "name"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/am/PreferredPackageManager;->handleStartTopPreferredPackages(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/am/PreferredPackageManager;->access$200(Lcom/android/server/am/PreferredPackageManager;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

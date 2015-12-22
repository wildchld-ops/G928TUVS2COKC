.class Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$5;
.super Ljava/lang/Object;
.source "MultiPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->updateMultiWindowTrayBar(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;

.field final synthetic val$forceShow:Z


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$5;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;

    iput-boolean p2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$5;->val$forceShow:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$5;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->isDeviceProvisioned()Z
    invoke-static {v4}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->access$400(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;)Z

    move-result v4

    if-eqz v4, :cond_0

    :try_start_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$5;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowUIIntent:Landroid/content/Intent;
    invoke-static {v4}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->access$300(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$5;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mEnableMultiWindowUISetting:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->access$000(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;)I

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "MultiPhoneWindowManager"

    const-string v5, "updateMultiWindowTrayBar() -> stopService : com.sec.android.app.FlashBarService.MultiWindowTrayService"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$5;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;

    iget-object v4, v4, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$5;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;

    iget-object v4, v4, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "multi_window_not_force_show"

    const/4 v5, 0x0

    const/4 v6, -0x2

    invoke-static {v2, v4, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-lez v1, :cond_2

    const-string v4, "com.sec.android.multiwindow.ui.forceshow"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "multi_window_not_force_show"

    const/4 v5, 0x0

    const/4 v6, -0x2

    invoke-static {v2, v4, v5, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :goto_1
    const-string v4, "MultiPhoneWindowManager"

    const-string v5, "updateMultiWindowTrayBar() -> startService : com.sec.android.app.FlashBarService.MultiWindowTrayService"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$5;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;

    iget-object v4, v4, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v4, "com.sec.android.multiwindow.ui.forceshow"

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$5;->val$forceShow:Z

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

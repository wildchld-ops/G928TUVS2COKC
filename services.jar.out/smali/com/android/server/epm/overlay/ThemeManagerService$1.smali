.class Lcom/android/server/epm/overlay/ThemeManagerService$1;
.super Landroid/database/ContentObserver;
.source "ThemeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/epm/overlay/ThemeManagerService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/epm/overlay/ThemeManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/epm/overlay/ThemeManagerService;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/epm/overlay/ThemeManagerService$1;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5

    const/4 v0, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/epm/overlay/ThemeManagerService$1;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$300(Lcom/android/server/epm/overlay/ThemeManagerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "easy_mode_switch"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_1

    :goto_0
    if-nez v0, :cond_2

    iget-object v3, p0, Lcom/android/server/epm/overlay/ThemeManagerService$1;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    iget-object v4, p0, Lcom/android/server/epm/overlay/ThemeManagerService$1;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mActiveMasterPackage:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$500(Lcom/android/server/epm/overlay/ThemeManagerService;)Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/android/server/epm/overlay/ThemeManagerService;->savePreviousPackage:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$402(Lcom/android/server/epm/overlay/ThemeManagerService;Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/epm/overlay/ThemeManagerService$1;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mActiveMasterPackage:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$500(Lcom/android/server/epm/overlay/ThemeManagerService;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/epm/overlay/ThemeManagerService$1;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$600(Lcom/android/server/epm/overlay/ThemeManagerService;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.android.action.EASY_MODE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "isTrial"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService$1;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$300(Lcom/android/server/epm/overlay/ThemeManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    :goto_1
    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$700()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EASY_MODE -- onCHange - bBasicMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", savePreviousPackage = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/epm/overlay/ThemeManagerService$1;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->savePreviousPackage:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$400(Lcom/android/server/epm/overlay/ThemeManagerService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/server/epm/overlay/ThemeManagerService$1;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->savePreviousPackage:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$400(Lcom/android/server/epm/overlay/ThemeManagerService;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/epm/overlay/ThemeManagerService$1;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$600(Lcom/android/server/epm/overlay/ThemeManagerService;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.android.action.EASY_MODE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "packageName"

    iget-object v4, p0, Lcom/android/server/epm/overlay/ThemeManagerService$1;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->savePreviousPackage:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$400(Lcom/android/server/epm/overlay/ThemeManagerService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "isTrial"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService$1;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$300(Lcom/android/server/epm/overlay/ThemeManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1
.end method

.class Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$1;
.super Ljava/lang/Object;
.source "StatusBarKeyguardViewManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 7

    sget-boolean v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v4, :cond_0

    # getter for: Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "StatusBarKeyguardManager.ServiceConnection.onServiceConnected() : IScreenLockService onServiceConnected"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p2}, Lcom/nttdocomo/android/screenlockservice/IScreenLockService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/nttdocomo/android/screenlockservice/IScreenLockService;

    move-result-object v3

    if-eqz v3, :cond_2

    :try_start_0
    invoke-interface {v3}, Lcom/nttdocomo/android/screenlockservice/IScreenLockService;->getUnreadCount()I

    move-result v0

    sget-boolean v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v4, :cond_1

    # getter for: Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StatusBarKeyguardManager.ServiceConnection.onServiceConnected(): spmode cnt="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v4, "jp.co.nttdocomo.carriermail.APP_LINK_RECEIVED_MESSAGE_LOCAL"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "spcnt"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    # getter for: Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->access$100(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.nttdocomo.android.screenlockservice.DCM_SCREEN"

    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    :try_start_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    # getter for: Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->access$100(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    # getter for: Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mServiceConnection:Landroid/content/ServiceConnection;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->access$200(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)Landroid/content/ServiceConnection;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v1

    # getter for: Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "StatusBarKeyguardManager.ServiceConnection.onServiceConnected(): can\'t get unread count"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v1

    # getter for: Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StatusBarKeyguardManager.ServiceConnection.onServiceConnected(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

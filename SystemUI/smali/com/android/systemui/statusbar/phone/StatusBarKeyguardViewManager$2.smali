.class Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$2;
.super Landroid/content/BroadcastReceiver;
.source "StatusBarKeyguardViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->registerMascotReceiver()V
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

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$2;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.nttdocomo.android.mascot.KEYGUARD_UPDATE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-boolean v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v2, :cond_0

    # getter for: Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "StatusBarKeyguardManager.BroadcastReceiver.onReceive(): message receive com.nttdocomo.android.mascot.KEYGUARD_UPDATE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$2;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    const-string v2, "RemoteViews"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews;

    # setter for: Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mRemoteViews:Landroid/widget/RemoteViews;
    invoke-static {v3, v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->access$302(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$2;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    # getter for: Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mRemoteViews:Landroid/widget/RemoteViews;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->access$300(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)Landroid/widget/RemoteViews;

    move-result-object v2

    if-nez v2, :cond_2

    # getter for: Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "StatusBarKeyguardManager.BroadcastReceiver.onReceive(): mascot is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$2;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    # getter for: Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->access$400(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$2;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    # getter for: Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->access$400(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$2;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    # getter for: Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mRemoteViews:Landroid/widget/RemoteViews;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->access$300(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)Landroid/widget/RemoteViews;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setMascotRemoteViews(Landroid/widget/RemoteViews;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    # getter for: Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "StatusBarKeyguardManager.BroadcastReceiver.onReceive(): mascot is exist"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v2, "jp.co.nttdocomo.carriermail.APP_LINK_RECEIVED_MESSAGE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "com.android.internal.policy.impl.CARRIERMAIL_COUNT_UPDATE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_4
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v2, :cond_5

    # getter for: Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "StatusBarKeyguardManager.BroadcastReceiver.onReceive(): message receive bindService IScreenLockService"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/nttdocomo/android/screenlockservice/IScreenLockService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.nttdocomo.android.screenlockservice"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$2;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    # getter for: Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->access$100(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$2;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    # getter for: Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mServiceConnection:Landroid/content/ServiceConnection;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->access$200(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)Landroid/content/ServiceConnection;

    move-result-object v3

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-nez v2, :cond_6

    # getter for: Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "StatusBarKeyguardManager.BroadcastReceiver.onReceive(): can\'t connect IScreenLockService"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const-string v2, "com.android.internal.policy.impl.CARRIERMAIL_COUNT_UPDATE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$2;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    # getter for: Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->access$400(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$2;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    # getter for: Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->access$400(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$2;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    # getter for: Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mRemoteViews:Landroid/widget/RemoteViews;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->access$300(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)Landroid/widget/RemoteViews;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setMascotRemoteViews(Landroid/widget/RemoteViews;)V

    goto :goto_1

    :cond_7
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v2, :cond_8

    # getter for: Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "StatusBarKeyguardManager.BroadcastReceiver.onReceive(): message android.intent.action.BOOT_COMPLETED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$2;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    # setter for: Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mIsBootCompleted:Z
    invoke-static {v2, v4}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->access$502(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Z)Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$2;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    # getter for: Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->access$400(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->makeStatusBarViewLater()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$2;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    # getter for: Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mIsWaitingForBootComplete:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->access$600(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$2;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    # getter for: Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->access$400(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$2;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    # getter for: Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->access$400(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$2;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    # getter for: Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mRemoteViews:Landroid/widget/RemoteViews;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->access$300(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)Landroid/widget/RemoteViews;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setMascotRemoteViews(Landroid/widget/RemoteViews;)V

    :cond_9
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$2;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    const/4 v3, 0x0

    # setter for: Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mIsWaitingForBootComplete:Z
    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->access$602(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Z)Z

    goto/16 :goto_1
.end method

.class Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "PhoneStatusBarPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v6, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v7, "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateAlarm(Z)V
    invoke-static {v7, v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->access$000(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v7, "android.intent.action.SYNC_STATE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateSyncState(Landroid/content/Intent;)V
    invoke-static {v6, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->access$100(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string v7, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    # setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->isBootCompleted:Z
    invoke-static {v6, v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->access$202(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Z)Z

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateVolumeZen()V
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->access$300(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    goto :goto_0

    :cond_3
    const-string v7, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_4
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateBluetooth()V
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->access$400(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    goto :goto_0

    :cond_5
    const-string v7, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string v7, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_6
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateVolumeZen()V
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->access$300(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    goto :goto_0

    :cond_7
    const-string v7, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateSimState(Landroid/content/Intent;)V
    invoke-static {v6, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->access$500(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/content/Intent;)V

    goto :goto_0

    :cond_8
    const-string v7, "android.telecom.action.CURRENT_TTY_MODE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateTTY(Landroid/content/Intent;)V
    invoke-static {v6, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->access$600(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/content/Intent;)V

    goto :goto_0

    :cond_9
    const-string v7, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateAlarm(Z)V
    invoke-static {v7, v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->access$000(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Z)V

    goto :goto_0

    :cond_a
    const-string v7, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    const-string v7, "state"

    invoke-virtual {p2, v7, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    if-eqz v2, :cond_b

    :goto_1
    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateToddler(Z)V
    invoke-static {v7, v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->access$800(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Z)V

    goto/16 :goto_0

    :cond_b
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mToddlerModeObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$ToddlerModeObserver;
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->access$700(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$ToddlerModeObserver;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$ToddlerModeObserver;->isActivated()Z

    move-result v6

    goto :goto_1

    :cond_c
    const-string v7, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    const-string v6, "com.sec.android.app.clockpackage"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateAlarm(Z)V
    invoke-static {v6, v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->access$000(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Z)V

    goto/16 :goto_0

    :cond_d
    const-string v7, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateVolumeZen()V
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->access$300(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    goto/16 :goto_0

    :cond_e
    const-string v7, "com.android.systemui.action.dnd_off"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->access$900(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "zen_mode"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_f
    const-string v6, "com.samsung.intent.action.DND"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v3, 0x0

    const-string v6, "enterprise_policy"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getEnterpriseSharedDevicePolicy()Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;

    move-result-object v6

    if-eqz v6, :cond_10

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getEnterpriseSharedDevicePolicy()Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;->isSharedDeviceEnabled()Z

    move-result v3

    const-string v6, "PhoneStatusBarPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SharedDevice: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    if-eqz v3, :cond_0

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateVolumeZen()V
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->access$300(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    goto/16 :goto_0
.end method

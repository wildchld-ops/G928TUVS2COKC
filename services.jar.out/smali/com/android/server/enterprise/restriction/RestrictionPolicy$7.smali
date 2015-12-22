.class Lcom/android/server/enterprise/restriction/RestrictionPolicy$7;
.super Landroid/content/BroadcastReceiver;
.source "RestrictionPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/restriction/RestrictionPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$7;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v6, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$7;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    # invokes: Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateUSBMode()V
    invoke-static {v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->access$400(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v5, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$7;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    # getter for: Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->access$500(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$7;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    # getter for: Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static {v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->access$600(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v6

    const/4 v7, 0x5

    invoke-virtual {v1, v5, v6, v7}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    :cond_0
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$7;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    # invokes: Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceStatusBarExpansion()V
    invoke-static {v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->access$300(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v3

    const-string v5, "RestrictionPolicy"

    const-string/jumbo v6, "updateUsbMode failed"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v6, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :try_start_1
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$7;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    # invokes: Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateUSBMode()V
    invoke-static {v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->access$400(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    const-string v5, "RestrictionPolicy"

    const-string/jumbo v6, "updateUsbMode failed"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-string v6, "edm.intent.action.internal.sec.DEFAULT_NETWORK_POLICY_APPLIED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$7;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isBackgroundDataEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v6

    if-nez v6, :cond_4

    :try_start_2
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$7;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-virtual {v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->applyBackgroundDataRestriction()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v3

    const-string v5, "RestrictionPolicy"

    const-string v6, "Network Policy update failed"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const-string v6, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "android.intent.extra.user_handle"

    invoke-virtual {p2, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string v6, "RestrictionPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Intent.ACTION_USER_SWITCHED occurred!! action:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " userId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "screenCaptureEnabled"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$7;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    # invokes: Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenCaptureEnabled(IZ)Z
    invoke-static {v8, v4, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->access$700(Lcom/android/server/enterprise/restriction/RestrictionPolicy;IZ)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v5, 0x1

    :cond_5
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "/data/system/enterprise.conf"

    invoke-static {v6, v5, v7}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1

    :cond_6
    const-string v6, "android.intent.action.USER_ADDED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "android.intent.extra.user_handle"

    invoke-virtual {p2, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$7;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    # invokes: Lcom/android/server/enterprise/restriction/RestrictionPolicy;->onUserAdded(I)V
    invoke-static {v5, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->access$800(Lcom/android/server/enterprise/restriction/RestrictionPolicy;I)V

    goto/16 :goto_1

    :cond_7
    const-string v6, "android.intent.action.USER_REMOVED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "android.intent.extra.user_handle"

    invoke-virtual {p2, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$7;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    # invokes: Lcom/android/server/enterprise/restriction/RestrictionPolicy;->onUserRemoved(I)V
    invoke-static {v5, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->access$900(Lcom/android/server/enterprise/restriction/RestrictionPolicy;I)V

    goto/16 :goto_1
.end method

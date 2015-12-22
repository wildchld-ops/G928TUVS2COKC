.class final Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity$AppSwitchKeyBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SpamCallReportDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AppSwitchKeyBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;


# direct methods
.method private constructor <init>(Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity$AppSwitchKeyBroadcastReceiver;->this$0:Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity$AppSwitchKeyBroadcastReceiver;-><init>(Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    # getter for: Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive, action: %s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "reason"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    # getter for: Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "recentapps"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    # getter for: Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "activity switch"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity$AppSwitchKeyBroadcastReceiver;->this$0:Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;

    invoke-virtual {v0}, Lcom/android/server/telecom/operator/chn/SpamCallReportDialogActivity;->finish()V

    :cond_0
    return-void
.end method

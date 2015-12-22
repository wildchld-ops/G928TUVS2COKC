.class Lcom/android/settings/fmm/FindMyMobileSettings$10;
.super Ljava/lang/Object;
.source "FindMyMobileSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fmm/FindMyMobileSettings;->showNotificationChargeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fmm/FindMyMobileSettings;

.field final synthetic val$chkbox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/settings/fmm/FindMyMobileSettings;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fmm/FindMyMobileSettings$10;->this$0:Lcom/android/settings/fmm/FindMyMobileSettings;

    iput-object p2, p0, Lcom/android/settings/fmm/FindMyMobileSettings$10;->val$chkbox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/settings/fmm/FindMyMobileSettings$10;->this$0:Lcom/android/settings/fmm/FindMyMobileSettings;

    invoke-virtual {v1}, Lcom/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/fmm/FindMyMobileSettings$10;->this$0:Lcom/android/settings/fmm/FindMyMobileSettings;

    invoke-virtual {v1, v4}, Lcom/android/settings/fmm/FindMyMobileSettings;->SetRemoteControlsFlag(I)I

    move-result v1

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Lcom/android/settings/fmm/FindMyMobileSettings$10;->this$0:Lcom/android/settings/fmm/FindMyMobileSettings;

    # invokes: Lcom/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/settings/fmm/FindMyMobileSettings;->access$1100(Lcom/android/settings/fmm/FindMyMobileSettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "remote_control"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.remotecontrol_on"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "FindMyMobileSettings"

    const-string v2, " onCheckedChanged[remotecontrol_on]"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/fmm/FindMyMobileSettings$10;->this$0:Lcom/android/settings/fmm/FindMyMobileSettings;

    invoke-virtual {v1}, Lcom/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    const-string v1, "FindMyMobileSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCheckedChanged [SetRemoteControlsFlag] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/fmm/FindMyMobileSettings$10;->this$0:Lcom/android/settings/fmm/FindMyMobileSettings;

    invoke-virtual {v3, v4}, Lcom/android/settings/fmm/FindMyMobileSettings;->SetRemoteControlsFlag(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v1, p0, Lcom/android/settings/fmm/FindMyMobileSettings$10;->val$chkbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    sput-boolean v4, Lcom/android/settings/fmm/FindMyMobileSettings;->chkboxFlag:Z

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/settings/fmm/FindMyMobileSettings$10;->this$0:Lcom/android/settings/fmm/FindMyMobileSettings;

    # invokes: Lcom/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/settings/fmm/FindMyMobileSettings;->access$1200(Lcom/android/settings/fmm/FindMyMobileSettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "remote_control"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.class Lcom/android/settings/fmm/RemoteControls$4;
.super Ljava/lang/Object;
.source "RemoteControls.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fmm/RemoteControls;->showNotificationChargeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fmm/RemoteControls;

.field final synthetic val$chkbox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/settings/fmm/RemoteControls;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fmm/RemoteControls$4;->this$0:Lcom/android/settings/fmm/RemoteControls;

    iput-object p2, p0, Lcom/android/settings/fmm/RemoteControls$4;->val$chkbox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const/4 v5, 0x1

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_LMM"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :try_start_0
    const-string v2, "terrier"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/fmm/RemoteControls$4;->this$0:Lcom/android/settings/fmm/RemoteControls;

    # invokes: Lcom/android/settings/fmm/RemoteControls;->setServiceFlagOn()I
    invoke-static {v2}, Lcom/android/settings/fmm/RemoteControls;->access$1000(Lcom/android/settings/fmm/RemoteControls;)I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/fmm/RemoteControls$4;->this$0:Lcom/android/settings/fmm/RemoteControls;

    # invokes: Lcom/android/settings/fmm/RemoteControls;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/settings/fmm/RemoteControls;->access$1100(Lcom/android/settings/fmm/RemoteControls;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "remote_control"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.remotecontrol_on"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "RemoteControls"

    const-string v3, " showNotificationChargeDialog[remotecontrol_on]"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/fmm/RemoteControls$4;->this$0:Lcom/android/settings/fmm/RemoteControls;

    invoke-virtual {v2}, Lcom/android/settings/fmm/RemoteControls;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    const-string v2, "RemoteControls"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showNotificationChargeDialog[ServiceFlag] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/fmm/RemoteControls$4;->this$0:Lcom/android/settings/fmm/RemoteControls;

    # invokes: Lcom/android/settings/fmm/RemoteControls;->getServiceFlag()I
    invoke-static {v4}, Lcom/android/settings/fmm/RemoteControls;->access$700(Lcom/android/settings/fmm/RemoteControls;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v2, p0, Lcom/android/settings/fmm/RemoteControls$4;->val$chkbox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    sput-boolean v5, Lcom/android/settings/fmm/RemoteControls;->chkboxFlag:Z

    :cond_1
    return-void

    :catch_0
    move-exception v1

    const-string v2, "RemoteControls"

    const-string v3, "WARNING: Could not load /system/lib/libterrier.so"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/settings/fmm/RemoteControls$4;->this$0:Lcom/android/settings/fmm/RemoteControls;

    # invokes: Lcom/android/settings/fmm/RemoteControls;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/settings/fmm/RemoteControls;->access$1200(Lcom/android/settings/fmm/RemoteControls;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "remote_control"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

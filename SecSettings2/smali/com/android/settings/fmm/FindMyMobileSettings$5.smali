.class Lcom/android/settings/fmm/FindMyMobileSettings$5;
.super Ljava/lang/Object;
.source "FindMyMobileSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fmm/FindMyMobileSettings;->showReactivationLockDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fmm/FindMyMobileSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/fmm/FindMyMobileSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fmm/FindMyMobileSettings$5;->this$0:Lcom/android/settings/fmm/FindMyMobileSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/settings/fmm/FindMyMobileSettings$5;->this$0:Lcom/android/settings/fmm/FindMyMobileSettings;

    invoke-virtual {v1}, Lcom/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_my_mobile"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/settings/fmm/FindMyMobileSettings$5;->this$0:Lcom/android/settings/fmm/FindMyMobileSettings;

    invoke-virtual {v1, v4}, Lcom/android/settings/fmm/FindMyMobileSettings;->SetReactivationFlag(I)I

    move-result v1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/android/settings/fmm/FindMyMobileSettings$5;->this$0:Lcom/android/settings/fmm/FindMyMobileSettings;

    # invokes: Lcom/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/settings/fmm/FindMyMobileSettings;->access$500(Lcom/android/settings/fmm/FindMyMobileSettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_my_mobile"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.reactivationlock_off"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "FindMyMobileSettings"

    const-string v2, " onActivityResult[reactivationlock_off]"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/fmm/FindMyMobileSettings$5;->this$0:Lcom/android/settings/fmm/FindMyMobileSettings;

    invoke-virtual {v1}, Lcom/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/settings/fmm/FindMyMobileSettings$5;->this$0:Lcom/android/settings/fmm/FindMyMobileSettings;

    invoke-virtual {v1, v3}, Lcom/android/settings/fmm/FindMyMobileSettings;->SetReactivationFlag(I)I

    move-result v1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/android/settings/fmm/FindMyMobileSettings$5;->this$0:Lcom/android/settings/fmm/FindMyMobileSettings;

    # invokes: Lcom/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/settings/fmm/FindMyMobileSettings;->access$600(Lcom/android/settings/fmm/FindMyMobileSettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_my_mobile"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.reactivationlock_on"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "FindMyMobileSettings"

    const-string v2, " onActivityResult[reactivationlock_on]"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/fmm/FindMyMobileSettings$5;->this$0:Lcom/android/settings/fmm/FindMyMobileSettings;

    invoke-virtual {v1}, Lcom/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

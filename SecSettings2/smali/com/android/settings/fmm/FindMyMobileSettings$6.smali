.class Lcom/android/settings/fmm/FindMyMobileSettings$6;
.super Ljava/lang/Object;
.source "FindMyMobileSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fmm/FindMyMobileSettings;->showReactivationLockDisableDialog()V
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

    iput-object p1, p0, Lcom/android/settings/fmm/FindMyMobileSettings$6;->this$0:Lcom/android/settings/fmm/FindMyMobileSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/fmm/FindMyMobileSettings$6;->this$0:Lcom/android/settings/fmm/FindMyMobileSettings;

    invoke-virtual {v0}, Lcom/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_my_mobile"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/settings/fmm/FindMyMobileSettings$6;->this$0:Lcom/android/settings/fmm/FindMyMobileSettings;

    # getter for: Lcom/android/settings/fmm/FindMyMobileSettings;->mReactivationLock:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lcom/android/settings/fmm/FindMyMobileSettings;->access$300(Lcom/android/settings/fmm/FindMyMobileSettings;)Landroid/preference/SwitchPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fmm/FindMyMobileSettings$6;->this$0:Lcom/android/settings/fmm/FindMyMobileSettings;

    # getter for: Lcom/android/settings/fmm/FindMyMobileSettings;->mReactivationLock:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lcom/android/settings/fmm/FindMyMobileSettings;->access$300(Lcom/android/settings/fmm/FindMyMobileSettings;)Landroid/preference/SwitchPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0
.end method

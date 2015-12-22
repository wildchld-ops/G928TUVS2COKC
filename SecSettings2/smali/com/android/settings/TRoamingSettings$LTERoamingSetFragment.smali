.class public Lcom/android/settings/TRoamingSettings$LTERoamingSetFragment;
.super Landroid/app/DialogFragment;
.source "TRoamingSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TRoamingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LTERoamingSetFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/settings/TRoamingSettings;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/TRoamingSettings;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/settings/TRoamingSettings$LTERoamingSetFragment;

    invoke-direct {v0}, Lcom/android/settings/TRoamingSettings$LTERoamingSetFragment;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/TRoamingSettings$LTERoamingSetFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    invoke-virtual {p0}, Lcom/android/settings/TRoamingSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "DialogLTERoamingSet"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/TRoamingSettings$LTERoamingSetFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    # getter for: Lcom/android/settings/TRoamingSettings;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/settings/TRoamingSettings;->access$400()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0a1457

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a145b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :goto_0
    const v1, 0x1040013

    new-instance v2, Lcom/android/settings/TRoamingSettings$LTERoamingSetFragment$1;

    invoke-direct {v2, p0}, Lcom/android/settings/TRoamingSettings$LTERoamingSetFragment$1;-><init>(Lcom/android/settings/TRoamingSettings$LTERoamingSetFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x1040009

    new-instance v2, Lcom/android/settings/TRoamingSettings$LTERoamingSetFragment$2;

    invoke-direct {v2, p0}, Lcom/android/settings/TRoamingSettings$LTERoamingSetFragment$2;-><init>(Lcom/android/settings/TRoamingSettings$LTERoamingSetFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1

    :cond_0
    const v1, 0x7f0a142b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a142a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    invoke-virtual {p0}, Lcom/android/settings/TRoamingSettings$LTERoamingSetFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/TRoamingSettings;

    # getter for: Lcom/android/settings/TRoamingSettings;->mUseLTERoaming:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lcom/android/settings/TRoamingSettings;->access$100(Lcom/android/settings/TRoamingSettings;)Landroid/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/settings/TRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lte_roaming_mode_on"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_0

    :goto_0
    invoke-virtual {v3, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    return-void

    :cond_0
    move v1, v2

    goto :goto_0
.end method

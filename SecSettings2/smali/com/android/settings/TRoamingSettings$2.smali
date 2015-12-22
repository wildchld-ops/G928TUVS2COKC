.class Lcom/android/settings/TRoamingSettings$2;
.super Landroid/database/ContentObserver;
.source "TRoamingSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TRoamingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TRoamingSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/TRoamingSettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/TRoamingSettings$2;->this$0:Lcom/android/settings/TRoamingSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/TRoamingSettings$2;->this$0:Lcom/android/settings/TRoamingSettings;

    # getter for: Lcom/android/settings/TRoamingSettings;->mUseLTERoaming:Landroid/preference/SwitchPreference;
    invoke-static {v1}, Lcom/android/settings/TRoamingSettings;->access$100(Lcom/android/settings/TRoamingSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/TRoamingSettings$2;->this$0:Lcom/android/settings/TRoamingSettings;

    invoke-virtual {v2}, Lcom/android/settings/TRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lte_roaming_mode_on"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method

.class Lcom/android/settings/DisplaySettings$2;
.super Landroid/database/ContentObserver;
.source "DisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DisplaySettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/DisplaySettings$2;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/DisplaySettings$2;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-virtual {v3}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "display_outdoor_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/settings/DisplaySettings$2;->this$0:Lcom/android/settings/DisplaySettings;

    # getter for: Lcom/android/settings/DisplaySettings;->mOutdoorMode:Landroid/preference/SwitchPreference;
    invoke-static {v3}, Lcom/android/settings/DisplaySettings;->access$300(Lcom/android/settings/DisplaySettings;)Landroid/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/DisplaySettings$2;->this$0:Lcom/android/settings/DisplaySettings;

    # getter for: Lcom/android/settings/DisplaySettings;->mIsLowBattery:Z
    invoke-static {v3}, Lcom/android/settings/DisplaySettings;->access$200(Lcom/android/settings/DisplaySettings;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/DisplaySettings$2;->this$0:Lcom/android/settings/DisplaySettings;

    # getter for: Lcom/android/settings/DisplaySettings;->mSecBrightness:Lcom/android/settings/BrightnessSeekBarPreference;
    invoke-static {v3}, Lcom/android/settings/DisplaySettings;->access$100(Lcom/android/settings/DisplaySettings;)Lcom/android/settings/BrightnessSeekBarPreference;

    move-result-object v3

    if-nez v0, :cond_2

    :goto_1
    invoke-virtual {v3, v1}, Lcom/android/settings/BrightnessSeekBarPreference;->setEnabled(Z)V

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

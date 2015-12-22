.class Lcom/android/settings/BrightnessSeekBarPreference$4;
.super Landroid/database/ContentObserver;
.source "BrightnessSeekBarPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/BrightnessSeekBarPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/BrightnessSeekBarPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/BrightnessSeekBarPreference;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/BrightnessSeekBarPreference$4;->this$0:Lcom/android/settings/BrightnessSeekBarPreference;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/BrightnessSeekBarPreference$4;->this$0:Lcom/android/settings/BrightnessSeekBarPreference;

    iget-object v2, p0, Lcom/android/settings/BrightnessSeekBarPreference$4;->this$0:Lcom/android/settings/BrightnessSeekBarPreference;

    invoke-virtual {v2}, Lcom/android/settings/BrightnessSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "high_brightness_mode_pms_enter"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    # setter for: Lcom/android/settings/BrightnessSeekBarPreference;->mIsHBM_PMS_OnOffDB:Z
    invoke-static {v1, v0}, Lcom/android/settings/BrightnessSeekBarPreference;->access$202(Lcom/android/settings/BrightnessSeekBarPreference;Z)Z

    iget-object v0, p0, Lcom/android/settings/BrightnessSeekBarPreference$4;->this$0:Lcom/android/settings/BrightnessSeekBarPreference;

    # invokes: Lcom/android/settings/BrightnessSeekBarPreference;->setHBMIconAndText()V
    invoke-static {v0}, Lcom/android/settings/BrightnessSeekBarPreference;->access$300(Lcom/android/settings/BrightnessSeekBarPreference;)V

    return-void
.end method

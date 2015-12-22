.class Lcom/android/settings/accessibility/AccessibilitySettingsHearing$3;
.super Landroid/database/ContentObserver;
.source "AccessibilitySettingsHearing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/AccessibilitySettingsHearing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/AccessibilitySettingsHearing;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/AccessibilitySettingsHearing;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$3;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$3;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsHearing;

    # invokes: Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->access$200(Lcom/android/settings/accessibility/AccessibilitySettingsHearing;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "all_sound_off"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$3;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsHearing;

    # getter for: Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mAllSoundOffCheckbox:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->access$300(Lcom/android/settings/accessibility/AccessibilitySettingsHearing;)Landroid/preference/SwitchPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$3;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsHearing;

    # getter for: Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mAllSoundOffCheckbox:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->access$300(Lcom/android/settings/accessibility/AccessibilitySettingsHearing;)Landroid/preference/SwitchPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0
.end method

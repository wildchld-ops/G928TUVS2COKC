.class Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment$6;
.super Ljava/lang/Object;
.source "HomeSettingsPreferenceFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->enableWeatherEffect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment$6;->this$0:Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment$6;->this$0:Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;

    # getter for: Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mWeatherEffectMode:Landroid/preference/SwitchPreference;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->access$700(Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setWeatherEffectMode(Z)V

    :goto_0
    return v2

    :cond_0
    invoke-virtual {v0, v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setWeatherEffectMode(Z)V

    goto :goto_0
.end method

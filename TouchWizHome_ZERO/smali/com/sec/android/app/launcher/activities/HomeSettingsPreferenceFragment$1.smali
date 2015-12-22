.class Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment$1;
.super Ljava/lang/Object;
.source "HomeSettingsPreferenceFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->setTextureScaleRatio()V
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

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment$1;->this$0:Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v4, 0x5

    if-lt v1, v4, :cond_0

    const/16 v4, 0x64

    if-gt v1, v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment$1;->this$0:Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;

    # getter for: Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mTextureScaleRatio:Landroid/preference/EditTextPreference;
    invoke-static {v4}, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->access$000(Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;)Landroid/preference/EditTextPreference;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment$1;->this$0:Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;

    const/4 v5, 0x1

    # setter for: Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mActivityShouldRestart:Z
    invoke-static {v4, v5}, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->access$102(Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;Z)Z

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment$1;->this$0:Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;

    const/4 v5, 0x0

    # setter for: Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mDoAlert:Z
    invoke-static {v4, v5}, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->access$202(Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;Z)Z

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setTextureScaleRatio(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0

    :catch_0
    move-exception v0

    move v2, v3

    goto :goto_0
.end method

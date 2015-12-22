.class Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment$2;
.super Ljava/lang/Object;
.source "HomeSettingsPreferenceFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->setGesturePrediction()V
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

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment$2;->this$0:Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    const/4 v2, 0x0

    :try_start_0
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment$2;->this$0:Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;

    # getter for: Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mGesturePrediction:Landroid/preference/EditTextPreference;
    invoke-static {v3}, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->access$300(Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;)Landroid/preference/EditTextPreference;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment$2;->this$0:Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;

    const/4 v4, 0x0

    # setter for: Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mDoAlert:Z
    invoke-static {v3, v4}, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->access$202(Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;Z)Z

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setGesturePredictionAmount(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.class Lcom/android/settings/notification/ZenModeSettings$13;
.super Ljava/lang/Object;
.source "ZenModeSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenModeSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenModeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModeSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/ZenModeSettings$13;->this$0:Lcom/android/settings/notification/ZenModeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeSettings$13;->this$0:Lcom/android/settings/notification/ZenModeSettings;

    # getter for: Lcom/android/settings/notification/ZenModeSettings;->mSoundMode:Landroid/preference/ListPreference;
    invoke-static {v2}, Lcom/android/settings/notification/ZenModeSettings;->access$800(Lcom/android/settings/notification/ZenModeSettings;)Landroid/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_0

    :goto_0
    return v6

    :cond_0
    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeSettings$13;->this$0:Lcom/android/settings/notification/ZenModeSettings;

    invoke-virtual {v2, v4}, Lcom/android/settings/notification/ZenModeSettings;->putZenModeSetting(I)V

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeSettings$13;->this$0:Lcom/android/settings/notification/ZenModeSettings;

    invoke-virtual {v2, v4}, Lcom/android/settings/notification/ZenModeSettings;->showConditionSelection(I)V

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeSettings$13;->this$0:Lcom/android/settings/notification/ZenModeSettings;

    # getter for: Lcom/android/settings/notification/ZenModeSettings;->mSoundMode:Landroid/preference/ListPreference;
    invoke-static {v2}, Lcom/android/settings/notification/ZenModeSettings;->access$800(Lcom/android/settings/notification/ZenModeSettings;)Landroid/preference/ListPreference;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeSettings$13;->this$0:Lcom/android/settings/notification/ZenModeSettings;

    # getter for: Lcom/android/settings/notification/ZenModeSettings;->mSoundMode:Landroid/preference/ListPreference;
    invoke-static {v2}, Lcom/android/settings/notification/ZenModeSettings;->access$800(Lcom/android/settings/notification/ZenModeSettings;)Landroid/preference/ListPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeSettings$13;->this$0:Lcom/android/settings/notification/ZenModeSettings;

    # getter for: Lcom/android/settings/notification/ZenModeSettings;->mSoundMode:Landroid/preference/ListPreference;
    invoke-static {v3}, Lcom/android/settings/notification/ZenModeSettings;->access$800(Lcom/android/settings/notification/ZenModeSettings;)Landroid/preference/ListPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "Mute"

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeSettings$13;->this$0:Lcom/android/settings/notification/ZenModeSettings;

    # getter for: Lcom/android/settings/notification/ZenModeSettings;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/android/settings/notification/ZenModeSettings;->access$900(Lcom/android/settings/notification/ZenModeSettings;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeSettings$13;->this$0:Lcom/android/settings/notification/ZenModeSettings;

    # invokes: Lcom/android/settings/notification/ZenModeSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/settings/notification/ZenModeSettings;->access$1000(Lcom/android/settings/notification/ZenModeSettings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "zen_mode"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeSettings$13;->this$0:Lcom/android/settings/notification/ZenModeSettings;

    invoke-virtual {v2, v5}, Lcom/android/settings/notification/ZenModeSettings;->putZenModeSetting(I)V

    goto :goto_1

    :pswitch_1
    const-string v0, "Vibrate"

    goto :goto_0

    :pswitch_2
    const-string v0, "Sound"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

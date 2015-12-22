.class Lcom/android/settings/notification/SettingPref$1;
.super Ljava/lang/Object;
.source "SettingPref.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/SettingPref;->init(Lcom/android/settings/SettingsPreferenceFragment;)Landroid/preference/Preference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/SettingPref;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/SettingPref;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/SettingPref$1;->this$0:Lcom/android/settings/notification/SettingPref;

    iput-object p2, p0, Lcom/android/settings/notification/SettingPref$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8

    const/4 v7, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v0, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v7, :cond_a

    # getter for: Lcom/android/settings/notification/SettingPref;->SOUNDEFFECT:[Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/notification/SettingPref;->access$000()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/settings/notification/SettingPref$1;->this$0:Lcom/android/settings/notification/SettingPref;

    # getter for: Lcom/android/settings/notification/SettingPref;->mEnabledHeadset:I
    invoke-static {v5}, Lcom/android/settings/notification/SettingPref;->access$100(Lcom/android/settings/notification/SettingPref;)I

    move-result v5

    if-eq v5, v4, :cond_4

    iget-object v5, p0, Lcom/android/settings/notification/SettingPref$1;->this$0:Lcom/android/settings/notification/SettingPref;

    # getter for: Lcom/android/settings/notification/SettingPref;->mEnabledBT:I
    invoke-static {v5}, Lcom/android/settings/notification/SettingPref;->access$200(Lcom/android/settings/notification/SettingPref;)I

    move-result v5

    if-eq v5, v4, :cond_4

    const-string v5, "2"

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    move v4, v3

    :cond_0
    :goto_1
    return v4

    :cond_1
    # getter for: Lcom/android/settings/notification/SettingPref;->SOUNDEFFECT:[Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/notification/SettingPref;->access$000()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/settings/notification/SettingPref$1;->this$0:Lcom/android/settings/notification/SettingPref;

    iget-object v6, p0, Lcom/android/settings/notification/SettingPref$1;->val$context:Landroid/content/Context;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_2

    move v3, v4

    :cond_2
    invoke-virtual {v5, v6, v3}, Lcom/android/settings/notification/SettingPref;->setSetting(Landroid/content/Context;I)Z

    goto :goto_1

    :cond_3
    move v4, v3

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lcom/android/settings/notification/SettingPref$1;->this$0:Lcom/android/settings/notification/SettingPref;

    # getter for: Lcom/android/settings/notification/SettingPref;->mEnabledBT:I
    invoke-static {v5}, Lcom/android/settings/notification/SettingPref;->access$200(Lcom/android/settings/notification/SettingPref;)I

    move-result v5

    if-ne v5, v4, :cond_7

    # getter for: Lcom/android/settings/notification/SettingPref;->SOUNDEFFECT:[Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/notification/SettingPref;->access$000()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v4

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/settings/notification/SettingPref$1;->val$context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "bluetooth_a2dp_uhqa_support"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v5, p0, Lcom/android/settings/notification/SettingPref$1;->val$context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "bluetooth_a2dp_uhqa_mode"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v4, :cond_6

    if-ne v2, v4, :cond_6

    iget-object v5, p0, Lcom/android/settings/notification/SettingPref$1;->this$0:Lcom/android/settings/notification/SettingPref;

    iget-object v6, p0, Lcom/android/settings/notification/SettingPref$1;->val$context:Landroid/content/Context;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_5

    move v3, v4

    :cond_5
    invoke-virtual {v5, v6, v3}, Lcom/android/settings/notification/SettingPref;->setSetting(Landroid/content/Context;I)Z

    goto :goto_1

    :cond_6
    move v4, v3

    goto :goto_1

    :cond_7
    iget-object v5, p0, Lcom/android/settings/notification/SettingPref$1;->this$0:Lcom/android/settings/notification/SettingPref;

    iget-object v6, p0, Lcom/android/settings/notification/SettingPref$1;->val$context:Landroid/content/Context;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_8

    move v3, v4

    :cond_8
    invoke-virtual {v5, v6, v3}, Lcom/android/settings/notification/SettingPref;->setSetting(Landroid/content/Context;I)Z

    goto :goto_1

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_a
    if-ne v0, v7, :cond_0

    iget-object v5, p0, Lcom/android/settings/notification/SettingPref$1;->this$0:Lcom/android/settings/notification/SettingPref;

    iget-object v6, p0, Lcom/android/settings/notification/SettingPref$1;->val$context:Landroid/content/Context;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_b

    move v3, v4

    :cond_b
    invoke-virtual {v5, v6, v3}, Lcom/android/settings/notification/SettingPref;->setSetting(Landroid/content/Context;I)Z

    goto/16 :goto_1
.end method

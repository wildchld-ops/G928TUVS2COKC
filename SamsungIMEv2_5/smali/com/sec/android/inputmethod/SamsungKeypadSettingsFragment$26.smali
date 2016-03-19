.class Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$26;
.super Ljava/lang/Object;
.source "SamsungKeypadSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$26;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$26;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    iget-object v6, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$26;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v6}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$000(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Lcom/ime/framework/common/InputManager;

    move-result-object v6

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getRepository()Lcom/ime/framework/repository/Repository;

    move-result-object v6

    iput-object v6, v5, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mRepository:Lcom/ime/framework/repository/Repository;

    instance-of v5, p1, Landroid/preference/SwitchPreference;

    if-eqz v5, :cond_6

    move-object v4, p1

    check-cast v4, Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v4, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    if-eqz v2, :cond_1

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mChangeUseTraceByChangeListener:Z
    invoke-static {}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$400()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$26;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v5}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$000(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Lcom/ime/framework/common/InputManager;

    move-result-object v5

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v5, "SETTINGS_DEFAULT_KEYPAD_FLICK_UMLAUT"

    invoke-interface {v0, v5, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v5, "settings_keyboard_swipe_none"

    invoke-interface {v0, v5, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v5, "SETTINGS_DEFAULT_TRACE"

    invoke-interface {v0, v5, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v5, "SETTINGS_DEFAULT_KEYPAD_POINTING"

    invoke-interface {v0, v5, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v5, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$26;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    iget-object v5, v5, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v6, "SETTINGS_DEFAULT_KEYPAD_FLICK_UMLAUT"

    invoke-interface {v5, v6, v7}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    iget-object v5, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$26;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    iget-object v5, v5, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v6, "SETTINGS_DEFAULT_TRACE"

    invoke-interface {v5, v6, v8}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    iget-object v5, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$26;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    iget-object v5, v5, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v6, "SETTINGS_DEFAULT_KEYPAD_POINTING"

    invoke-interface {v5, v6, v7}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    const-string v5, "settings_keyboard_swipe"

    const-string v6, "settings_keyboard_swipe_continuous_input"

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    # setter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mChangeUseTraceByChangeListener:Z
    invoke-static {v7}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$402(Z)Z

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v5, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$26;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsSwiftKeySDK:Z
    invoke-static {v5}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$500(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$26;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->misTablet:Z
    invoke-static {v5}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$300(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$26;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    iget-object v5, v5, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mListener:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$OnDetailMenuSelected;

    invoke-interface {v5, p1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$OnDetailMenuSelected;->onDetailMenuSeleted(Landroid/preference/Preference;)V

    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$26;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    # invokes: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->setSummaryForPredictiveText(Z)V
    invoke-static {v5, v2}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$800(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;Z)V

    :cond_2
    :goto_1
    return v8

    :cond_3
    sget-object v5, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    const-class v6, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$26;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsChnMode:Z
    invoke-static {v5}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$600(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$26;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mXt9Version:I
    invoke-static {v5}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$700(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)I

    move-result v5

    if-eqz v5, :cond_5

    sget-object v5, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    const-class v6, Lcom/ime/implement/setting/ConnectSetting;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    :cond_5
    sget-object v5, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    const-class v6, Lcom/ime/implement/setting/Xt9AdvancedSettings;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    :cond_6
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v5, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$26;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsSwiftKeySDK:Z
    invoke-static {v5}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$500(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$26;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->misTablet:Z
    invoke-static {v5}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$300(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$26;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    iget-object v5, v5, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mListener:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$OnDetailMenuSelected;

    invoke-interface {v5, p1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$OnDetailMenuSelected;->onDetailMenuSeleted(Landroid/preference/Preference;)V

    goto :goto_1

    :cond_7
    sget-object v5, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    const-class v6, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$26;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    invoke-virtual {v5, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_8
    iget-object v5, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$26;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsChnMode:Z
    invoke-static {v5}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$600(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$26;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mXt9Version:I
    invoke-static {v5}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$700(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)I

    move-result v5

    if-eqz v5, :cond_9

    sget-object v5, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    const-class v6, Lcom/ime/implement/setting/ConnectSetting;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    :goto_2
    iget-object v5, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$26;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    invoke-virtual {v5, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_9
    sget-object v5, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    const-class v6, Lcom/ime/implement/setting/Xt9AdvancedSettings;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_2
.end method

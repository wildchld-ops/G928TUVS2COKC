.class Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$28;
.super Ljava/lang/Object;
.source "SamsungKeypadSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


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

    iput-object p1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$28;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 11

    const/4 v8, 0x1

    const/4 v3, 0x0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iget-object v9, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$28;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v9}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$000(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Lcom/ime/framework/common/InputManager;

    move-result-object v9

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    # setter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mChangeUseTraceByChangeListener:Z
    invoke-static {v3}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$402(Z)Z

    const-string v9, "SETTINGS_DEFAULT_TRACE"

    invoke-interface {v6, v9, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v9, "SETTINGS_DEFAULT_KEYPAD_FLICK_UMLAUT"

    invoke-interface {v2, v9, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v9, "settings_keyboard_swipe_none"

    invoke-interface {v2, v9, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v9, "SETTINGS_DEFAULT_TRACE"

    invoke-interface {v2, v9, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v9, "SETTINGS_DEFAULT_KEYPAD_POINTING"

    invoke-interface {v2, v9, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v9, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$28;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    iget-object v9, v9, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v10, "SETTINGS_DEFAULT_KEYPAD_FLICK_UMLAUT"

    invoke-interface {v9, v10, v3}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    iget-object v9, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$28;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    iget-object v9, v9, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v10, "SETTINGS_DEFAULT_TRACE"

    invoke-interface {v9, v10, v3}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    iget-object v9, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$28;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    iget-object v9, v9, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v10, "SETTINGS_DEFAULT_KEYPAD_POINTING"

    invoke-interface {v9, v10, v3}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    const-string v9, "settings_keyboard_swipe"

    const-string v10, "settings_keyboard_swipe_none"

    invoke-interface {v2, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    # setter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mChangeUseTraceByChangeListener:Z
    invoke-static {v8}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$402(Z)Z

    :cond_0
    iget-object v9, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$28;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    const-string v10, "SETTINGS_DEFAULT_AUTO_SPACING"

    invoke-virtual {v9, v10}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v7}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_1
    iget-object v9, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$28;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    const-string v10, "SETTINGS_DEFAULT_AUTO_CORRECTION"

    invoke-virtual {v9, v10}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_2
    iget-object v9, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$28;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    const-string v10, "SETTINGS_AUTOTEXT_PHRASE"

    invoke-virtual {v9, v10}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_3
    const-string v9, "VZW"

    iget-object v10, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$28;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    iget-object v10, v10, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->salesCode:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    instance-of v9, p1, Landroid/preference/SwitchPreference;

    if-eqz v9, :cond_5

    move-object v0, p1

    check-cast v0, Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v9

    if-nez v9, :cond_4

    move v3, v8

    :cond_4
    const-string v9, "first_swiftkey_execution"

    invoke-interface {v6, v9, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v3, :cond_5

    if-eqz v4, :cond_5

    iget-object v9, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$28;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    # invokes: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->showSwiftKeyGuideDialog()V
    invoke-static {v9}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$900(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    :cond_5
    iget-object v9, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$28;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    # invokes: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->setSummaryForPredictiveText(Z)V
    invoke-static {v9, v7}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$800(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;Z)V

    return v8
.end method

.class Lcom/touchtype/personalizer/PersonalizerSettingsFragment$12;
.super Ljava/lang/Object;
.source "PersonalizerSettingsFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/touchtype/personalizer/PersonalizerSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragment;


# direct methods
.method constructor <init>(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$12;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$12;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

    # getter for: Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mSPref:Landroid/content/SharedPreferences;
    invoke-static {v3}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->access$100(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "SETTINGS_DEFAULT_PREDICTION_ON"

    invoke-interface {v1, v3, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$12;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

    const-string v4, "SETTINGS_USE_STANDARD_DATA"

    invoke-virtual {v3, v4}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    invoke-static {}, Lcom/ime/framework/repository/KeyboardStatus;->isSetupWizardRunning()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v0, v6}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :goto_0
    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$12;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

    # getter for: Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->access$200(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;)Lcom/ime/framework/common/InputManager;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$12;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

    # getter for: Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->access$200(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;)Lcom/ime/framework/common/InputManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isSurveyModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p2, :cond_6

    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$12;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

    # getter for: Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->access$200(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;)Lcom/ime/framework/common/InputManager;

    move-result-object v3

    const-string v4, "S016"

    const-string v5, "on"

    invoke-interface {v3, v4, v5}, Lcom/ime/framework/common/InputManager;->insertLogByThread(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$12;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

    const-string v4, "SETTINGS_DEFAULT_USE_LIVE_LANGUAGE"

    invoke-virtual {v3, v4}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$12;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

    # getter for: Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->access$200(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;)Lcom/ime/framework/common/InputManager;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$12;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

    # getter for: Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->access$200(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;)Lcom/ime/framework/common/InputManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isSurveyModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p2, :cond_7

    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$12;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

    # getter for: Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->access$200(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;)Lcom/ime/framework/common/InputManager;

    move-result-object v3

    const-string v4, "S014"

    const-string v5, "on"

    invoke-interface {v3, v4, v5}, Lcom/ime/framework/common/InputManager;->insertLogByThread(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_2
    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$12;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

    const-string v4, "SETTINGS_DEFAULT_USE_EMOJI_SUGGESTIONS"

    invoke-virtual {v3, v4}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$12;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

    # getter for: Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->access$200(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;)Lcom/ime/framework/common/InputManager;

    move-result-object v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$12;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

    # getter for: Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->access$200(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;)Lcom/ime/framework/common/InputManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isEmojiLMLoaded()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :goto_3
    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$12;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

    # getter for: Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->access$200(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;)Lcom/ime/framework/common/InputManager;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$12;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

    # getter for: Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->access$200(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;)Lcom/ime/framework/common/InputManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isSurveyModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz p2, :cond_9

    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$12;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

    # getter for: Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->access$200(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;)Lcom/ime/framework/common/InputManager;

    move-result-object v3

    const-string v4, "S015"

    const-string v5, "on"

    invoke-interface {v3, v4, v5}, Lcom/ime/framework/common/InputManager;->insertLogByThread(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_4
    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$12;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

    # getter for: Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mSPref:Landroid/content/SharedPreferences;
    invoke-static {v3}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->access$100(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "SETTINGS_DEFAULT_TRACE"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v3, "SETTINGS_DEFAULT_KEYPAD_FLICK_UMLAUT"

    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v3, "SETTINGS_DEFAULT_KEYPAD_POINTING"

    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v3, "SETTINGS_DEFAULT_TRACE"

    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v3, "settings_keyboard_swipe_none"

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_3
    if-eqz p2, :cond_a

    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$12;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

    # getter for: Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->actionBarSwitchTitle:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->access$1100(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;)Landroid/widget/TextView;

    move-result-object v3

    const v4, 0x7f0d0029

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    :goto_5
    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$12;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

    # getter for: Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->access$200(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;)Lcom/ime/framework/common/InputManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isSurveyModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz p2, :cond_b

    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$12;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

    # getter for: Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->access$200(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;)Lcom/ime/framework/common/InputManager;

    move-result-object v3

    const-string v4, "S002"

    const-string v5, "on"

    invoke-interface {v3, v4, v5}, Lcom/ime/framework/common/InputManager;->insertLogByThread(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_6
    return-void

    :cond_5
    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_6
    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$12;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

    # getter for: Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->access$200(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;)Lcom/ime/framework/common/InputManager;

    move-result-object v3

    const-string v4, "S016"

    const-string v5, "off"

    invoke-interface {v3, v4, v5}, Lcom/ime/framework/common/InputManager;->insertLogByThread(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$12;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

    # getter for: Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->access$200(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;)Lcom/ime/framework/common/InputManager;

    move-result-object v3

    const-string v4, "S014"

    const-string v5, "off"

    invoke-interface {v3, v4, v5}, Lcom/ime/framework/common/InputManager;->insertLogByThread(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_8
    invoke-virtual {v0, v6}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto/16 :goto_3

    :cond_9
    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$12;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

    # getter for: Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->access$200(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;)Lcom/ime/framework/common/InputManager;

    move-result-object v3

    const-string v4, "S015"

    const-string v5, "off"

    invoke-interface {v3, v4, v5}, Lcom/ime/framework/common/InputManager;->insertLogByThread(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_a
    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$12;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

    # getter for: Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->actionBarSwitchTitle:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->access$1100(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;)Landroid/widget/TextView;

    move-result-object v3

    const v4, 0x7f0d002a

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_5

    :cond_b
    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$12;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

    # getter for: Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->access$200(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;)Lcom/ime/framework/common/InputManager;

    move-result-object v3

    const-string v4, "S002"

    const-string v5, "off"

    invoke-interface {v3, v4, v5}, Lcom/ime/framework/common/InputManager;->insertLogByThread(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method

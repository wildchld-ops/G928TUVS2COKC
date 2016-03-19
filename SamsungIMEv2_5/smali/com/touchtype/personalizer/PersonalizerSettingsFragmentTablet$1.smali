.class Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet$1;
.super Ljava/lang/Object;
.source "PersonalizerSettingsFragmentTablet.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;


# direct methods
.method constructor <init>(Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;)V
    .locals 0

    iput-object p1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet$1;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 12

    const/4 v8, 0x1

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet$1;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;

    # getter for: Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mSPref:Landroid/content/SharedPreferences;
    invoke-static {v10}, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->access$100(Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;)Landroid/content/SharedPreferences;

    move-result-object v10

    const-string v11, "allow_app_permission"

    invoke-interface {v10, v11, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iget-object v10, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet$1;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;

    # getter for: Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mSPref:Landroid/content/SharedPreferences;
    invoke-static {v10}, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->access$100(Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;)Landroid/content/SharedPreferences;

    move-result-object v10

    const-string v11, "transfer_data_in_background"

    invoke-interface {v10, v11, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iget-object v10, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet$1;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;

    # getter for: Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mSPref:Landroid/content/SharedPreferences;
    invoke-static {v10}, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->access$100(Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;)Landroid/content/SharedPreferences;

    move-result-object v10

    const-string v11, "transfer_data_in_background_checkbox"

    invoke-interface {v10, v11, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iget-object v10, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet$1;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;

    # getter for: Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mSPref:Landroid/content/SharedPreferences;
    invoke-static {v10}, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->access$100(Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;)Landroid/content/SharedPreferences;

    move-result-object v10

    const-string v11, "first_transfer_data_in_background_execution"

    invoke-interface {v10, v11, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    move-object v0, p1

    check-cast v0, Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v10

    if-nez v10, :cond_2

    move v2, v8

    :goto_0
    instance-of v10, p1, Landroid/preference/SwitchPreference;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet$1;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;

    # getter for: Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v10}, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->access$200(Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;)Lcom/ime/framework/common/InputManager;

    move-result-object v10

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v10

    if-eqz v10, :cond_3

    if-eqz v2, :cond_3

    if-nez v4, :cond_3

    if-nez v5, :cond_0

    if-eqz v7, :cond_0

    if-nez v6, :cond_3

    :cond_0
    iget-object v9, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet$1;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;

    # invokes: Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->showTransferDataInBackgroundDialog(Landroid/preference/Preference;)V
    invoke-static {v9, p1}, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->access$300(Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;Landroid/preference/Preference;)V

    :cond_1
    :goto_1
    return v8

    :cond_2
    move v2, v9

    goto :goto_0

    :cond_3
    iget-object v10, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet$1;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;

    # getter for: Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mSPref:Landroid/content/SharedPreferences;
    invoke-static {v10}, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->access$100(Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;)Landroid/content/SharedPreferences;

    move-result-object v10

    const-string v11, "first_live_language_execution"

    invoke-interface {v10, v11, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    iget-object v10, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet$1;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;

    # getter for: Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mSPref:Landroid/content/SharedPreferences;
    invoke-static {v10}, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->access$100(Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;)Landroid/content/SharedPreferences;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_4

    const-string v10, "first_live_language_execution"

    invoke-interface {v1, v10, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    :cond_4
    const-string v9, "first_live_language_execution"

    invoke-interface {v1, v9, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1
.end method

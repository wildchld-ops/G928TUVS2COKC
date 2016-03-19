.class Lcom/touchtype/personalizer/PersonalizerSettingsFragment$4;
.super Ljava/lang/Object;
.source "PersonalizerSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->showTransferDataInBackgroundDialog(Landroid/preference/Preference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

.field final synthetic val$chkbox:Landroid/widget/CheckBox;

.field final synthetic val$editor:Landroid/content/SharedPreferences$Editor;

.field final synthetic val$preference:Landroid/preference/Preference;


# direct methods
.method constructor <init>(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;Landroid/preference/Preference;Landroid/content/SharedPreferences$Editor;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$4;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

    iput-object p2, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$4;->val$preference:Landroid/preference/Preference;

    iput-object p3, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$4;->val$editor:Landroid/content/SharedPreferences$Editor;

    iput-object p4, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$4;->val$chkbox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$4;->val$preference:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    iget-object v4, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$4;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

    # getter for: Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mSPref:Landroid/content/SharedPreferences;
    invoke-static {v4}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->access$100(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "first_live_language_execution"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$4;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

    # getter for: Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mSPref:Landroid/content/SharedPreferences;
    invoke-static {v4}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->access$100(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "first_live_language_execution"

    invoke-interface {v1, v4, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$4;->val$editor:Landroid/content/SharedPreferences$Editor;

    const-string v5, "first_transfer_data_in_background_execution"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v4, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$4;->val$editor:Landroid/content/SharedPreferences$Editor;

    const-string v5, "transfer_data_in_background"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v4, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$4;->val$chkbox:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$4;->val$editor:Landroid/content/SharedPreferences$Editor;

    const-string v5, "transfer_data_in_background_checkbox"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :goto_1
    iget-object v4, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$4;->val$editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_1
    const-string v4, "first_live_language_execution"

    invoke-interface {v1, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$4;->val$editor:Landroid/content/SharedPreferences$Editor;

    const-string v5, "transfer_data_in_background_checkbox"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

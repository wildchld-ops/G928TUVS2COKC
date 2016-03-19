.class Lcom/touchtype/personalizer/PersonalizerSettingsFragment$6;
.super Ljava/lang/Object;
.source "PersonalizerSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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

    iput-object p1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$6;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

    iput-object p2, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$6;->val$preference:Landroid/preference/Preference;

    iput-object p3, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$6;->val$editor:Landroid/content/SharedPreferences$Editor;

    iput-object p4, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$6;->val$chkbox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$6;->val$preference:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$6;->val$editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "transfer_data_in_background"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$6;->val$chkbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$6;->val$editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "transfer_data_in_background_checkbox"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :goto_0
    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$6;->val$editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$6;->val$editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "transfer_data_in_background_checkbox"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

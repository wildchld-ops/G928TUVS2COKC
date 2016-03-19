.class Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet$9;
.super Ljava/lang/Object;
.source "PersonalizerSettingsFragmentTablet.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->showSwiftKeyGuideDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;

.field final synthetic val$chkbox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet$9;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;

    iput-object p2, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet$9;->val$chkbox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet$9;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;

    # getter for: Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mSPref:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->access$100(Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet$9;->val$chkbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "first_swiftkey_execution"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_0
    const-string v1, "first_swiftkey_execution"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.class Lcom/ime/implement/setting/EnhancedPredictionSettings$4;
.super Ljava/lang/Object;
.source "EnhancedPredictionSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/implement/setting/EnhancedPredictionSettings;->showCloudNetworkDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/implement/setting/EnhancedPredictionSettings;

.field final synthetic val$cb:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/ime/implement/setting/EnhancedPredictionSettings;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/EnhancedPredictionSettings$4;->this$0:Lcom/ime/implement/setting/EnhancedPredictionSettings;

    iput-object p2, p0, Lcom/ime/implement/setting/EnhancedPredictionSettings$4;->val$cb:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/ime/implement/setting/EnhancedPredictionSettings$4;->this$0:Lcom/ime/implement/setting/EnhancedPredictionSettings;

    invoke-virtual {v2}, Lcom/ime/implement/setting/EnhancedPredictionSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07004b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ime/implement/setting/EnhancedPredictionSettings$4;->this$0:Lcom/ime/implement/setting/EnhancedPredictionSettings;

    # getter for: Lcom/ime/implement/setting/EnhancedPredictionSettings;->mCloudNetworkPre:Landroid/preference/ListPreference;
    invoke-static {v2}, Lcom/ime/implement/setting/EnhancedPredictionSettings;->access$000(Lcom/ime/implement/setting/EnhancedPredictionSettings;)Landroid/preference/ListPreference;

    move-result-object v2

    aget-object v3, v1, v4

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/ime/implement/setting/EnhancedPredictionSettings$4;->val$cb:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ime/implement/setting/EnhancedPredictionSettings$4;->this$0:Lcom/ime/implement/setting/EnhancedPredictionSettings;

    # getter for: Lcom/ime/implement/setting/EnhancedPredictionSettings;->sPrefs:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/ime/implement/setting/EnhancedPredictionSettings;->access$100(Lcom/ime/implement/setting/EnhancedPredictionSettings;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "cloud_use_network_dialog"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

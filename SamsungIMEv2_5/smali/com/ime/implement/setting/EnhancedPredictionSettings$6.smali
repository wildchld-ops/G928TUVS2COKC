.class Lcom/ime/implement/setting/EnhancedPredictionSettings$6;
.super Ljava/lang/Object;
.source "EnhancedPredictionSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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

    iput-object p1, p0, Lcom/ime/implement/setting/EnhancedPredictionSettings$6;->this$0:Lcom/ime/implement/setting/EnhancedPredictionSettings;

    iput-object p2, p0, Lcom/ime/implement/setting/EnhancedPredictionSettings$6;->val$cb:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 5

    iget-object v2, p0, Lcom/ime/implement/setting/EnhancedPredictionSettings$6;->this$0:Lcom/ime/implement/setting/EnhancedPredictionSettings;

    # getter for: Lcom/ime/implement/setting/EnhancedPredictionSettings;->mPreference:Landroid/preference/Preference;
    invoke-static {v2}, Lcom/ime/implement/setting/EnhancedPredictionSettings;->access$200(Lcom/ime/implement/setting/EnhancedPredictionSettings;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "SETTINGS_DEFAULT_CLOUD_LINK"

    const-string v4, "0"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/ime/implement/setting/EnhancedPredictionSettings$6;->this$0:Lcom/ime/implement/setting/EnhancedPredictionSettings;

    # getter for: Lcom/ime/implement/setting/EnhancedPredictionSettings;->mCloudNetworkPre:Landroid/preference/ListPreference;
    invoke-static {v2}, Lcom/ime/implement/setting/EnhancedPredictionSettings;->access$000(Lcom/ime/implement/setting/EnhancedPredictionSettings;)Landroid/preference/ListPreference;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ime/implement/setting/EnhancedPredictionSettings$6;->this$0:Lcom/ime/implement/setting/EnhancedPredictionSettings;

    invoke-virtual {v2}, Lcom/ime/implement/setting/EnhancedPredictionSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07004b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ime/implement/setting/EnhancedPredictionSettings$6;->this$0:Lcom/ime/implement/setting/EnhancedPredictionSettings;

    # getter for: Lcom/ime/implement/setting/EnhancedPredictionSettings;->mCloudNetworkPre:Landroid/preference/ListPreference;
    invoke-static {v2}, Lcom/ime/implement/setting/EnhancedPredictionSettings;->access$000(Lcom/ime/implement/setting/EnhancedPredictionSettings;)Landroid/preference/ListPreference;

    move-result-object v2

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/ime/implement/setting/EnhancedPredictionSettings$6;->val$cb:Landroid/widget/CheckBox;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

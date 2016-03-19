.class Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet$2;
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

    iput-object p1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet$2;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    const/4 v3, 0x1

    instance-of v4, p1, Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-nez v4, :cond_1

    move v1, v3

    :goto_0
    iget-object v4, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet$2;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;

    # getter for: Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->mSPref:Landroid/content/SharedPreferences;
    invoke-static {v4}, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->access$100(Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "first_swiftkey_execution"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet$2;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;

    # invokes: Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->showSwiftKeyGuideDialog()V
    invoke-static {v4}, Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;->access$400(Lcom/touchtype/personalizer/PersonalizerSettingsFragmentTablet;)V

    :cond_0
    return v3

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

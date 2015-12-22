.class Lcom/android/settings/PrivacySettings$1;
.super Ljava/lang/Object;
.source "PrivacySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/PrivacySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/PrivacySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/PrivacySettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/PrivacySettings$1;->this$0:Lcom/android/settings/PrivacySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5

    iget-object v3, p0, Lcom/android/settings/PrivacySettings$1;->this$0:Lcom/android/settings/PrivacySettings;

    # getter for: Lcom/android/settings/PrivacySettings;->mSamsungBackup:Landroid/preference/Preference;
    invoke-static {v3}, Lcom/android/settings/PrivacySettings;->access$000(Lcom/android/settings/PrivacySettings;)Landroid/preference/Preference;

    move-result-object v3

    if-ne p1, v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/PrivacySettings$1;->this$0:Lcom/android/settings/PrivacySettings;

    # invokes: Lcom/android/settings/PrivacySettings;->onBackUpClicked()V
    invoke-static {v3}, Lcom/android/settings/PrivacySettings;->access$100(Lcom/android/settings/PrivacySettings;)V

    :cond_0
    :goto_0
    const/4 v3, 0x1

    return v3

    :cond_1
    iget-object v3, p0, Lcom/android/settings/PrivacySettings$1;->this$0:Lcom/android/settings/PrivacySettings;

    # getter for: Lcom/android/settings/PrivacySettings;->mSamsungRestore:Landroid/preference/Preference;
    invoke-static {v3}, Lcom/android/settings/PrivacySettings;->access$200(Lcom/android/settings/PrivacySettings;)Landroid/preference/Preference;

    move-result-object v3

    if-ne p1, v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/PrivacySettings$1;->this$0:Lcom/android/settings/PrivacySettings;

    # invokes: Lcom/android/settings/PrivacySettings;->onRestoreClicked()V
    invoke-static {v3}, Lcom/android/settings/PrivacySettings;->access$300(Lcom/android/settings/PrivacySettings;)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/settings/PrivacySettings$1;->this$0:Lcom/android/settings/PrivacySettings;

    # getter for: Lcom/android/settings/PrivacySettings;->mSamsungAutoClean:Landroid/preference/Preference;
    invoke-static {v3}, Lcom/android/settings/PrivacySettings;->access$400(Lcom/android/settings/PrivacySettings;)Landroid/preference/Preference;

    move-result-object v3

    if-ne p1, v3, :cond_3

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.android.sm.ACTION_AUTO_RESET_SETTING"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/PrivacySettings$1;->this$0:Lcom/android/settings/PrivacySettings;

    invoke-virtual {v3, v2}, Lcom/android/settings/PrivacySettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/settings/PrivacySettings$1;->this$0:Lcom/android/settings/PrivacySettings;

    # getter for: Lcom/android/settings/PrivacySettings;->mSamsungStorage:Landroid/preference/Preference;
    invoke-static {v3}, Lcom/android/settings/PrivacySettings;->access$500(Lcom/android/settings/PrivacySettings;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/PrivacySettings$1;->this$0:Lcom/android/settings/PrivacySettings;

    # invokes: Lcom/android/settings/PrivacySettings;->onStorageClicked()V
    invoke-static {v3}, Lcom/android/settings/PrivacySettings;->access$600(Lcom/android/settings/PrivacySettings;)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/settings/PrivacySettings$1;->this$0:Lcom/android/settings/PrivacySettings;

    # getter for: Lcom/android/settings/PrivacySettings;->mDiagnostics:Landroid/preference/PreferenceScreen;
    invoke-static {v3}, Lcom/android/settings/PrivacySettings;->access$700(Lcom/android/settings/PrivacySettings;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    if-ne p1, v3, :cond_0

    const-string v3, "PrivacySettings"

    const-string v4, "Collect Diagnostics Preference triggered"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v0, 0x0

    # getter for: Lcom/android/settings/PrivacySettings;->hasCorrectMyAccount:Z
    invoke-static {}, Lcom/android/settings/PrivacySettings;->access$800()Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.tmobile.pr.mytmobile"

    const-string v4, "com.tmobile.pr.mytmobile.iqtoggle.ui.OptInSummary"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/settings/PrivacySettings$1;->this$0:Lcom/android/settings/PrivacySettings;

    invoke-virtual {v3, v1}, Lcom/android/settings/PrivacySettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_5
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.carrieriq.tmobile.IQToggle"

    const-string v4, "com.carrieriq.tmobile.IQToggle.ui"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

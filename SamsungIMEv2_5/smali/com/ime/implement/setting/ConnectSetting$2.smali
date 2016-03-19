.class Lcom/ime/implement/setting/ConnectSetting$2;
.super Ljava/lang/Object;
.source "ConnectSetting.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/implement/setting/ConnectSetting;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/implement/setting/ConnectSetting;


# direct methods
.method constructor <init>(Lcom/ime/implement/setting/ConnectSetting;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/ConnectSetting$2;->this$0:Lcom/ime/implement/setting/ConnectSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4

    instance-of v3, p1, Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/ime/implement/setting/ConnectSetting$2;->this$0:Lcom/ime/implement/setting/ConnectSetting;

    invoke-virtual {v3}, Lcom/ime/implement/setting/ConnectSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    move-object v0, p1

    check-cast v0, Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    iget-object v3, p0, Lcom/ime/implement/setting/ConnectSetting$2;->this$0:Lcom/ime/implement/setting/ConnectSetting;

    # getter for: Lcom/ime/implement/setting/ConnectSetting;->mACDownloadManager:Lcom/ime/framework/acmanager/ACDownloadManager;
    invoke-static {v3}, Lcom/ime/implement/setting/ConnectSetting;->access$100(Lcom/ime/implement/setting/ConnectSetting;)Lcom/ime/framework/acmanager/ACDownloadManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/ime/framework/acmanager/ACDownloadManager;->setUseLivingLanguageFromSetting(Z)V

    :cond_0
    const/4 v3, 0x1

    return v3
.end method

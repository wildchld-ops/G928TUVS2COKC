.class Lcom/android/settings/notification/ZenModeDNDSettings$11;
.super Ljava/lang/Object;
.source "ZenModeDNDSettings.java"

# interfaces
.implements Lcom/android/settings/notification/DropDownPreference$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenModeDNDSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenModeDNDSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModeDNDSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/ZenModeDNDSettings$11;->this$0:Lcom/android/settings/notification/ZenModeDNDSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(ILjava/lang/Object;)Z
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeDNDSettings$11;->this$0:Lcom/android/settings/notification/ZenModeDNDSettings;

    # getter for: Lcom/android/settings/notification/ZenModeDNDSettings;->mDisableListeners:Z
    invoke-static {v3}, Lcom/android/settings/notification/ZenModeDNDSettings;->access$300(Lcom/android/settings/notification/ZenModeDNDSettings;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    :cond_0
    :goto_0
    return v2

    :cond_1
    instance-of v3, p2, Ljava/lang/Boolean;

    if-eqz v3, :cond_3

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_1
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeDNDSettings$11;->this$0:Lcom/android/settings/notification/ZenModeDNDSettings;

    # getter for: Lcom/android/settings/notification/ZenModeDNDSettings;->mConfig:Landroid/service/notification/ZenModeConfig;
    invoke-static {v3}, Lcom/android/settings/notification/ZenModeDNDSettings;->access$100(Lcom/android/settings/notification/ZenModeDNDSettings;)Landroid/service/notification/ZenModeConfig;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeDNDSettings$11;->this$0:Lcom/android/settings/notification/ZenModeDNDSettings;

    # getter for: Lcom/android/settings/notification/ZenModeDNDSettings;->mConfig:Landroid/service/notification/ZenModeConfig;
    invoke-static {v3}, Lcom/android/settings/notification/ZenModeDNDSettings;->access$100(Lcom/android/settings/notification/ZenModeDNDSettings;)Landroid/service/notification/ZenModeConfig;

    move-result-object v3

    iget-boolean v3, v3, Landroid/service/notification/ZenModeConfig;->sleepNone:Z

    if-eq v3, v1, :cond_0

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeDNDSettings$11;->this$0:Lcom/android/settings/notification/ZenModeDNDSettings;

    # getter for: Lcom/android/settings/notification/ZenModeDNDSettings;->mConfig:Landroid/service/notification/ZenModeConfig;
    invoke-static {v2}, Lcom/android/settings/notification/ZenModeDNDSettings;->access$100(Lcom/android/settings/notification/ZenModeDNDSettings;)Landroid/service/notification/ZenModeConfig;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    iput-boolean v1, v0, Landroid/service/notification/ZenModeConfig;->sleepNone:Z

    # getter for: Lcom/android/settings/notification/ZenModeDNDSettings;->DEBUG:Z
    invoke-static {}, Lcom/android/settings/notification/ZenModeDNDSettings;->access$400()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "ZenModeSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrefChange sleepNone="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeDNDSettings$11;->this$0:Lcom/android/settings/notification/ZenModeDNDSettings;

    # invokes: Lcom/android/settings/notification/ZenModeDNDSettings;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z
    invoke-static {v2, v0}, Lcom/android/settings/notification/ZenModeDNDSettings;->access$500(Lcom/android/settings/notification/ZenModeDNDSettings;Landroid/service/notification/ZenModeConfig;)Z

    move-result v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

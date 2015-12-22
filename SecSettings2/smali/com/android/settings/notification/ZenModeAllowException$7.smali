.class Lcom/android/settings/notification/ZenModeAllowException$7;
.super Ljava/lang/Object;
.source "ZenModeAllowException.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenModeAllowException;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenModeAllowException;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModeAllowException;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/ZenModeAllowException$7;->this$0:Lcom/android/settings/notification/ZenModeAllowException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeAllowException$7;->this$0:Lcom/android/settings/notification/ZenModeAllowException;

    # getter for: Lcom/android/settings/notification/ZenModeAllowException;->mDisableListeners:Z
    invoke-static {v3}, Lcom/android/settings/notification/ZenModeAllowException;->access$000(Lcom/android/settings/notification/ZenModeAllowException;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeAllowException$7;->this$0:Lcom/android/settings/notification/ZenModeAllowException;

    # getter for: Lcom/android/settings/notification/ZenModeAllowException;->mConfig:Landroid/service/notification/ZenModeConfig;
    invoke-static {v3}, Lcom/android/settings/notification/ZenModeAllowException;->access$100(Lcom/android/settings/notification/ZenModeAllowException;)Landroid/service/notification/ZenModeConfig;

    move-result-object v3

    iget-boolean v3, v3, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    if-eq v1, v3, :cond_0

    const-string v2, "ZenModeSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrefChange allowAlarms="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeAllowException$7;->this$0:Lcom/android/settings/notification/ZenModeAllowException;

    # getter for: Lcom/android/settings/notification/ZenModeAllowException;->mConfig:Landroid/service/notification/ZenModeConfig;
    invoke-static {v2}, Lcom/android/settings/notification/ZenModeAllowException;->access$100(Lcom/android/settings/notification/ZenModeAllowException;)Landroid/service/notification/ZenModeConfig;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    iput-boolean v1, v0, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeAllowException$7;->this$0:Lcom/android/settings/notification/ZenModeAllowException;

    # invokes: Lcom/android/settings/notification/ZenModeAllowException;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z
    invoke-static {v2, v0}, Lcom/android/settings/notification/ZenModeAllowException;->access$200(Lcom/android/settings/notification/ZenModeAllowException;Landroid/service/notification/ZenModeConfig;)Z

    move-result v2

    goto :goto_0
.end method

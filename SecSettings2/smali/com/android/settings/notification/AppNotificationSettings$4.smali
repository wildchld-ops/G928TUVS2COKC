.class Lcom/android/settings/notification/AppNotificationSettings$4;
.super Ljava/lang/Object;
.source "AppNotificationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/AppNotificationSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/AppNotificationSettings;

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/android/settings/notification/AppNotificationSettings;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/AppNotificationSettings$4;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    iput p2, p0, Lcom/android/settings/notification/AppNotificationSettings$4;->val$uid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationSettings$4;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    const/4 v2, 0x1

    # setter for: Lcom/android/settings/notification/AppNotificationSettings;->nHideContent:I
    invoke-static {v1, v2}, Lcom/android/settings/notification/AppNotificationSettings;->access$402(Lcom/android/settings/notification/AppNotificationSettings;I)I

    const-string v1, "AppNotificationSettings"

    const-string v2, "Hide content on lock screen : on"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationSettings$4;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    # getter for: Lcom/android/settings/notification/AppNotificationSettings;->mBackend:Lcom/android/settings/notification/NotificationAppList$Backend;
    invoke-static {v1}, Lcom/android/settings/notification/AppNotificationSettings;->access$300(Lcom/android/settings/notification/AppNotificationSettings;)Lcom/android/settings/notification/NotificationAppList$Backend;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings$4;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    # getter for: Lcom/android/settings/notification/AppNotificationSettings;->pkg:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/notification/AppNotificationSettings;->access$200(Lcom/android/settings/notification/AppNotificationSettings;)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/notification/AppNotificationSettings$4;->val$uid:I

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/settings/notification/NotificationAppList$Backend;->setSensitive(Ljava/lang/String;IZ)Z

    move-result v1

    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationSettings$4;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    const/4 v2, 0x0

    # setter for: Lcom/android/settings/notification/AppNotificationSettings;->nHideContent:I
    invoke-static {v1, v2}, Lcom/android/settings/notification/AppNotificationSettings;->access$402(Lcom/android/settings/notification/AppNotificationSettings;I)I

    const-string v1, "AppNotificationSettings"

    const-string v2, "Hide content on lock screen : off"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

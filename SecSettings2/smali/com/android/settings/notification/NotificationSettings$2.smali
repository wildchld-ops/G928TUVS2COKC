.class Lcom/android/settings/notification/NotificationSettings$2;
.super Ljava/lang/Object;
.source "NotificationSettings.java"

# interfaces
.implements Lcom/android/settings/notification/DropDownPreference$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/NotificationSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/NotificationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/NotificationSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/NotificationSettings$2;->this$0:Lcom/android/settings/notification/NotificationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(ILjava/lang/Object;)Z
    .locals 8

    const/4 v4, 0x0

    const/4 v3, 0x1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v5, p0, Lcom/android/settings/notification/NotificationSettings$2;->this$0:Lcom/android/settings/notification/NotificationSettings;

    # getter for: Lcom/android/settings/notification/NotificationSettings;->mLockscreenSelectedValue:I
    invoke-static {v5}, Lcom/android/settings/notification/NotificationSettings;->access$100(Lcom/android/settings/notification/NotificationSettings;)I

    move-result v5

    if-ne v2, v5, :cond_0

    :goto_0
    return v3

    :cond_0
    const v5, 0x7f0a0de0

    if-eq v2, v5, :cond_2

    move v0, v3

    :goto_1
    const v5, 0x7f0a0dde

    if-ne v2, v5, :cond_3

    move v1, v3

    :goto_2
    iget-object v5, p0, Lcom/android/settings/notification/NotificationSettings$2;->this$0:Lcom/android/settings/notification/NotificationSettings;

    # invokes: Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v5}, Lcom/android/settings/notification/NotificationSettings;->access$200(Lcom/android/settings/notification/NotificationSettings;)Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lock_screen_allow_private_notifications"

    if-eqz v1, :cond_4

    move v5, v3

    :goto_3
    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v5, p0, Lcom/android/settings/notification/NotificationSettings$2;->this$0:Lcom/android/settings/notification/NotificationSettings;

    # invokes: Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v5}, Lcom/android/settings/notification/NotificationSettings;->access$300(Lcom/android/settings/notification/NotificationSettings;)Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lock_screen_show_notifications"

    if-eqz v0, :cond_1

    move v4, v3

    :cond_1
    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v4, p0, Lcom/android/settings/notification/NotificationSettings$2;->this$0:Lcom/android/settings/notification/NotificationSettings;

    # setter for: Lcom/android/settings/notification/NotificationSettings;->mLockscreenSelectedValue:I
    invoke-static {v4, v2}, Lcom/android/settings/notification/NotificationSettings;->access$102(Lcom/android/settings/notification/NotificationSettings;I)I

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1

    :cond_3
    move v1, v4

    goto :goto_2

    :cond_4
    move v5, v4

    goto :goto_3
.end method

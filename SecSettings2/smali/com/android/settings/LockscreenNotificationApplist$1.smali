.class Lcom/android/settings/LockscreenNotificationApplist$1;
.super Ljava/lang/Object;
.source "LockscreenNotificationApplist.java"

# interfaces
.implements Lcom/android/settings/notification/DropDownPreference$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/LockscreenNotificationApplist;->updateDropdownList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/LockscreenNotificationApplist;


# direct methods
.method constructor <init>(Lcom/android/settings/LockscreenNotificationApplist;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/LockscreenNotificationApplist$1;->this$0:Lcom/android/settings/LockscreenNotificationApplist;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(ILjava/lang/Object;)Z
    .locals 14

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iget-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist$1;->this$0:Lcom/android/settings/LockscreenNotificationApplist;

    # getter for: Lcom/android/settings/LockscreenNotificationApplist;->mLockscreenSelectedValue:I
    invoke-static {v0}, Lcom/android/settings/LockscreenNotificationApplist;->access$000(Lcom/android/settings/LockscreenNotificationApplist;)I

    move-result v0

    if-ne v13, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0a0de0

    if-eq v13, v0, :cond_2

    const/4 v8, 0x1

    :goto_1
    const v0, 0x7f0a0dde

    if-ne v13, v0, :cond_3

    const/4 v11, 0x1

    :goto_2
    iget-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist$1;->this$0:Lcom/android/settings/LockscreenNotificationApplist;

    invoke-virtual {v0}, Lcom/android/settings/LockscreenNotificationApplist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_allow_private_notifications"

    if-eqz v11, :cond_4

    const/4 v0, 0x1

    :goto_3
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist$1;->this$0:Lcom/android/settings/LockscreenNotificationApplist;

    invoke-virtual {v0}, Lcom/android/settings/LockscreenNotificationApplist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_show_notifications"

    if-eqz v8, :cond_5

    const/4 v0, 0x1

    :goto_4
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist$1;->this$0:Lcom/android/settings/LockscreenNotificationApplist;

    # setter for: Lcom/android/settings/LockscreenNotificationApplist;->mLockscreenSelectedValue:I
    invoke-static {v0, v13}, Lcom/android/settings/LockscreenNotificationApplist;->access$002(Lcom/android/settings/LockscreenNotificationApplist;I)I

    iget-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist$1;->this$0:Lcom/android/settings/LockscreenNotificationApplist;

    # getter for: Lcom/android/settings/LockscreenNotificationApplist;->mAllApps:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lcom/android/settings/LockscreenNotificationApplist;->access$200(Lcom/android/settings/LockscreenNotificationApplist;)Landroid/preference/SwitchPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/LockscreenNotificationApplist$1;->this$0:Lcom/android/settings/LockscreenNotificationApplist;

    # invokes: Lcom/android/settings/LockscreenNotificationApplist;->getLockscreenNotificationsEnabled()Z
    invoke-static {v1}, Lcom/android/settings/LockscreenNotificationApplist;->access$100(Lcom/android/settings/LockscreenNotificationApplist;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    const/4 v9, 0x0

    :goto_5
    iget-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist$1;->this$0:Lcom/android/settings/LockscreenNotificationApplist;

    invoke-virtual {v0}, Lcom/android/settings/LockscreenNotificationApplist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    if-ge v9, v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist$1;->this$0:Lcom/android/settings/LockscreenNotificationApplist;

    invoke-virtual {v0}, Lcom/android/settings/LockscreenNotificationApplist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    # getter for: Lcom/android/settings/LockscreenNotificationApplist;->mAppArray:Ljava/util/Hashtable;
    invoke-static {}, Lcom/android/settings/LockscreenNotificationApplist;->access$300()Ljava/util/Hashtable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/LockscreenNotificationApplist$1;->this$0:Lcom/android/settings/LockscreenNotificationApplist;

    invoke-virtual {v1}, Lcom/android/settings/LockscreenNotificationApplist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/Preference;->getOrder()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_6

    :cond_1
    :goto_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    :cond_3
    const/4 v11, 0x0

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist$1;->this$0:Lcom/android/settings/LockscreenNotificationApplist;

    invoke-virtual {v0}, Lcom/android/settings/LockscreenNotificationApplist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/SwitchPreference;

    # getter for: Lcom/android/settings/LockscreenNotificationApplist;->mAppArray:Ljava/util/Hashtable;
    invoke-static {}, Lcom/android/settings/LockscreenNotificationApplist;->access$300()Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v10}, Landroid/preference/SwitchPreference;->getOrder()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/LockscreenNotificationApplist$AppData;

    sget-object v0, Lcom/android/settings/LockscreenNotificationApplist;->mBackend:Lcom/android/settings/LockscreenNotificationApplist$Backend;

    iget-object v1, v7, Lcom/android/settings/LockscreenNotificationApplist$AppData;->pkg:Ljava/lang/String;

    iget v2, v7, Lcom/android/settings/LockscreenNotificationApplist$AppData;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/LockscreenNotificationApplist$Backend;->getNotificationsBanned(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist$1;->this$0:Lcom/android/settings/LockscreenNotificationApplist;

    # invokes: Lcom/android/settings/LockscreenNotificationApplist;->getLockscreenNotificationsEnabled()Z
    invoke-static {v0}, Lcom/android/settings/LockscreenNotificationApplist;->access$100(Lcom/android/settings/LockscreenNotificationApplist;)Z

    move-result v0

    invoke-virtual {v10, v0}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_6

    :cond_7
    iget-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist$1;->this$0:Lcom/android/settings/LockscreenNotificationApplist;

    # invokes: Lcom/android/settings/LockscreenNotificationApplist;->getVisibilityString(I)Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/android/settings/LockscreenNotificationApplist;->access$400(Lcom/android/settings/LockscreenNotificationApplist;I)Ljava/lang/String;

    move-result-object v12

    sget-boolean v0, Lcom/android/settings/Utils;->isEnabledSurveyMode:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist$1;->this$0:Lcom/android/settings/LockscreenNotificationApplist;

    # getter for: Lcom/android/settings/LockscreenNotificationApplist;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/LockscreenNotificationApplist;->access$500(Lcom/android/settings/LockscreenNotificationApplist;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.settings"

    const-string v2, "VLST"

    invoke-static {v0, v1, v2, v12}, Lcom/android/settings/Utils;->insertStatusLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    const/4 v0, 0x5

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enable/disable display notification in the locked state of : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.class Lcom/android/server/InputMethodManagerService$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method private isChangingPackagesOfCurrentUser()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->getChangingUserId()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v2, v2, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .locals 11

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->isChangingPackagesOfCurrentUser()Z

    move-result v8

    if-nez v8, :cond_0

    const/4 v8, 0x0

    :goto_0
    return v8

    :cond_0
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v9, v8, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v9

    :try_start_0
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v8, v8, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v8}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v2

    iget-object v8, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v8, v8, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v2, :cond_4

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_4

    iget-object v8, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v8, v8, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    move-object v1, p2

    array-length v6, v1

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v6, :cond_3

    aget-object v7, v1, v4

    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    if-nez p4, :cond_1

    const/4 v8, 0x1

    monitor-exit v9

    goto :goto_0

    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    :cond_1
    :try_start_1
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    const-string v10, ""

    # invokes: Lcom/android/server/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V
    invoke-static {v8, v10}, Lcom/android/server/InputMethodManagerService;->access$1600(Lcom/android/server/InputMethodManagerService;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    # invokes: Lcom/android/server/InputMethodManagerService;->chooseNewDefaultIMELocked()Z
    invoke-static {v8}, Lcom/android/server/InputMethodManagerService;->access$1700(Lcom/android/server/InputMethodManagerService;)Z

    const/4 v8, 0x1

    monitor-exit v9

    goto :goto_0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v8, 0x0

    goto :goto_0
.end method

.method public onSomePackagesChanged()V
    .locals 15

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->isChangingPackagesOfCurrentUser()Z

    move-result v10

    if-nez v10, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v10, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v11, v10, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v11

    const/4 v3, 0x0

    :try_start_0
    iget-object v10, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v10, v10, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v10}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v4

    iget-object v10, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v10, v10, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v4, :cond_6

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v0, :cond_6

    iget-object v10, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v10, v10, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    move-object v3, v6

    :cond_1
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->isPackageDisappearing(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->isPackageModified(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->mFileManager:Lcom/android/server/InputMethodManagerService$InputMethodFileManager;
    invoke-static {v10}, Lcom/android/server/InputMethodManagerService;->access$1800(Lcom/android/server/InputMethodManagerService;)Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    move-result-object v10

    # invokes: Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->deleteAllInputMethodSubtypes(Ljava/lang/String;)V
    invoke-static {v10, v7}, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->access$1900(Lcom/android/server/InputMethodManagerService$InputMethodFileManager;Ljava/lang/String;)V

    :cond_2
    const/4 v10, 0x2

    if-eq v1, v10, :cond_3

    const/4 v10, 0x3

    if-ne v1, v10, :cond_5

    :cond_3
    const-string v10, "InputMethodManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Input method uninstalled, disabling: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v10, v10, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v12, "last_used_input_method"

    iget-object v13, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v13, v13, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v13}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v13

    invoke-static {v10, v12, v13}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v10, v10, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v12, "last_used_input_method"

    const-string v13, ""

    iget-object v14, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v14, v14, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v14}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v14

    invoke-static {v10, v12, v13, v14}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_4
    iget-object v10, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v10, v12, v13}, Lcom/android/server/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_6
    iget-object v10, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v12, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v12, v12, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    iget-object v13, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v13, v13, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    const/4 v14, 0x0

    invoke-virtual {v10, v12, v13, v14}, Lcom/android/server/InputMethodManagerService;->buildInputMethodListLocked(Ljava/util/ArrayList;Ljava/util/HashMap;Z)V

    const/4 v2, 0x0

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->isPackageDisappearing(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    const/4 v10, 0x2

    if-eq v1, v10, :cond_7

    const/4 v10, 0x3

    if-ne v1, v10, :cond_8

    :cond_7
    const/4 v9, 0x0

    :try_start_1
    iget-object v10, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;
    invoke-static {v10}, Lcom/android/server/InputMethodManagerService;->access$2000(Lcom/android/server/InputMethodManagerService;)Landroid/content/pm/IPackageManager;

    move-result-object v10

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    const/4 v13, 0x0

    iget-object v14, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v14, v14, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v14}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v14

    invoke-interface {v10, v12, v13, v14}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    :goto_2
    if-nez v9, :cond_8

    :try_start_2
    const-string v10, "InputMethodManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Current input method removed: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    # invokes: Lcom/android/server/InputMethodManagerService;->setImeWindowVisibilityStatusHiddenLocked()V
    invoke-static {v10}, Lcom/android/server/InputMethodManagerService;->access$400(Lcom/android/server/InputMethodManagerService;)V

    iget-object v10, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    # invokes: Lcom/android/server/InputMethodManagerService;->chooseNewDefaultIMELocked()Z
    invoke-static {v10}, Lcom/android/server/InputMethodManagerService;->access$1700(Lcom/android/server/InputMethodManagerService;)Z

    move-result v10

    if-nez v10, :cond_8

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v10, "InputMethodManagerService"

    const-string v12, "Unsetting current input method"

    invoke-static {v10, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    const-string v12, ""

    # invokes: Lcom/android/server/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V
    invoke-static {v10, v12}, Lcom/android/server/InputMethodManagerService;->access$1600(Lcom/android/server/InputMethodManagerService;Ljava/lang/String;)V

    :cond_8
    if-nez v3, :cond_9

    iget-object v10, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    # invokes: Lcom/android/server/InputMethodManagerService;->chooseNewDefaultIMELocked()Z
    invoke-static {v10}, Lcom/android/server/InputMethodManagerService;->access$1700(Lcom/android/server/InputMethodManagerService;)Z

    move-result v2

    :cond_9
    if-eqz v2, :cond_a

    iget-object v10, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Lcom/android/server/InputMethodManagerService;->updateFromSettingsLocked(Z)V

    :cond_a
    monitor-exit v11

    goto/16 :goto_0

    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v10

    :catch_0
    move-exception v10

    goto :goto_2
.end method

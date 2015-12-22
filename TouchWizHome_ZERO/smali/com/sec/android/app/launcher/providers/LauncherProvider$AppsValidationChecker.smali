.class public Lcom/sec/android/app/launcher/providers/LauncherProvider$AppsValidationChecker;
.super Ljava/lang/Object;
.source "LauncherProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/providers/LauncherProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppsValidationChecker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/launcher/providers/LauncherProvider$AppsValidationChecker$AppsInfo;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/providers/LauncherProvider;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/launcher/providers/LauncherProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/providers/LauncherProvider$AppsValidationChecker;->this$0:Lcom/sec/android/app/launcher/providers/LauncherProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private buildAppsList()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;"
        }
    .end annotation

    iget-object v6, p0, Lcom/sec/android/app/launcher/providers/LauncherProvider$AppsValidationChecker;->this$0:Lcom/sec/android/app/launcher/providers/LauncherProvider;

    # getter for: Lcom/sec/android/app/launcher/providers/LauncherProvider;->mUserManager:Landroid/os/UserManager;
    invoke-static {v6}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->access$000(Lcom/sec/android/app/launcher/providers/LauncherProvider;)Landroid/os/UserManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_2

    invoke-static {}, Lcom/sec/android/app/launcher/utils/Utils;->isKnoxMode()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/launcher/providers/LauncherProvider$AppsValidationChecker;->this$0:Lcom/sec/android/app/launcher/providers/LauncherProvider;

    # getter for: Lcom/sec/android/app/launcher/providers/LauncherProvider;->mLauncherApps:Landroid/content/pm/LauncherApps;
    invoke-static {v6}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->access$200(Lcom/sec/android/app/launcher/providers/LauncherProvider;)Landroid/content/pm/LauncherApps;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserHandle;

    invoke-virtual {v7, v8, v6}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    const/4 v3, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-object v1
.end method

.method private checkAppsValidation(Ljava/util/List;Z)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;Z)V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$AppsValidationChecker;->this$0:Lcom/sec/android/app/launcher/providers/LauncherProvider;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v10, "extra_packagename"

    sget-object v3, Lcom/sec/android/app/launcher/providers/LauncherProvider;->APPS_URI_DO_NOT_NOTIFY:Landroid/net/Uri;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "title"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "componentName"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "profileId"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    if-eqz v12, :cond_2

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v12}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x2

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    new-instance v3, Lcom/sec/android/app/launcher/providers/LauncherProvider$AppsValidationChecker$AppsInfo;

    const/4 v4, 0x0

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v4, 0x1

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x2

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v4, 0x3

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/sec/android/app/launcher/providers/LauncherProvider$AppsValidationChecker$AppsInfo;-><init>(Lcom/sec/android/app/launcher/providers/LauncherProvider$AppsValidationChecker;ILjava/lang/String;Ljava/lang/String;J)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x3

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    :cond_1
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/LauncherActivityInfo;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$AppsValidationChecker;->this$0:Lcom/sec/android/app/launcher/providers/LauncherProvider;

    # getter for: Lcom/sec/android/app/launcher/providers/LauncherProvider;->mUserManager:Landroid/os/UserManager;
    invoke-static {v4}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->access$000(Lcom/sec/android/app/launcher/providers/LauncherProvider;)Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/launcher/providers/LauncherProvider$AppsValidationChecker$AppsInfo;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/app/launcher/providers/LauncherProvider$AppsValidationChecker$AppsInfo;->setIsExist(Z)V

    goto :goto_1

    :cond_3
    new-instance v17, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$AppsValidationChecker;->this$0:Lcom/sec/android/app/launcher/providers/LauncherProvider;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/sec/android/app/launcher/services/LauncherService;

    move-object/from16 v0, v17

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "extra_packagename"

    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "extra_user"

    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getInst()Lcom/sec/android/app/launcher/activities/LauncherApp;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/sec/android/app/launcher/activities/LauncherApp;->startLauncherService(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_4
    if-nez p2, :cond_8

    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_5
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/launcher/providers/LauncherProvider$AppsValidationChecker$AppsInfo;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/providers/LauncherProvider$AppsValidationChecker$AppsInfo;->isExist()Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "@"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    array-length v4, v0

    const/4 v5, 0x2

    if-lt v4, v5, :cond_5

    sget-object v4, Lcom/sec/android/app/launcher/providers/LauncherProvider;->APPS_URI:Landroid/net/Uri;

    const-string v5, "profileId=? AND componentName=?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    aget-object v8, v19, v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x1

    aget-object v8, v19, v8

    aput-object v8, v6, v7

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/providers/LauncherProvider$AppsValidationChecker$AppsInfo;->getComponentName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v13

    new-instance v17, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";component="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_6

    array-length v4, v14

    const/4 v5, 0x2

    if-ge v4, v5, :cond_7

    :cond_6
    const-string v4, "Launcher.Provider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkAppsValidation split fail : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    sget-object v4, Lcom/sec/android/app/launcher/providers/LauncherProvider;->FAVORITES_URI:Landroid/net/Uri;

    const-string v5, "profileId=? AND intent like ?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    aget-object v8, v19, v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "%"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v9, v19, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "%"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    # getter for: Lcom/sec/android/app/launcher/providers/LauncherProvider;->DEBUGGABLE:Z
    invoke-static {}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->access$300()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "Launcher.Provider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Remove (Apps) item which is not exist in package manager. - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_7
    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%component="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v6, v14, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v19, v4

    goto :goto_3

    :cond_8
    return-void
.end method

.method private checkHomeValidation(Ljava/util/List;Z)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;Z)V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$AppsValidationChecker;->this$0:Lcom/sec/android/app/launcher/providers/LauncherProvider;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v10, "extra_packagename"

    sget-object v3, Lcom/sec/android/app/launcher/providers/LauncherProvider;->FAVORITES_URI_DO_NOT_NOTIFY:Landroid/net/Uri;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "title"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "intent"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "profileId"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    if-eqz v11, :cond_3

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x2

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    if-nez v19, :cond_1

    :cond_0
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :try_start_0
    move-object/from16 v0, v19

    invoke-static {v0, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v18

    if-eqz v18, :cond_0

    const-string v4, "android.intent.action.MAIN"

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getFlags()I

    move-result v4

    const/high16 v5, 0x10200000

    if-ne v4, v5, :cond_0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    new-instance v3, Lcom/sec/android/app/launcher/providers/LauncherProvider$AppsValidationChecker$AppsInfo;

    const/4 v4, 0x0

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v4, 0x1

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    const/4 v4, 0x3

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/sec/android/app/launcher/providers/LauncherProvider$AppsValidationChecker$AppsInfo;-><init>(Lcom/sec/android/app/launcher/providers/LauncherProvider$AppsValidationChecker;ILjava/lang/String;Ljava/lang/String;J)V

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/sec/android/app/launcher/providers/LauncherProvider$AppsValidationChecker$AppsInfo;->setIntent(Landroid/content/Intent;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x3

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/sec/android/app/launcher/providers/LauncherProvider$AppsValidationChecker$AppsInfo;->mComponentName:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/launcher/providers/LauncherProvider$AppsValidationChecker$AppsInfo;->access$800(Lcom/sec/android/app/launcher/providers/LauncherProvider$AppsValidationChecker$AppsInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v14

    invoke-virtual {v14}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto/16 :goto_1

    :cond_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_3
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/LauncherActivityInfo;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$AppsValidationChecker;->this$0:Lcom/sec/android/app/launcher/providers/LauncherProvider;

    # getter for: Lcom/sec/android/app/launcher/providers/LauncherProvider;->mUserManager:Landroid/os/UserManager;
    invoke-static {v4}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->access$000(Lcom/sec/android/app/launcher/providers/LauncherProvider;)Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    invoke-virtual {v15}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/launcher/providers/LauncherProvider$AppsValidationChecker$AppsInfo;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/app/launcher/providers/LauncherProvider$AppsValidationChecker$AppsInfo;->setIsExist(Z)V

    goto :goto_2

    :cond_4
    new-instance v18, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$AppsValidationChecker;->this$0:Lcom/sec/android/app/launcher/providers/LauncherProvider;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/sec/android/app/launcher/services/LauncherService;

    move-object/from16 v0, v18

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "extra_packagename"

    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "extra_user"

    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v4, "extra_cue"

    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getInst()Lcom/sec/android/app/launcher/activities/LauncherApp;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/sec/android/app/launcher/activities/LauncherApp;->startLauncherService(Landroid/content/Intent;)V

    goto/16 :goto_2

    :cond_5
    if-nez p2, :cond_a

    invoke-virtual {v15}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_6
    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/launcher/providers/LauncherProvider$AppsValidationChecker$AppsInfo;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/providers/LauncherProvider$AppsValidationChecker$AppsInfo;->isExist()Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "@"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    array-length v4, v0

    const/4 v5, 0x2

    if-lt v4, v5, :cond_6

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/providers/LauncherProvider$AppsValidationChecker$AppsInfo;->getIntent()Landroid/content/Intent;

    move-result-object v18

    if-eqz v18, :cond_8

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";component="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_7

    array-length v4, v13

    const/4 v5, 0x2

    if-ge v4, v5, :cond_9

    :cond_7
    const-string v4, "Launcher.Provider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkHomeValidation split fail : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_4
    sget-object v4, Lcom/sec/android/app/launcher/providers/LauncherProvider;->FAVORITES_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "itemType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_APPLICATION:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "profileId"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=? AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "intent"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " like ?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    aget-object v8, v21, v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "%"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v9, v21, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "%"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    # getter for: Lcom/sec/android/app/launcher/providers/LauncherProvider;->DEBUGGABLE:Z
    invoke-static {}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->access$300()Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "Launcher.Provider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Remove home item which is not exist in package manager. - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_9
    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%component="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v6, v13, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v21, v4

    goto/16 :goto_4

    :cond_a
    return-void
.end method


# virtual methods
.method public run(ZZ)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/providers/LauncherProvider$AppsValidationChecker;->buildAppsList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/launcher/providers/LauncherProvider$AppsValidationChecker;->checkHomeValidation(Ljava/util/List;Z)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/launcher/providers/LauncherProvider$AppsValidationChecker;->buildAppsList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/launcher/providers/LauncherProvider$AppsValidationChecker;->checkAppsValidation(Ljava/util/List;Z)V

    goto :goto_0
.end method

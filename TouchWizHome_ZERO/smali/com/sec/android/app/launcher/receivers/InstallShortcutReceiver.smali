.class public Lcom/sec/android/app/launcher/receivers/InstallShortcutReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InstallShortcutReceiver.java"


# static fields
.field public static final ACTION_INSTALL_SHORTCUT:Ljava/lang/String; = "com.android.launcher.action.INSTALL_SHORTCUT"

.field private static final EXTRA_SHORTCUT_DUPLICATE:Ljava/lang/String; = "duplicate"

.field private static final KNOX_SHORTCUT_PACKAGE:Ljava/lang/String; = "com.samsung.knox.rcp.components"

.field public static PrevShortcutIntent:Ljava/lang/String;

.field public static PrevShortcutName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/launcher/receivers/InstallShortcutReceiver;->PrevShortcutName:Ljava/lang/String;

    sput-object v0, Lcom/sec/android/app/launcher/receivers/InstallShortcutReceiver;->PrevShortcutIntent:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private installShortcut(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/launcher/services/LauncherService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :goto_0
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getInst()Lcom/sec/android/app/launcher/activities/LauncherApp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/launcher/activities/LauncherApp;->startLauncherService(Landroid/content/Intent;)V

    return-void

    :cond_0
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private shortcutExists(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 11

    const/4 v5, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v6, 0x0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isHomeOnlyModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sec/android/app/launcher/providers/LauncherProvider;->FAVORITES_URI:Landroid/net/Uri;

    new-array v2, v10, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v9

    const-string v3, "intent=?"

    new-array v4, v10, [Ljava/lang/String;

    invoke-virtual {p3, v9}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v9

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    :goto_0
    const/4 v7, 0x0

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    return v7

    :cond_1
    sget-object v1, Lcom/sec/android/app/launcher/providers/LauncherProvider;->FAVORITES_URI:Landroid/net/Uri;

    new-array v2, v10, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v9

    const-string v3, "title=? and intent=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object p2, v4, v9

    invoke-virtual {p3, v9}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v10

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto :goto_0
.end method

.method private shortcutExistsOnHomeOnlyMode(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 12

    const/4 v11, 0x1

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p2, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "component="

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    array-length v1, v7

    if-nez v1, :cond_1

    :cond_0
    move v1, v5

    :goto_0
    return v1

    :cond_1
    sget-object v1, Lcom/sec/android/app/launcher/providers/LauncherProvider;->FAVORITES_URI:Landroid/net/Uri;

    new-array v2, v11, [Ljava/lang/String;

    const-string v3, "intent"

    aput-object v3, v2, v5

    const-string v3, "intent like ?"

    new-array v4, v11, [Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "%component="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v7, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v1, v8

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    const-string v10, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isHomeOnlyModeEnabled()Z

    move-result v10

    if-eqz v10, :cond_3

    const-string v10, "android.intent.action.MAIN"

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v5, 0x0

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    if-eqz v10, :cond_2

    const-string v10, "com.samsung.knox.rcp.components"

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const-string v10, "duplicate"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v5, 0x1

    :cond_2
    if-nez v5, :cond_3

    invoke-direct {p0, p1, v3}, Lcom/sec/android/app/launcher/receivers/InstallShortcutReceiver;->shortcutExistsOnHomeOnlyMode(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v10

    if-eqz v10, :cond_3

    const-string v10, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const v10, 0x7f0d00a9

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v7, v11, v12

    invoke-virtual {p1, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x0

    invoke-static {p1, v6, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    const-string v10, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_4

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    :cond_4
    const-string v10, "duplicate"

    const/4 v11, 0x1

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-direct {p0, p1, v7, v3}, Lcom/sec/android/app/launcher/receivers/InstallShortcutReceiver;->shortcutExists(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v10

    if-nez v10, :cond_5

    sget-object v10, Lcom/sec/android/app/launcher/receivers/InstallShortcutReceiver;->PrevShortcutName:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/sec/android/app/launcher/receivers/InstallShortcutReceiver;->PrevShortcutIntent:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    :cond_5
    const v10, 0x7f0d00a9

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v7, v11, v12

    invoke-virtual {p1, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :goto_1
    const/4 v10, 0x0

    invoke-static {p1, v6, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :catch_0
    move-exception v8

    goto/16 :goto_0

    :cond_6
    sput-object v7, Lcom/sec/android/app/launcher/receivers/InstallShortcutReceiver;->PrevShortcutName:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/sec/android/app/launcher/receivers/InstallShortcutReceiver;->PrevShortcutIntent:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/launcher/receivers/InstallShortcutReceiver;->installShortcut(Landroid/content/Context;Landroid/content/Intent;)V

    sget-boolean v10, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mUseCustomerLauncher_JPN:Z

    if-eqz v10, :cond_7

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getInst()Lcom/sec/android/app/launcher/activities/LauncherApp;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getInst()Lcom/sec/android/app/launcher/activities/LauncherApp;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v4, v0, v10}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_0

    :cond_7
    const v10, 0x7f0d00aa

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v7, v11, v12

    invoke-virtual {p1, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1
.end method

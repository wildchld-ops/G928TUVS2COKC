.class public Lcom/sec/android/app/launcher/receivers/EventThemeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EventThemeReceiver.java"


# static fields
.field public static final ACTION_EVENT_THEME:Ljava/lang/String; = "com.android.launcher.action.EVENT_THEME"

.field public static final ACTION_EVENT_THEME_PRELOAD:Ljava/lang/String; = "EVENT_THEME_PRELOAD"

.field public static final ACTION_EVENT_THEME_STATE:Ljava/lang/String; = "EVENT_THEME_ENABLE"

.field public static final ACTION_FESTIVAL_HOMESETTING_CHANGED:Ljava/lang/String; = "com.sec.festival.FESTIVAL_HOME_CHANGED"

.field public static final ACTION_FESTIVAL_SETTING:Ljava/lang/String; = "com.samsung.android.theme.FESTIVAL_SETTING_CHANGED"

.field public static final ACTION_FESTIVAL_SETTING_CHANGED:Ljava/lang/String; = "com.sec.festival.FESTIVAL_SETTINGS_CHANGED"

.field public static final ACTION_MYEVENT_FESTIVAL:Ljava/lang/String; = "com.samsung.android.theme.MYEVENT_FESTIVAL"

.field public static final ACTION_PICKUP_FESTIVAL_DAY:Ljava/lang/String; = "com.bst.action.PICKUP_FESTIVAL"

.field public static final ACTION_PICKUP_FESTIVAL_DAY_OFF:Ljava/lang/String; = "com.bst.action.PICKUP_COMMON"

.field private static final TAG:Ljava/lang/String; = "EventThemeManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private installEventPage(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/launcher/services/LauncherService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.android.launcher.action.EVENT_THEME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getInst()Lcom/sec/android/app/launcher/activities/LauncherApp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/launcher/activities/LauncherApp;->startLauncherService(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const/4 v9, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v6, "EventThemeManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EventThemeReceiver : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.samsung.android.theme.MYEVENT_FESTIVAL"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.samsung.android.theme.FESTIVAL_SETTING_CHANGED"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.samsung.android.theme.MYEVENT_FESTIVAL"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "IsEnabled"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v6, "EventTitle"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "EventThemeManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "enable "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " eventTiele : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-eqz v0, :cond_3

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getInst()Lcom/sec/android/app/launcher/activities/LauncherApp;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getEventThemeManager()Lcom/sec/android/app/launcher/theme/EventThemeManager;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/sec/android/app/launcher/theme/EventThemeManager;->isFestivalChanged(Z)Z

    move-result v4

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getInst()Lcom/sec/android/app/launcher/activities/LauncherApp;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getEventThemeManager()Lcom/sec/android/app/launcher/theme/EventThemeManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/theme/EventThemeManager;->isEventThemeEnable()Z

    move-result v1

    :cond_3
    :goto_2
    const-string v6, "EventThemeManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "eventThemeEnable "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " sendIntent : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_0

    const-string v6, "EVENT_THEME_ENABLE"

    invoke-virtual {p2, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v6, "EVENT_THEME_PRELOAD"

    invoke-virtual {p2, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/launcher/receivers/EventThemeReceiver;->installEventPage(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_4
    const-string v6, "IsEnabled"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v4, 0x0

    goto :goto_1

    :cond_5
    const/4 v0, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.bst.action.PICKUP_FESTIVAL"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.sec.festival.FESTIVAL_SETTINGS_CHANGED"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.sec.festival.FESTIVAL_HOME_CHANGED"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_7
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getInst()Lcom/sec/android/app/launcher/activities/LauncherApp;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getEventThemeManager()Lcom/sec/android/app/launcher/theme/EventThemeManager;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/sec/android/app/launcher/theme/EventThemeManager;->isFestivalChanged(Z)Z

    move-result v4

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getInst()Lcom/sec/android/app/launcher/activities/LauncherApp;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getEventThemeManager()Lcom/sec/android/app/launcher/theme/EventThemeManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/theme/EventThemeManager;->isEventThemeEnable()Z

    move-result v1

    goto :goto_2

    :cond_8
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.bst.action.PICKUP_COMMON"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    const/4 v4, 0x1

    goto/16 :goto_2

    :cond_9
    const/4 v4, 0x0

    goto/16 :goto_2
.end method

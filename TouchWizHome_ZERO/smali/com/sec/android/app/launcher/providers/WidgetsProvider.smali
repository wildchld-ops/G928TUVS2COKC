.class public Lcom/sec/android/app/launcher/providers/WidgetsProvider;
.super Lcom/sec/android/app/launcher/providers/ProviderBase;
.source "WidgetsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/launcher/providers/WidgetsProvider$WidgetsDatabaseHelper;,
        Lcom/sec/android/app/launcher/providers/WidgetsProvider$WidgetsValues;
    }
.end annotation


# static fields
.field public static AUTHORITY:Ljava/lang/String; = null

.field public static CONTENT_URI:Landroid/net/Uri; = null

.field private static final DEBUGGABLE:Z

.field private static final TAG:Ljava/lang/String; = "Launcher.WidgetsProvider"

.field public static final WIDGETS_LANGUAGE_UPDATER:Ljava/lang/String; = "updateLanguage"

.field public static final WIDGETS_VALID_CHECK:Ljava/lang/String; = "runWidgetDBValidationCheck"

.field private static mInstance:Lcom/sec/android/app/launcher/providers/WidgetsProvider;

.field private static mLastValidatedTime:J


# instance fields
.field private final mEasyModeActivities:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPkgManager:Landroid/content/pm/PackageManager;

.field private mUserManager:Landroid/os/UserManager;

.field private mWidgetManager:Landroid/appwidget/AppWidgetManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/launcher/utils/Utils;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->DEBUGGABLE:Z

    const-string v0, "com.sec.android.app.launcher.providers.WidgetsProvider"

    sput-object v0, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->AUTHORITY:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/widgetsItem?notify=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->CONTENT_URI:Landroid/net/Uri;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->mLastValidatedTime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/providers/ProviderBase;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->mPkgManager:Landroid/content/pm/PackageManager;

    iput-object v0, p0, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->mWidgetManager:Landroid/appwidget/AppWidgetManager;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->mEasyModeActivities:Ljava/util/HashSet;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->DEBUGGABLE:Z

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/launcher/providers/WidgetsProvider;)Landroid/os/UserManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/launcher/providers/WidgetsProvider;Landroid/os/UserManager;)Landroid/os/UserManager;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->mUserManager:Landroid/os/UserManager;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/launcher/providers/WidgetsProvider;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->mPkgManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/launcher/providers/WidgetsProvider;)Landroid/appwidget/AppWidgetManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->mWidgetManager:Landroid/appwidget/AppWidgetManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/launcher/providers/WidgetsProvider;)Ljava/util/HashSet;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->mEasyModeActivities:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$500()J
    .locals 2

    sget-wide v0, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->mLastValidatedTime:J

    return-wide v0
.end method

.method static synthetic access$502(J)J
    .locals 0

    sput-wide p0, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->mLastValidatedTime:J

    return-wide p0
.end method

.method public static getInstance()Lcom/sec/android/app/launcher/providers/WidgetsProvider;
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->mInstance:Lcom/sec/android/app/launcher/providers/WidgetsProvider;

    return-object v0
.end method

.method private notifyUpdateComplete(Landroid/net/Uri;Ljava/lang/StringBuilder;)V
    .locals 5

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const-string v4, ","

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2, v0}, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->buildNotifyUri(Landroid/net/Uri;ILjava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/sec/android/app/launcher/providers/ProviderBase;->notifyChange(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method private updateAllInWidgetList(Landroid/content/Context;)V
    .locals 5

    iget-object v3, p0, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    if-nez v3, :cond_0

    new-instance v3, Lcom/sec/android/app/launcher/providers/WidgetsProvider$WidgetsDatabaseHelper;

    invoke-direct {v3, p0, p1}, Lcom/sec/android/app/launcher/providers/WidgetsProvider$WidgetsDatabaseHelper;-><init>(Lcom/sec/android/app/launcher/providers/WidgetsProvider;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    :cond_0
    sget-object v3, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;->INST:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;->getWidgetItems(Z)Ljava/util/List;

    iget-object v3, p0, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v0, Lcom/sec/android/app/launcher/utils/SqlArguments;

    sget-object v3, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v3}, Lcom/sec/android/app/launcher/utils/SqlArguments;-><init>(Landroid/net/Uri;)V

    invoke-virtual {p0, v2, v0, v1}, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->appendNotifyUriIds(Landroid/database/sqlite/SQLiteDatabase;Lcom/sec/android/app/launcher/utils/SqlArguments;Ljava/lang/StringBuilder;)V

    sget-object v3, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v3, v1}, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->notifyUpdateComplete(Landroid/net/Uri;Ljava/lang/StringBuilder;)V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    const-string v1, "updateLanguage"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->updateAllInWidgetList(Landroid/content/Context;)V

    :cond_0
    :goto_0
    const/4 v1, 0x0

    return-object v1

    :cond_1
    const-string v1, "runWidgetDBValidationCheck"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->getDatabaseHelper()Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/launcher/providers/WidgetsProvider$WidgetsDatabaseHelper;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/providers/WidgetsProvider$WidgetsDatabaseHelper;->runWidgetDBValidationCheck()V

    goto :goto_0
.end method

.method public getDatabaseHelper()Landroid/database/sqlite/SQLiteOpenHelper;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/launcher/providers/WidgetsProvider$WidgetsDatabaseHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/launcher/providers/WidgetsProvider$WidgetsDatabaseHelper;-><init>(Lcom/sec/android/app/launcher/providers/WidgetsProvider;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    return-object v0
.end method

.method public onCreate()Z
    .locals 2

    sget-boolean v0, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->DEBUGGABLE:Z

    if-eqz v0, :cond_0

    const-string v0, "Launcher.WidgetsProvider"

    const-string v1, "WidgetsProvider onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sput-object p0, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->mInstance:Lcom/sec/android/app/launcher/providers/WidgetsProvider;

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->mPkgManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->mWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->getDatabaseHelper()Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    const/4 v0, 0x1

    return v0
.end method

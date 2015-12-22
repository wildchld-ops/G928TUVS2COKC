.class Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector$2;
.super Ljava/lang/Object;
.source "LauncherFavoritesConnector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->changeDialerToDB(Landroid/net/Uri;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/content/ContentValues;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;

.field final synthetic val$isCscLoaded:Z

.field final synthetic val$newItemUri:Landroid/net/Uri;

.field final synthetic val$newValue:Landroid/content/ContentValues;

.field final synthetic val$oldItemUri:Landroid/net/Uri;

.field final synthetic val$oldValue:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/net/Uri;Landroid/content/ContentValues;Z)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector$2;->this$0:Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;

    iput-object p2, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector$2;->val$newItemUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector$2;->val$newValue:Landroid/content/ContentValues;

    iput-object p4, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector$2;->val$oldItemUri:Landroid/net/Uri;

    iput-object p5, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector$2;->val$oldValue:Landroid/content/ContentValues;

    iput-boolean p6, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector$2;->val$isCscLoaded:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x0

    const-string v3, "FavoritesConnector"

    const-string v4, "changeDialerToDB"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector$2;->this$0:Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;

    iget-object v3, v3, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector$2;->val$newItemUri:Landroid/net/Uri;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector$2;->val$newItemUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector$2;->val$newValue:Landroid/content/ContentValues;

    invoke-virtual {v0, v3, v4, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector$2;->val$oldItemUri:Landroid/net/Uri;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector$2;->val$oldItemUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector$2;->val$oldValue:Landroid/content/ContentValues;

    invoke-virtual {v0, v3, v4, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_1
    iget-boolean v3, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector$2;->val$isCscLoaded:Z

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getInst()Lcom/sec/android/app/launcher/activities/LauncherApp;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getInst()Lcom/sec/android/app/launcher/activities/LauncherApp;

    move-result-object v3

    const-string v4, "com.sec.android.app.launcher.prefs"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "change_dialer"

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v3, "FavoritesConnector"

    const-string v4, "changeDialerToDB SharedPreferences save to true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

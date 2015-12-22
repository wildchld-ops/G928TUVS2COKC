.class public Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper;
.super Ljava/lang/Object;
.source "MultiWindowLoggingHelper.java"


# static fields
.field private static final APP_ID:Ljava/lang/String; = "com.samsung.android.multiwindow"

.field public static final CHANGE_POPUPWINDOW_TYPE:Ljava/lang/String; = "CHANGE-POPUP"

.field public static final CHANGE_SPLITWINDOW_TYPE:Ljava/lang/String; = "CHANGE-SPLIT"

.field public static final CLOSE_TYPE:Ljava/lang/String; = "CLOSE"

.field public static final DEBUG:Z = false

.field public static final DRAGCONTENT_TYPE:Ljava/lang/String; = "DRAGCONTENT"

.field public static final GESTURE_LOGGING_FEATURE:Ljava/lang/String; = "GEST"

.field public static final MAX_TYPE:Ljava/lang/String; = "MAXIMIZE"

.field public static final MIN_TYPE:Ljava/lang/String; = "MINIMIZE"

.field public static final POPUPWINDOW_LOGGING_FEATURE:Ljava/lang/String; = "POPW"

.field public static final RECENT_LONGPRESS_LOGGING_FEATURE:Ljava/lang/String; = "RCLP"

.field public static final RECENT_POPUP_LOGGING_FEATURE:Ljava/lang/String; = "RCPO"

.field public static final RECENT_SPLIT_LOGGING_FEATURE:Ljava/lang/String; = "RCSP"

.field public static final RECENT_STACKVIEW_LOGGING_FEATURE:Ljava/lang/String; = "RCSV"

.field public static final RECENT_VIEWPAGER_LOGGING_FEATURE:Ljava/lang/String; = "RCVP"

.field public static final SPLITWINDOW_LOGGING_FEATURE:Ljava/lang/String; = "SPLW"

.field public static final SWITCH_TYPE:Ljava/lang/String; = "SWITCH"

.field public static final TAG:Ljava/lang/String; = "MultiWindowLoggingHelper"

.field public static final TRAY_POPUP_LOGGING_FEATURE:Ljava/lang/String; = "TRPO"

.field public static final TRAY_SPLIT_LOGGING_FEATURE:Ljava/lang/String; = "TRSP"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "app_id"

    const-string v3, "com.samsung.android.multiwindow"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "feature"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string v2, "extra"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static insertMultipleStatusLog(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;[J)V
    .locals 8

    array-length v3, p1

    new-array v1, v3, [Landroid/content/ContentValues;

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    aput-object v3, v1, v2

    aget-object v3, v1, v2

    const-string v4, "app_id"

    const-string v5, "com.samsung.android.multiwindow"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v3, v1, v2

    const-string v4, "feature"

    aget-object v5, p1, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v3, v1, v2

    const-string v4, "extra"

    aget-object v5, p2, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    aget-object v3, v1, v2

    const-string/jumbo v4, "value"

    aget-wide v6, p3, v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.samsung.android.providers.context.log.action.USE_MULTI_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "data"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v3, "com.samsung.android.providers.context"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

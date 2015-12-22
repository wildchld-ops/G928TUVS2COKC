.class public Lcom/android/settings/notification/NotificationAppList$Backend;
.super Ljava/lang/Object;
.source "NotificationAppList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/NotificationAppList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Backend"
.end annotation


# static fields
.field static sINM:Landroid/app/INotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    sput-object v0, Lcom/android/settings/notification/NotificationAppList$Backend;->sINM:Landroid/app/INotificationManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHighPriority(Ljava/lang/String;I)Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/android/settings/notification/NotificationAppList$Backend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {v2, p1, p2}, Landroid/app/INotificationManager;->getPackagePriority(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v2, "NotificationAppList"

    const-string v3, "Error calling NoMan"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getNotificationsBanned(Ljava/lang/String;I)Z
    .locals 5

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lcom/android/settings/notification/NotificationAppList$Backend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {v3, p1, p2}, Landroid/app/INotificationManager;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    :goto_0
    return v2

    :catch_0
    move-exception v0

    const-string v3, "NotificationAppList"

    const-string v4, "Error calling NoMan"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getSensitive(Ljava/lang/String;I)Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/android/settings/notification/NotificationAppList$Backend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {v2, p1, p2}, Landroid/app/INotificationManager;->getPackageVisibilityOverride(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v2, "NotificationAppList"

    const-string v3, "Error calling NoMan"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setHighPriority(Ljava/lang/String;IZ)Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    sget-object v3, Lcom/android/settings/notification/NotificationAppList$Backend;->sINM:Landroid/app/INotificationManager;

    if-eqz p3, :cond_0

    const/4 v2, 0x2

    :goto_0
    invoke-interface {v3, p1, p2, v2}, Landroid/app/INotificationManager;->setPackagePriority(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    move v2, v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "NotificationAppList"

    const-string v3, "Error calling NoMan"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setNotificationsBanned(Ljava/lang/String;IZ)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    sget-object v4, Lcom/android/settings/notification/NotificationAppList$Backend;->sINM:Landroid/app/INotificationManager;

    if-nez p3, :cond_0

    move v3, v1

    :goto_0
    invoke-interface {v4, p1, p2, v3}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return v1

    :cond_0
    move v3, v2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "NotificationAppList"

    const-string v3, "Error calling NoMan"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    goto :goto_1
.end method

.method public setSensitive(Ljava/lang/String;IZ)Z
    .locals 3

    :try_start_0
    sget-object v2, Lcom/android/settings/notification/NotificationAppList$Backend;->sINM:Landroid/app/INotificationManager;

    if-eqz p3, :cond_0

    sget-object v1, Lcom/android/settings/notification/NotificationAppList$Backend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {v1, p1, p2}, Landroid/app/INotificationManager;->getPackageVisibilityOverride(Ljava/lang/String;I)I

    move-result v1

    or-int/lit8 v1, v1, 0x1

    :goto_0
    invoke-interface {v2, p1, p2, v1}, Landroid/app/INotificationManager;->setPackageVisibilityOverride(Ljava/lang/String;II)V

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    sget-object v1, Lcom/android/settings/notification/NotificationAppList$Backend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {v1, p1, p2}, Landroid/app/INotificationManager;->getPackageVisibilityOverride(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    and-int/lit8 v1, v1, -0x2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "NotificationAppList"

    const-string v2, "Error calling NoMan"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_1
.end method

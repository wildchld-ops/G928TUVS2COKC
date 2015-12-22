.class public Lcom/sec/android/app/launcher/data/HomeItem;
.super Lcom/sec/android/app/launcher/data/LauncherItem;
.source "HomeItem.java"


# static fields
.field private static final GEAR_MANAGER_PKG_NAME:Ljava/lang/String; = "com.samsung.android.app.watchmanager"

.field private static final SIDE_SYNC_PKG_NAME:Ljava/lang/String; = "com.sec.android.sidesync30"

.field private static final TAG:Ljava/lang/String; = "HomeItem"

.field private static supportLiveViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAppInfo:Landroid/content/pm/ApplicationInfo;

.field private mBgColor:I

.field private mBgImageUri:Ljava/lang/String;

.field private mChecked:Z

.field private mCurrentMode:I

.field private mEnabled:Z

.field private volatile mIconImage:Landroid/graphics/Bitmap;

.field private mIconPackage:Ljava/lang/String;

.field private mIconResource:Ljava/lang/String;

.field private mIconType:I

.field private mIsSystemApp:Z

.field private mNeedToInvalidateTitle:Z

.field private mNonDisable:Ljava/lang/Boolean;

.field private mSystemSigned:Ljava/lang/Boolean;

.field private mTitleResId:I

.field private mWidgetItem:Lcom/sec/android/app/launcher/data/AppWidgetItem;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/launcher/data/HomeItem;->supportLiveViews:Ljava/util/HashMap;

    sget-object v0, Lcom/sec/android/app/launcher/data/HomeItem;->supportLiveViews:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.clockpackage"

    const v2, 0x7f03003c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/launcher/data/HomeItem;->supportLiveViews:Ljava/util/HashMap;

    const-string v1, "com.android.calendar"

    const v2, 0x7f03003b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/data/LauncherItem;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mIconImage:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mBgImageUri:Ljava/lang/String;

    iput v2, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mCurrentMode:I

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mIsSystemApp:Z

    iput v0, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mBgColor:I

    iput v0, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mTitleResId:I

    iput-object v1, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mNonDisable:Ljava/lang/Boolean;

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mChecked:Z

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mEnabled:Z

    iput-object v1, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mSystemSigned:Ljava/lang/Boolean;

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mNeedToInvalidateTitle:Z

    iput-object v1, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mIconType:I

    iput-object v1, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mIconPackage:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mIconResource:Ljava/lang/String;

    return-void
.end method

.method private getSupportedModes()[I
    .locals 5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const v3, 0x7f0b00d7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v3, 0x7f0b00da

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v3, 0x7f0b00e0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v3, 0x7f0b00db

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v3, 0x7f0b00dc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v3, 0x7f0b00e1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v3, 0x7f0b00e3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v3, 0x7f0b00d8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v3, 0x7f0b00de

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isTabletLayoutEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    const v3, 0x7f0b00dd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v3, 0x7f0b00df

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/HomeItem;->getDataSourceType()Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_MENU_APPS:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    if-ne v3, v4, :cond_1

    const v3, 0x7f0b00e4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v3, 0x7f0b00e5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mNonDisable:Ljava/lang/Boolean;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mSystemSigned:Ljava/lang/Boolean;

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/HomeItem;->canUninstallOrDisable()Z

    move-result v3

    if-eqz v3, :cond_2

    const v3, 0x7f0b00d9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v3, 0x7f0b00e2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v1, v3, [I

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method private updateImage(Lcom/sec/daliviews/views/Item;)V
    .locals 1

    instance-of v0, p1, Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sec/android/app/launcher/data/HomeItem;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/launcher/data/HomeItem;->loadIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/data/HomeItem;->setIconImage(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public canUninstallOrDisable()Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getInst()Lcom/sec/android/app/launcher/activities/LauncherApp;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mPackageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/sec/android/app/launcher/utils/Utils;->isBlockUninstall(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mIsSystemApp:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/HomeItem;->isNonDisable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/HomeItem;->isSystemSigned()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/sec/android/app/launcher/data/LauncherItem;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/data/HomeItem;

    iget v1, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mCurrentMode:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/data/HomeItem;->setCurrentMode(I)V

    iget v1, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mBgColor:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/data/HomeItem;->setBgColor(I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mBgImageUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/data/HomeItem;->setBgImageUri(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/data/HomeItem;->setTitle(Ljava/lang/String;)V

    iget v1, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mBadgeCount:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/data/HomeItem;->setBadgeCount(I)V

    return-object v0
.end method

.method public getAppInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public getBgColor()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mBgColor:I

    return v0
.end method

.method public getBgImageUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mBgImageUri:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentMode()I
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/HomeItem;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    instance-of v2, v1, Lcom/sec/android/app/launcher/views/HomeItemView;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/sec/android/app/launcher/views/HomeItemView;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/views/HomeItemView;->getCurrentMode()I

    move-result v0

    check-cast v1, Lcom/sec/android/app/launcher/views/HomeItemView;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/views/HomeItemView;->getCurrentMode()I

    move-result v2

    if-ltz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mCurrentMode:I

    goto :goto_0
.end method

.method public getIconImage()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mIconImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getIconPackgae()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mIconPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getIconResource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mIconResource:Ljava/lang/String;

    return-object v0
.end method

.method public getIconType()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mIconType:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mPackageName:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mPackageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mPackageName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/launcher/data/LauncherItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hasLiveIcon()Z
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/HomeItem;->getUserId()J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/sec/android/app/launcher/utils/Utils;->getMyUserSerialNumber(Landroid/content/Context;)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-boolean v1, Lcom/sec/android/app/launcher/activities/LauncherApp;->mLiveIconEnabled:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/android/app/launcher/data/HomeItem;->supportLiveViews:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/HomeItem;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public invalidateTitleIfNeed()V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mNeedToInvalidateTitle:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/HomeItem;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/views/HomeItemView;

    if-eqz v0, :cond_3

    iget v1, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mTitleResId:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mTitleResId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/views/HomeItemView;->setTitle(I)V

    :goto_0
    iput-boolean v3, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mNeedToInvalidateTitle:Z

    const-string v1, "HomeItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalidateTitleIfNeed() : invalidate "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mTitle:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, "HomeItem"

    const-string v2, "invalidateTitleIfNeed() : mTitle is null yet"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mTitle:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/HomeItem;->getContainerType()I

    move-result v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/launcher/views/HomeItemView;->setTitle(Ljava/lang/String;II)V

    goto :goto_0

    :cond_3
    const-string v1, "HomeItem"

    const-string v2, "invalidateTitleIfNeed() : view is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public isBlockUninstall()Z
    .locals 2

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getInst()Lcom/sec/android/app/launcher/activities/LauncherApp;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sec/android/app/launcher/utils/Utils;->isBlockUninstall(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mChecked:Z

    return v0
.end method

.method public isCompatable(Lcom/sec/daliviews/views/NativeViewBase;)Z
    .locals 1

    instance-of v0, p1, Lcom/sec/android/app/launcher/views/HomeItemView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mEnabled:Z

    return v0
.end method

.method public isNonDisable()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mNonDisable:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->isNonDisableItem(Lcom/sec/android/app/launcher/data/HomeItem;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mNonDisable:Ljava/lang/Boolean;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mNonDisable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isSystemApp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mIsSystemApp:Z

    return v0
.end method

.method public isSystemSigned()Z
    .locals 4

    iget-object v2, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mSystemSigned:Ljava/lang/Boolean;

    if-nez v2, :cond_1

    const-string v2, "com.samsung.android.app.watchmanager"

    iget-object v3, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.sec.android.sidesync30"

    iget-object v3, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mSystemSigned:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/HomeItem;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    instance-of v2, v1, Lcom/sec/android/app/launcher/views/HomeItemView;

    if-eqz v2, :cond_1

    move-object v0, v1

    check-cast v0, Lcom/sec/android/app/launcher/views/HomeItemView;

    invoke-direct {p0}, Lcom/sec/android/app/launcher/data/HomeItem;->getSupportedModes()[I

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/launcher/views/HomeItemView;->setSupportedModes([I)V

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mSystemSigned:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2

    :cond_2
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getInst()Lcom/sec/android/app/launcher/activities/LauncherApp;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mPackageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sec/android/app/launcher/utils/Utils;->isSystemSignature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mSystemSigned:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public loadBgImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mDataConnector:Lcom/sec/android/app/launcher/data/connectors/DataConnector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mDataConnector:Lcom/sec/android/app/launcher/data/connectors/DataConnector;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->loadBgImage(Lcom/sec/daliviews/views/Item;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9

    const/4 v8, 0x1

    iget-object v3, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mIconImage:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/HomeItem;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/launcher/views/HomeItemView;

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mIconImage:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isPremultiplied()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v8}, Lcom/sec/android/app/launcher/views/HomeItemView;->setPremultiplied(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mIconImage:Landroid/graphics/Bitmap;

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mDataConnector:Lcom/sec/android/app/launcher/data/connectors/DataConnector;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mDataConnector:Lcom/sec/android/app/launcher/data/connectors/DataConnector;

    invoke-virtual {v3, p0}, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->loadIconImage(Lcom/sec/daliviews/views/Item;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mIconImage:Landroid/graphics/Bitmap;

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/HomeItem;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/launcher/views/HomeItemView;

    if-eqz v1, :cond_1

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mIconImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v8}, Lcom/sec/android/app/launcher/views/HomeItemView;->setPremultiplied(Z)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mComponentName:Landroid/content/ComponentName;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mDataConnector:Lcom/sec/android/app/launcher/data/connectors/DataConnector;

    if-eqz v3, :cond_6

    const-string v3, "HomeItem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HomeItem::loadIcon() return null : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getThemeManager()Lcom/sec/android/app/launcher/theme/ThemeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getThemeLoader()Lcom/sec/android/app/launcher/theme/ThemeLoader;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->APP_ICON:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->value()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/launcher/theme/ThemeLoader;->getIsTheme(I)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mDataConnector:Lcom/sec/android/app/launcher/data/connectors/DataConnector;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->getUserManager()Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/HomeItem;->getUserId()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/os/UserManager;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v4

    invoke-static {v3, p0, v4}, Lcom/sec/android/app/launcher/utils/Utils;->getIcon(Landroid/content/Context;Lcom/sec/android/app/launcher/data/HomeItem;Landroid/os/UserHandle;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_4

    const-string v3, "HomeItem"

    const-string v4, "HomeItem::loadIcon() DefaultIcon"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/launcher/utils/Utils;->getDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_4
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mIconImage:Landroid/graphics/Bitmap;

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/HomeItem;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/launcher/views/HomeItemView;

    if-eqz v1, :cond_1

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mIconImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v8}, Lcom/sec/android/app/launcher/views/HomeItemView;->setPremultiplied(Z)V

    goto/16 :goto_0

    :cond_5
    iget-object v3, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mDataConnector:Lcom/sec/android/app/launcher/data/connectors/DataConnector;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->getUserManager()Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/HomeItem;->getUserId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/os/UserManager;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v2

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getThemeManager()Lcom/sec/android/app/launcher/theme/ThemeManager;

    move-result-object v3

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v4

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mComponentName:Landroid/content/ComponentName;

    invoke-static {v5, v6, v2}, Lcom/sec/android/app/launcher/utils/Utils;->getLauncherActivityInfo(Landroid/content/Context;Landroid/content/ComponentName;Landroid/os/UserHandle;)Landroid/content/pm/LauncherActivityInfo;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getThemeAppIcon(Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public onCreateItemView()Lcom/sec/daliviews/views/NativeViewBase;
    .locals 5

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getViewInflater()Lcom/sec/daliviews/views/ViewInflater;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/HomeItem;->getContainerType()I

    move-result v2

    sget-object v3, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->MENU:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_0

    const-string v2, "HomeItem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "create:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/HomeItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/HomeItem;->getContainerId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/HomeItem;->getCustomPos()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const v2, 0x7f030028

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/ViewInflater;->inflate(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/views/HomeItemView;

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/app/launcher/views/HomeItemView;->setHasModes(Z)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/data/HomeItem;->populateView(Lcom/sec/daliviews/views/NativeViewBase;)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/data/HomeItem;->onCreateItemViewListener:Lcom/sec/android/app/launcher/data/LauncherItem$OnCreateItemViewListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/launcher/data/HomeItem;->onCreateItemViewListener:Lcom/sec/android/app/launcher/data/LauncherItem$OnCreateItemViewListener;

    invoke-interface {v2, v0}, Lcom/sec/android/app/launcher/data/LauncherItem$OnCreateItemViewListener;->onCreateItemView(Lcom/sec/daliviews/views/IconView;)V

    :cond_1
    return-object v0
.end method

.method public packageUpdated(Lcom/sec/daliviews/views/Item;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/data/HomeItem;->updateImage(Lcom/sec/daliviews/views/Item;)V

    return-void
.end method

.method public populateView(Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 7

    const/4 v6, 0x0

    move-object v2, p1

    check-cast v2, Lcom/sec/android/app/launcher/views/HomeItemView;

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/sec/android/app/launcher/data/HomeItem;->getIconImageLoadingPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/android/app/launcher/views/HomeItemView;->setIconBitmap(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/HomeItem;->getContainerType()I

    move-result v1

    const/4 v0, 0x0

    iget v4, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mTitleResId:I

    if-lez v4, :cond_3

    iget v4, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mTitleResId:I

    invoke-virtual {v2, v4}, Lcom/sec/android/app/launcher/views/HomeItemView;->setTitle(I)V

    iput-boolean v6, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mNeedToInvalidateTitle:Z

    :cond_0
    :goto_0
    iget-boolean v4, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mEnabled:Z

    invoke-virtual {v2, v4}, Lcom/sec/android/app/launcher/views/HomeItemView;->setEnabled(Z)V

    iget-boolean v4, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mChecked:Z

    invoke-virtual {v2, v4}, Lcom/sec/android/app/launcher/views/HomeItemView;->setChecked(Z)V

    invoke-virtual {v2, p0}, Lcom/sec/android/app/launcher/views/HomeItemView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/HomeItem;->getDataSourceType()Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_MENU_APPS:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    if-ne v4, v5, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/HomeItem;->canUninstallOrDisable()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2, p0}, Lcom/sec/android/app/launcher/views/HomeItemView;->inflateUninstallView(Lcom/sec/android/app/launcher/data/HomeItem;)V

    :cond_1
    iget v4, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mBadgeCount:I

    invoke-virtual {v2, v4}, Lcom/sec/android/app/launcher/views/HomeItemView;->setBadge(I)V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/data/HomeItem;->getSupportedModes()[I

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/android/app/launcher/views/HomeItemView;->setSupportedModes([I)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/HomeItem;->hasLiveIcon()Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/sec/android/app/launcher/data/HomeItem;->supportLiveViews:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/HomeItem;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/android/app/launcher/views/HomeItemView;->inflateViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/launcher/views/LiveView;

    invoke-virtual {v2, v6}, Lcom/sec/android/app/launcher/views/HomeItemView;->setRecyclable(Z)V

    invoke-virtual {v2, v3}, Lcom/sec/android/app/launcher/views/HomeItemView;->setLiveView(Lcom/sec/android/app/launcher/views/LiveView;)V

    invoke-virtual {v3, v2}, Lcom/sec/android/app/launcher/views/LiveView;->setIconView(Lcom/sec/android/app/launcher/views/HomeItemView;)V

    :cond_2
    return-void

    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v4, v1, v0}, Lcom/sec/android/app/launcher/views/HomeItemView;->setTitle(Ljava/lang/String;II)V

    iget-object v4, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mTitle:Ljava/lang/String;

    if-eqz v4, :cond_0

    iput-boolean v6, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mNeedToInvalidateTitle:Z

    goto :goto_0
.end method

.method public setAppInfo(Landroid/content/pm/ApplicationInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    return-void
.end method

.method public setBadgeCount(I)V
    .locals 6

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/HomeItem;->getUserId()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const-string v1, "HomeItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/HomeItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "setBadgeCount User is not same. myUser: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", userId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/HomeItem;->getUserId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/app/launcher/data/LauncherItem;->setBadgeCount(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/HomeItem;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/views/HomeItemView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/views/HomeItemView;->setBadge(I)V

    goto :goto_0

    :cond_1
    const-string v1, "HomeItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/HomeItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", HomeItemView is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setBgColor(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mBgColor:I

    return-void
.end method

.method public setBgImageUri(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mBgImageUri:Ljava/lang/String;

    return-void
.end method

.method public setChecked(Z)V
    .locals 2

    iget-boolean v1, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mChecked:Z

    if-eq v1, p1, :cond_0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mChecked:Z

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/HomeItem;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/views/HomeItemView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/views/HomeItemView;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public setCurrentMode(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mCurrentMode:I

    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    iget-boolean v1, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mEnabled:Z

    if-eq v1, p1, :cond_0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mEnabled:Z

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/HomeItem;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/views/HomeItemView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/views/HomeItemView;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setIconImage(Landroid/graphics/Bitmap;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mIconImage:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/HomeItem;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    instance-of v1, v0, Lcom/sec/android/app/launcher/views/HomeItemView;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/sec/android/app/launcher/views/HomeItemView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/views/HomeItemView;->setIconBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public setIconPackgae(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mIconPackage:Ljava/lang/String;

    return-void
.end method

.method public setIconResource(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mIconResource:Ljava/lang/String;

    return-void
.end method

.method public setIconType(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mIconType:I

    return-void
.end method

.method public setIsSystemApp(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mIsSystemApp:Z

    return-void
.end method

.method public setSpanX(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/app/launcher/data/LauncherItem;->setSpanX(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mWidgetItem:Lcom/sec/android/app/launcher/data/AppWidgetItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mWidgetItem:Lcom/sec/android/app/launcher/data/AppWidgetItem;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/data/AppWidgetItem;->setSpanX(I)V

    :cond_0
    return-void
.end method

.method public setSpanY(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/app/launcher/data/LauncherItem;->setSpanY(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mWidgetItem:Lcom/sec/android/app/launcher/data/AppWidgetItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mWidgetItem:Lcom/sec/android/app/launcher/data/AppWidgetItem;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/data/AppWidgetItem;->setSpanY(I)V

    :cond_0
    return-void
.end method

.method public setTitle(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mTitleResId:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 8

    invoke-super {p0, p1}, Lcom/sec/android/app/launcher/data/LauncherItem;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/HomeItem;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/launcher/views/HomeItemView;

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/HomeItem;->getContainerType()I

    move-result v1

    const/4 v0, 0x0

    sget-object v5, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->FOLDER:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v5

    if-ne v1, v5, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/HomeItem;->getDataConnector()Lcom/sec/android/app/launcher/data/connectors/DataConnector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->getSourceType()Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    move-result-object v5

    sget-object v6, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_MENU_APPS:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    if-ne v5, v6, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/HomeItem;->getCustomContainerId()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v2, v6, v7}, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->getItem(J)Lcom/sec/daliviews/views/Item;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/launcher/data/FolderItem;

    :goto_0
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/FolderItem;->getFolderColorIndex()I

    move-result v0

    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v4, v5, v1, v0}, Lcom/sec/android/app/launcher/views/HomeItemView;->setTitle(Ljava/lang/String;II)V

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mNeedToInvalidateTitle:Z

    :goto_1
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/HomeItem;->getContainerId()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v2, v6, v7}, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->getItem(J)Lcom/sec/daliviews/views/Item;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/launcher/data/FolderItem;

    goto :goto_0

    :cond_2
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mNeedToInvalidateTitle:Z

    goto :goto_1
.end method

.method public setWidgetItem(Lcom/sec/android/app/launcher/data/AppWidgetItem;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mWidgetItem:Lcom/sec/android/app/launcher/data/AppWidgetItem;

    return-void
.end method

.method public toggleChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/data/HomeItem;->setChecked(Z)V

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/data/HomeItem;->mChecked:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

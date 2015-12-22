.class public Lcom/android/systemui/recents/model/RecentsTaskLoader;
.super Ljava/lang/Object;
.source "RecentsTaskLoader.java"


# static fields
.field static INVALID_TASK_ID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Recents_RecentsTaskLoader"

.field private static final TW_TAG:Ljava/lang/String; = "StautsBar-RecentsTaskLoader"

.field static sInstance:Lcom/android/systemui/recents/model/RecentsTaskLoader;


# instance fields
.field mActivityLabelCache:Lcom/android/systemui/recents/model/StringLruCache;

.field mApplicationIconCache:Lcom/android/systemui/recents/model/DrawableLruCache;

.field mCascadeBoarderThickness:I

.field mContext:Landroid/content/Context;

.field mDefaultApplicationIcon:Landroid/graphics/drawable/BitmapDrawable;

.field mDefaultThumbnail:Landroid/graphics/Bitmap;

.field mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

.field mLoader:Lcom/android/systemui/recents/model/TaskResourceLoader;

.field mMaxIconCacheSize:I

.field mMaxThumbnailCacheSize:I

.field mNumVisibleTasksLoaded:I

.field mNumVisibleThumbnailsLoaded:I

.field mPackageMonitor:Lcom/android/systemui/recents/model/RecentsPackageMonitor;

.field private mServiceBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

.field mThumbnailCache:Lcom/android/systemui/recents/model/BitmapLruCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->INVALID_TASK_ID:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 10

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/recents/model/RecentsTaskLoader$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/model/RecentsTaskLoader$1;-><init>(Lcom/android/systemui/recents/model/RecentsTaskLoader;)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mServiceBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string v0, "Recents_RecentsTaskLoader"

    const-string v1, "RecentsTaskLoader constructor is getting called"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mMaxThumbnailCacheSize:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mMaxIconCacheSize:I

    iget v8, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mMaxIconCacheSize:I

    iget v9, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mMaxThumbnailCacheSize:I

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultThumbnail:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultThumbnail:Landroid/graphics/Bitmap;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultApplicationIcon:Landroid/graphics/drawable/BitmapDrawable;

    new-instance v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-direct {v0, p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    new-instance v0, Lcom/android/systemui/recents/model/RecentsPackageMonitor;

    invoke-direct {v0}, Lcom/android/systemui/recents/model/RecentsPackageMonitor;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mPackageMonitor:Lcom/android/systemui/recents/model/RecentsPackageMonitor;

    new-instance v0, Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    invoke-direct {v0}, Lcom/android/systemui/recents/model/TaskResourceLoadQueue;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    new-instance v0, Lcom/android/systemui/recents/model/DrawableLruCache;

    invoke-direct {v0, v8}, Lcom/android/systemui/recents/model/DrawableLruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mApplicationIconCache:Lcom/android/systemui/recents/model/DrawableLruCache;

    new-instance v0, Lcom/android/systemui/recents/model/BitmapLruCache;

    invoke-direct {v0, v9}, Lcom/android/systemui/recents/model/BitmapLruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/BitmapLruCache;

    new-instance v0, Lcom/android/systemui/recents/model/StringLruCache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/model/StringLruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mActivityLabelCache:Lcom/android/systemui/recents/model/StringLruCache;

    new-instance v0, Lcom/android/systemui/recents/model/TaskResourceLoader;

    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    iget-object v2, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mApplicationIconCache:Lcom/android/systemui/recents/model/DrawableLruCache;

    iget-object v3, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/BitmapLruCache;

    iget-object v4, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultThumbnail:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultApplicationIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/recents/model/TaskResourceLoader;-><init>(Lcom/android/systemui/recents/model/TaskResourceLoadQueue;Lcom/android/systemui/recents/model/DrawableLruCache;Lcom/android/systemui/recents/model/BitmapLruCache;Landroid/graphics/Bitmap;Landroid/graphics/drawable/BitmapDrawable;)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mLoader:Lcom/android/systemui/recents/model/TaskResourceLoader;

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050244

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mCascadeBoarderThickness:I

    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.samsung.android.theme.themecenter.THEME_APPLY"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mServiceBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/recents/model/RecentsTaskLoader;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->clearApplicationIconCache()V

    return-void
.end method

.method private clearApplicationIconCache()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mApplicationIconCache:Lcom/android/systemui/recents/model/DrawableLruCache;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/DrawableLruCache;->evictAll()V

    return-void
.end method

.method public static getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;
    .locals 1

    sget-object v0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->sInstance:Lcom/android/systemui/recents/model/RecentsTaskLoader;

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoader;
    .locals 1

    sget-object v0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->sInstance:Lcom/android/systemui/recents/model/RecentsTaskLoader;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/recents/model/RecentsTaskLoader;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->sInstance:Lcom/android/systemui/recents/model/RecentsTaskLoader;

    :cond_0
    sget-object v0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->sInstance:Lcom/android/systemui/recents/model/RecentsTaskLoader;

    return-object v0
.end method


# virtual methods
.method public clearAllCache()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/BitmapLruCache;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/BitmapLruCache;->evictAll()V

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mApplicationIconCache:Lcom/android/systemui/recents/model/DrawableLruCache;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/DrawableLruCache;->evictAll()V

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mActivityLabelCache:Lcom/android/systemui/recents/model/StringLruCache;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/StringLruCache;->evictAll()V

    return-void
.end method

.method public createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    .locals 3

    invoke-static {}, Lcom/android/systemui/recents/RecentsConfiguration;->getInstance()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    iget-object v2, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-direct {v1, p1, v0, v2}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/RecentsConfiguration;Lcom/android/systemui/recents/misc/SystemServicesProxy;)V

    return-object v1
.end method

.method public createLoadPlan(Landroid/content/Context;I)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    .locals 3

    invoke-static {p2}, Lcom/android/systemui/recents/RecentsConfiguration;->getInstance(I)Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    iget-object v2, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-direct {v1, p1, v0, v2}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/RecentsConfiguration;Lcom/android/systemui/recents/misc/SystemServicesProxy;)V

    return-object v1
.end method

.method public deleteTaskData(Lcom/android/systemui/recents/model/Task;Z)V
    .locals 2

    const-string v0, "Recents_RecentsTaskLoader"

    const-string v1, "deleteTaskData is getting called"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/model/TaskResourceLoadQueue;->removeTask(Lcom/android/systemui/recents/model/Task;)V

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/BitmapLruCache;

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/BitmapLruCache;->remove(Lcom/android/systemui/recents/model/Task$TaskKey;)V

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mApplicationIconCache:Lcom/android/systemui/recents/model/DrawableLruCache;

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/DrawableLruCache;->remove(Lcom/android/systemui/recents/model/Task$TaskKey;)V

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultApplicationIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/recents/model/Task;->notifyTaskDataUnloaded(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public getActivityPrimaryColor(Landroid/app/ActivityManager$TaskDescription;Lcom/android/systemui/recents/RecentsConfiguration;)I
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p2, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarViewDefaultBackgroundColor:I

    goto :goto_0
.end method

.method public getActivityTextPrimaryColor(Landroid/app/ActivityManager$TaskDescription;Lcom/android/systemui/recents/RecentsConfiguration;)I
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getTextPrimaryColor()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getTextPrimaryColor()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p2, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarViewLightTextColor:I

    goto :goto_0
.end method

.method public getAndUpdateActivityIcon(Lcom/android/systemui/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;Lcom/android/systemui/recents/misc/SystemServicesProxy;Landroid/content/res/Resources;Lcom/android/systemui/recents/model/ActivityInfoHandle;Z)Landroid/graphics/drawable/Drawable;
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mApplicationIconCache:Lcom/android/systemui/recents/model/DrawableLruCache;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/model/DrawableLruCache;->getAndInvalidateIfModified(Lcom/android/systemui/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_0

    move-object v7, v6

    :goto_0
    return-object v7

    :cond_0
    if-eqz p6, :cond_3

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mLoader:Lcom/android/systemui/recents/model/TaskResourceLoader;

    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getInMemoryIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v3

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/model/TaskResourceLoader;->getTaskDescriptionIcon(Lcom/android/systemui/recents/model/Task$TaskKey;Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/android/systemui/recents/misc/SystemServicesProxy;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mApplicationIconCache:Lcom/android/systemui/recents/model/DrawableLruCache;

    invoke-virtual {v0, p1, v7}, Lcom/android/systemui/recents/model/DrawableLruCache;->put(Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p5, Lcom/android/systemui/recents/model/ActivityInfoHandle;->info:Landroid/content/pm/ActivityInfo;

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    iget v1, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {p3, v0, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iput-object v0, p5, Lcom/android/systemui/recents/model/ActivityInfoHandle;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, p5, Lcom/android/systemui/recents/model/ActivityInfoHandle;->info:Landroid/content/pm/ActivityInfo;

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/android/systemui/recents/model/Task$TaskKey;->getOrigActivity()Landroid/content/ComponentName;

    move-result-object v0

    iget v1, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {p3, v0, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iput-object v0, p5, Lcom/android/systemui/recents/model/ActivityInfoHandle;->info:Landroid/content/pm/ActivityInfo;

    :cond_2
    iget-object v0, p5, Lcom/android/systemui/recents/model/ActivityInfoHandle;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_3

    iget-object v0, p5, Lcom/android/systemui/recents/model/ActivityInfoHandle;->info:Landroid/content/pm/ActivityInfo;

    iget v1, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {p3, v0, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getActivityIcon(Landroid/content/pm/ActivityInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mApplicationIconCache:Lcom/android/systemui/recents/model/DrawableLruCache;

    invoke-virtual {v0, p1, v6}, Lcom/android/systemui/recents/model/DrawableLruCache;->put(Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/Object;)V

    move-object v7, v6

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public getAndUpdateActivityInfo(Lcom/android/systemui/recents/model/Task$TaskKey;Lcom/android/systemui/recents/misc/SystemServicesProxy;Lcom/android/systemui/recents/model/ActivityInfoHandle;)Landroid/content/pm/ActivityInfo;
    .locals 2

    iget-object v0, p3, Lcom/android/systemui/recents/model/ActivityInfoHandle;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_0

    iget-object v0, p3, Lcom/android/systemui/recents/model/ActivityInfoHandle;->info:Landroid/content/pm/ActivityInfo;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    iget v1, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {p2, v0, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iput-object v0, p3, Lcom/android/systemui/recents/model/ActivityInfoHandle;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, p3, Lcom/android/systemui/recents/model/ActivityInfoHandle;->info:Landroid/content/pm/ActivityInfo;

    goto :goto_0
.end method

.method public getAndUpdateActivityLabel(Lcom/android/systemui/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;Lcom/android/systemui/recents/misc/SystemServicesProxy;Lcom/android/systemui/recents/model/ActivityInfoHandle;)Ljava/lang/String;
    .locals 4

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mActivityLabelCache:Lcom/android/systemui/recents/model/StringLruCache;

    invoke-virtual {v1, p1}, Lcom/android/systemui/recents/model/StringLruCache;->getAndInvalidateIfModified(Lcom/android/systemui/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v1, p4, Lcom/android/systemui/recents/model/ActivityInfoHandle;->info:Landroid/content/pm/ActivityInfo;

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    iget v2, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {p3, v1, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iput-object v1, p4, Lcom/android/systemui/recents/model/ActivityInfoHandle;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, p4, Lcom/android/systemui/recents/model/ActivityInfoHandle;->info:Landroid/content/pm/ActivityInfo;

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/android/systemui/recents/model/Task$TaskKey;->getOrigActivity()Landroid/content/ComponentName;

    move-result-object v1

    iget v2, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {p3, v1, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iput-object v1, p4, Lcom/android/systemui/recents/model/ActivityInfoHandle;->info:Landroid/content/pm/ActivityInfo;

    :cond_2
    iget-object v1, p4, Lcom/android/systemui/recents/model/ActivityInfoHandle;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_3

    iget-object v1, p4, Lcom/android/systemui/recents/model/ActivityInfoHandle;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p3, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getActivityLabel(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mActivityLabelCache:Lcom/android/systemui/recents/model/StringLruCache;

    invoke-virtual {v1, p1, v0}, Lcom/android/systemui/recents/model/StringLruCache;->put(Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const-string v1, "Recents_RecentsTaskLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing ActivityInfo for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " u="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getAndUpdateThumbnail(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/misc/SystemServicesProxy;Z)Landroid/graphics/Bitmap;
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/BitmapLruCache;

    iget-object v3, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/model/BitmapLruCache;->getAndInvalidateIfModified(Lcom/android/systemui/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    move-object v2, v1

    :goto_0
    return-object v2

    :cond_0
    const/4 v0, 0x0

    invoke-static {}, Lcom/android/systemui/recents/RecentsConfiguration;->getInstance()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget v2, v0, Lcom/android/systemui/recents/RecentsConfiguration;->svelteLevel:I

    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    if-eqz p3, :cond_1

    const-string v2, "Recents_RecentsTaskLoader"

    const-string v3, "getAndUpdateThumbnail getTaskThumbnail"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2, p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getTaskThumbnail(Lcom/android/systemui/recents/model/Task;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/BitmapLruCache;

    iget-object v3, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/recents/model/BitmapLruCache;->put(Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/Object;)V

    move-object v2, v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getApplicationIconCacheSize()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mMaxIconCacheSize:I

    return v0
.end method

.method public getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    return-object v0
.end method

.method public getThumbnailCacheSize()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mMaxThumbnailCacheSize:I

    return v0
.end method

.method public isSupportMultiWindow(Landroid/content/pm/ActivityInfo;Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z
    .locals 3

    const/4 v1, 0x0

    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportMultiWindow(Landroid/content/pm/ActivityInfo;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p2, :cond_2

    const/16 v2, 0x1000

    invoke-virtual {p2, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/high16 v2, 0x200000

    invoke-virtual {p2, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x2

    invoke-virtual {p2, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public loadTaskData(Lcom/android/systemui/recents/model/Task;)V
    .locals 7

    const-string v4, "Recents_RecentsTaskLoader"

    const-string v5, "loadTaskData is getting called"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/systemui/recents/RecentsConfiguration;->getInstance()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    iget-object v4, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mApplicationIconCache:Lcom/android/systemui/recents/model/DrawableLruCache;

    iget-object v5, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/model/DrawableLruCache;->getAndInvalidateIfModified(Lcom/android/systemui/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    iget-boolean v4, v1, Lcom/android/systemui/recents/RecentsConfiguration;->mIsPrivateModeEnabled:Z

    if-nez v4, :cond_4

    iget-boolean v4, p1, Lcom/android/systemui/recents/model/Task;->isSecretMode:Z

    if-eqz v4, :cond_4

    const-string v4, "Recents_RecentsTaskLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loaded bitmap for task "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v6, v6, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isPrivate? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p1, Lcom/android/systemui/recents/model/Task;->isSecretMode:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " PrivateSetting:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, v1, Lcom/android/systemui/recents/RecentsConfiguration;->mIsPrivateModeEnabled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v4, p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getTaskThumbnail(Lcom/android/systemui/recents/model/Task;)Landroid/graphics/Bitmap;

    move-result-object v3

    :goto_0
    if-eqz v0, :cond_0

    if-nez v3, :cond_5

    :cond_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v0, :cond_6

    :goto_2
    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    invoke-virtual {v4, p1}, Lcom/android/systemui/recents/model/TaskResourceLoadQueue;->addTask(Lcom/android/systemui/recents/model/Task;)V

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultThumbnail:Landroid/graphics/Bitmap;

    if-ne v3, v4, :cond_2

    const/4 v3, 0x0

    :cond_2
    invoke-virtual {p1, v3, v0}, Lcom/android/systemui/recents/model/Task;->notifyTaskDataLoaded(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultThumbnail:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/BitmapLruCache;

    iget-object v5, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/model/BitmapLruCache;->getAndInvalidateIfModified(Lcom/android/systemui/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultApplicationIcon:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_2
.end method

.method public loadTasks(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;)V
    .locals 2

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Requires load options"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    invoke-virtual {p2, p3, p0, v0}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->executePlan(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;Lcom/android/systemui/recents/model/RecentsTaskLoader;Lcom/android/systemui/recents/model/TaskResourceLoadQueue;)V

    iget-boolean v0, p3, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadForCache:Z

    if-nez v0, :cond_1

    iget v0, p3, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    iput v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mNumVisibleTasksLoaded:I

    iget v0, p3, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    iput v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mNumVisibleThumbnailsLoaded:I

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mLoader:Lcom/android/systemui/recents/model/TaskResourceLoader;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/model/TaskResourceLoader;->start(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/systemui/recents/RecentsConfiguration;->getInstance()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->stopLoader()V

    iget v1, v0, Lcom/android/systemui/recents/RecentsConfiguration;->svelteLevel:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/BitmapLruCache;

    iget v2, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mNumVisibleTasksLoaded:I

    iget v3, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mMaxThumbnailCacheSize:I

    div-int/lit8 v3, v3, 0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/model/BitmapLruCache;->trimToSize(I)V

    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mApplicationIconCache:Lcom/android/systemui/recents/model/DrawableLruCache;

    iget v2, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mNumVisibleTasksLoaded:I

    iget v3, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mMaxIconCacheSize:I

    div-int/lit8 v3, v3, 0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/model/DrawableLruCache;->trimToSize(I)V

    goto :goto_0

    :cond_1
    iget v1, v0, Lcom/android/systemui/recents/RecentsConfiguration;->svelteLevel:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/BitmapLruCache;

    iget v2, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mNumVisibleThumbnailsLoaded:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/model/BitmapLruCache;->trimToSize(I)V

    goto :goto_1

    :cond_2
    iget v1, v0, Lcom/android/systemui/recents/RecentsConfiguration;->svelteLevel:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/BitmapLruCache;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/BitmapLruCache;->evictAll()V

    goto :goto_1

    :sswitch_1
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/BitmapLruCache;

    iget v2, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mMaxThumbnailCacheSize:I

    div-int/lit8 v2, v2, 0x2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/model/BitmapLruCache;->trimToSize(I)V

    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mApplicationIconCache:Lcom/android/systemui/recents/model/DrawableLruCache;

    iget v2, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mMaxIconCacheSize:I

    div-int/lit8 v2, v2, 0x2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/model/DrawableLruCache;->trimToSize(I)V

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/BitmapLruCache;

    iget v2, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mMaxThumbnailCacheSize:I

    div-int/lit8 v2, v2, 0x4

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/model/BitmapLruCache;->trimToSize(I)V

    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mApplicationIconCache:Lcom/android/systemui/recents/model/DrawableLruCache;

    iget v2, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mMaxIconCacheSize:I

    div-int/lit8 v2, v2, 0x4

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/model/DrawableLruCache;->trimToSize(I)V

    goto :goto_0

    :sswitch_3
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/BitmapLruCache;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/BitmapLruCache;->evictAll()V

    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mApplicationIconCache:Lcom/android/systemui/recents/model/DrawableLruCache;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/DrawableLruCache;->evictAll()V

    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mActivityLabelCache:Lcom/android/systemui/recents/model/StringLruCache;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/StringLruCache;->evictAll()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_1
        0xa -> :sswitch_2
        0xf -> :sswitch_3
        0x14 -> :sswitch_0
        0x28 -> :sswitch_1
        0x3c -> :sswitch_2
        0x50 -> :sswitch_3
    .end sparse-switch
.end method

.method public preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;ZIZ)V

    return-void
.end method

.method public preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;ZI)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, p0, p2, p3, v0}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->preloadPlan(Lcom/android/systemui/recents/model/RecentsTaskLoader;ZIZ)V

    return-void
.end method

.method public preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;ZIZ)V
    .locals 0

    invoke-virtual {p1, p0, p2, p3, p4}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->preloadPlan(Lcom/android/systemui/recents/model/RecentsTaskLoader;ZIZ)V

    return-void
.end method

.method public registerReceivers(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsPackageMonitor$PackageCallbacks;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mPackageMonitor:Lcom/android/systemui/recents/model/RecentsPackageMonitor;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->register(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsPackageMonitor$PackageCallbacks;)V

    return-void
.end method

.method stopLoader()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mLoader:Lcom/android/systemui/recents/model/TaskResourceLoader;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskResourceLoader;->stop()V

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskResourceLoadQueue;->clearTasks()V

    return-void
.end method

.method public unloadTaskData(Lcom/android/systemui/recents/model/Task;)V
    .locals 2

    const-string v0, "Recents_RecentsTaskLoader"

    const-string v1, "unloadTaskData is getting called"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/model/TaskResourceLoadQueue;->removeTask(Lcom/android/systemui/recents/model/Task;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultApplicationIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/recents/model/Task;->notifyTaskDataUnloaded(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public unregisterReceivers()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mPackageMonitor:Lcom/android/systemui/recents/model/RecentsPackageMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->unregister()V

    return-void
.end method

.class public Lcom/sec/android/cover/sviewcover/effect/CoverPreviewInflater;
.super Ljava/lang/Object;
.source "CoverPreviewInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/sviewcover/effect/CoverPreviewInflater$1;,
        Lcom/sec/android/cover/sviewcover/effect/CoverPreviewInflater$WidgetInfo;
    }
.end annotation


# static fields
.field private static final META_DATA_COVER_LAYOUT:Ljava/lang/String; = "com.samsung.cover.layout"

.field private static final TAG:Ljava/lang/String; = "CoverPreviewInflater"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewInflater;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewInflater;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method private getWidgetInfo(Landroid/content/Intent;)Lcom/sec/android/cover/sviewcover/effect/CoverPreviewInflater$WidgetInfo;
    .locals 9

    const/4 v6, 0x0

    new-instance v1, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewInflater$WidgetInfo;

    invoke-direct {v1, v6}, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewInflater$WidgetInfo;-><init>(Lcom/sec/android/cover/sviewcover/effect/CoverPreviewInflater$1;)V

    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v7, 0x10000

    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewInflater;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v8

    invoke-virtual {v3, p1, v7, v8}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "CoverPreviewInflater"

    const-string v8, "appList.size() == 0"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v6

    :goto_0
    return-object v1

    :cond_0
    const v7, 0x10080

    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewInflater;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v8

    invoke-virtual {v3, p1, v7, v8}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewInflater;->wouldLaunchResolverActivity(Landroid/content/pm/ResolveInfo;Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "CoverPreviewInflater"

    const-string v8, "wouldLaunchResolverActivity(resolved, appList)"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v6

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_2

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v7, :cond_3

    :cond_2
    const-string v7, "CoverPreviewInflater"

    const-string v8, "resolved == null || resolved.activityInfo == null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v6

    goto :goto_0

    :cond_3
    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v7, :cond_4

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v7}, Landroid/os/Bundle;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_4
    const-string v7, "CoverPreviewInflater"

    const-string v8, "resolved.activityInfo.metaData == null || resolved.activityInfo.metaData.isEmpty()"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v6

    goto :goto_0

    :cond_5
    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v8, "com.samsung.cover.layout"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_6

    const-string v7, "CoverPreviewInflater"

    const-string v8, "layoutId == 0"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v6

    goto :goto_0

    :cond_6
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v5, v6, Landroid/content/pm/ActivityInfo;->theme:I

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v6, v1, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewInflater$WidgetInfo;->contextPackage:Ljava/lang/String;

    iput v2, v1, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewInflater$WidgetInfo;->layoutId:I

    iput v5, v1, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewInflater$WidgetInfo;->theme:I

    goto :goto_0
.end method

.method private inflateWidgetView(Lcom/sec/android/cover/sviewcover/effect/CoverPreviewInflater$WidgetInfo;)Landroid/view/View;
    .locals 7

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewInflater;->mContext:Landroid/content/Context;

    iget-object v5, p1, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewInflater$WidgetInfo;->contextPackage:Ljava/lang/String;

    const/4 v6, 0x4

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    iget v4, p1, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewInflater$WidgetInfo;->theme:I

    invoke-virtual {v0, v4}, Landroid/content/Context;->setTheme(I)V

    const-string v4, "layout_inflater"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    invoke-virtual {v1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget v4, p1, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewInflater$WidgetInfo;->layoutId:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    return-object v3

    :catch_0
    move-exception v2

    :goto_1
    const-string v4, "CoverPreviewInflater"

    const-string v5, "Error creating widget view"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private needToSetCoverWallpaper(Landroid/content/Intent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/cover/CoverUtils;->getFavoriteContactIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static wouldLaunchResolverActivity(Landroid/content/Context;Landroid/content/Intent;I)Z
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v3, 0x10000

    invoke-virtual {v1, p1, v3, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    const v3, 0x10080

    invoke-virtual {v1, p1, v3, p2}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewInflater;->wouldLaunchResolverActivity(Landroid/content/pm/ResolveInfo;Ljava/util/List;)Z

    move-result v3

    goto :goto_0
.end method

.method private static wouldLaunchResolverActivity(Landroid/content/pm/ResolveInfo;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v3, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public inflatePreview(Landroid/content/Intent;)Landroid/view/View;
    .locals 8

    const/4 v7, -0x2

    const/4 v3, 0x0

    if-nez p1, :cond_0

    const-string v4, "CoverPreviewInflater"

    const-string v5, "intent == null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    :goto_0
    return-object v1

    :cond_0
    const-string v4, "CoverPreviewInflater"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "intent.getAction()="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewInflater;->getWidgetInfo(Landroid/content/Intent;)Lcom/sec/android/cover/sviewcover/effect/CoverPreviewInflater$WidgetInfo;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v4, "CoverPreviewInflater"

    const-string v5, "info == null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.DIAL"

    if-ne v4, v5, :cond_2

    iget-object v4, v0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewInflater$WidgetInfo;->contextPackage:Ljava/lang/String;

    const-string v5, "com.android.contacts"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "CoverPreviewInflater"

    const-string v5, "switching default dialer action"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.samsung.dialer.action.ACTION_PHONE_PREVIEW"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewInflater;->getWidgetInfo(Landroid/content/Intent;)Lcom/sec/android/cover/sviewcover/effect/CoverPreviewInflater$WidgetInfo;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v4, "CoverPreviewInflater"

    const-string v5, "info == null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewInflater;->inflateWidgetView(Lcom/sec/android/cover/sviewcover/effect/CoverPreviewInflater$WidgetInfo;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_3

    const-string v4, "CoverPreviewInflater"

    const-string v5, "v == null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    goto :goto_0

    :cond_3
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewInflater;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

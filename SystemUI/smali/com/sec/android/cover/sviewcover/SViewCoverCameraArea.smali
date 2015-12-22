.class public Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;
.super Landroid/widget/LinearLayout;
.source "SViewCoverCameraArea.java"

# interfaces
.implements Lcom/sec/android/cover/sviewcover/SViewCoverPager$SViewCoverPageCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "SViewCoverCameraArea"


# instance fields
.field private active:Z

.field private mCameraLockViImage:Landroid/widget/ImageView;

.field private mCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;->mCameraLockViImage:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;->mCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;->active:Z

    return-void
.end method

.method private moveToHome()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;->mCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;->mCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->moveToMainPage()V

    :cond_0
    return-void
.end method

.method private startCameraActivity()V
    .locals 4

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "com.sec.android.app.camera"

    const-string v3, "com.sec.android.app.camera.Camera"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "covermode"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "SViewCoverCameraArea"

    const-string v3, "ActivityNotFoundException !!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onActive(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;->active:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;->startCameraActivity()V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isZeroProject()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Lcom/sec/android/sviewcover/R$id;->camera_lock_vi:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;->mCameraLockViImage:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;->mCameraLockViImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;->mCameraLockViImage:Landroid/widget/ImageView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    iget-boolean v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;->active:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;->active:Z

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;->moveToHome()V

    :cond_0
    return-void
.end method

.method public setCoverView(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "SViewCoverCameraArea"

    const-string v1, "setCoverView(): received null as argument!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;->mCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    goto :goto_0
.end method

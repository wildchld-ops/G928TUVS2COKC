.class public Lcom/sec/android/app/launcher/views/HomePageView;
.super Lcom/sec/daliviews/views/PageView;
.source "HomePageView.java"


# instance fields
.field private mPresenter:Lcom/sec/android/app/launcher/activities/PagePresenter;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/daliviews/views/PageView;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/HomePageView;->mPresenter:Lcom/sec/android/app/launcher/activities/PagePresenter;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/views/HomePageView;->setIsNoBackgroundPage(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/daliviews/views/PageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/HomePageView;->mPresenter:Lcom/sec/android/app/launcher/activities/PagePresenter;

    return-void
.end method


# virtual methods
.method public canAcceptDrop(Lcom/sec/daliviews/views/NativeViewBase;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomePageView;->mPresenter:Lcom/sec/android/app/launcher/activities/PagePresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomePageView;->mPresenter:Lcom/sec/android/app/launcher/activities/PagePresenter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->canAcceptDrop(Lcom/sec/daliviews/views/NativeViewBase;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/sec/daliviews/views/PageView;->canAcceptDrop(Lcom/sec/daliviews/views/NativeViewBase;)Z

    move-result v0

    goto :goto_0
.end method

.method public getNodeInfo(Landroid/util/SparseIntArray;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    .locals 4

    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/daliviews/views/PageView;->getNodeInfo(Landroid/util/SparseIntArray;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getHomeFragment()Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getCurrentPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v2

    if-ne p0, v2, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getCurrentMode()Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->PAGE_EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getCurrentPagePresenter()Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getDefaultHomeIcon()Lcom/sec/daliviews/views/ImageView;

    move-result-object v2

    invoke-static {v2, p3, p4, p1, p2}, Lcom/sec/android/app/launcher/activities/Accessibility$AccessibilityNodeInfoList;->addItemToNodeInfo(Ljava/lang/Object;Landroid/view/accessibility/AccessibilityNodeInfo;ILandroid/util/SparseIntArray;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public getPagePresenter()Lcom/sec/android/app/launcher/activities/PagePresenter;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomePageView;->mPresenter:Lcom/sec/android/app/launcher/activities/PagePresenter;

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAccessibility()Lcom/sec/android/app/launcher/activities/Accessibility;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/Accessibility;->getFocusedView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAccessibilityEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    instance-of v3, v0, Lcom/sec/android/app/launcher/views/HomePageView;

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/sec/daliviews/views/NativeViewBase;->getScreenBoundingRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    iget v4, v2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->setLocation(FF)V

    invoke-virtual {v0, p1}, Lcom/sec/daliviews/views/NativeViewBase;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    :goto_0
    return v3

    :cond_0
    const/4 v0, 0x0

    invoke-super {p0, p1}, Lcom/sec/daliviews/views/PageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_0
.end method

.method public setPagePresenter(Lcom/sec/android/app/launcher/activities/PagePresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/views/HomePageView;->mPresenter:Lcom/sec/android/app/launcher/activities/PagePresenter;

    return-void
.end method

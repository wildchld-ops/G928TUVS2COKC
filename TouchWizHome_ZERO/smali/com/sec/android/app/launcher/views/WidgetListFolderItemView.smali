.class public Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;
.super Lcom/sec/daliviews/views/IconView;
.source "WidgetListFolderItemView.java"


# instance fields
.field private mFolderBtnView:Lcom/sec/daliviews/views/ImageView;

.field private mSpanView:Lcom/sec/daliviews/views/TextView;

.field private mTitleView:Lcom/sec/daliviews/views/TextView;

.field private mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

.field private mUninstallIconHideAnimation:Lcom/sec/daliviews/animation/NativeAnimation;

.field private mUninstallIconShowAnimation:Lcom/sec/daliviews/animation/NativeAnimation;

.field private mUninstallImageView:Lcom/sec/daliviews/views/ImageView;

.field private mWidgetFolderView:Lcom/sec/android/app/launcher/views/WidgetFolderView;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sec/daliviews/views/IconView;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->mTitleView:Lcom/sec/daliviews/views/TextView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->mSpanView:Lcom/sec/daliviews/views/TextView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->mFolderBtnView:Lcom/sec/daliviews/views/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->mWidgetFolderView:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->mUninstallImageView:Lcom/sec/daliviews/views/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->mUninstallIconShowAnimation:Lcom/sec/daliviews/animation/NativeAnimation;

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->mUninstallIconHideAnimation:Lcom/sec/daliviews/animation/NativeAnimation;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/daliviews/views/IconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->mTitleView:Lcom/sec/daliviews/views/TextView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->mSpanView:Lcom/sec/daliviews/views/TextView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->mFolderBtnView:Lcom/sec/daliviews/views/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->mWidgetFolderView:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->mUninstallImageView:Lcom/sec/daliviews/views/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->mUninstallIconShowAnimation:Lcom/sec/daliviews/animation/NativeAnimation;

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->mUninstallIconHideAnimation:Lcom/sec/daliviews/animation/NativeAnimation;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;)Lcom/sec/daliviews/views/FixedContainer;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;)Lcom/sec/daliviews/views/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->mUninstallImageView:Lcom/sec/daliviews/views/ImageView;

    return-object v0
.end method

.method private cleanupJavaSide()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/FixedContainer;->destroy()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->mUninstallIconShowAnimation:Lcom/sec/daliviews/animation/NativeAnimation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->mUninstallIconShowAnimation:Lcom/sec/daliviews/animation/NativeAnimation;

    invoke-virtual {v0}, Lcom/sec/daliviews/animation/NativeAnimation;->destroy()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->mUninstallIconHideAnimation:Lcom/sec/daliviews/animation/NativeAnimation;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->mUninstallIconHideAnimation:Lcom/sec/daliviews/animation/NativeAnimation;

    invoke-virtual {v0}, Lcom/sec/daliviews/animation/NativeAnimation;->destroy()V

    :cond_2
    return-void
.end method

.method private setUninstallView(ZZ)V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x0

    const v3, 0x7f0b0092

    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->mFolderBtnView:Lcom/sec/daliviews/views/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->mFolderBtnView:Lcom/sec/daliviews/views/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    if-nez v1, :cond_1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getViewInflater()Lcom/sec/daliviews/views/ViewInflater;

    move-result-object v0

    const v1, 0x7f03002f

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ViewInflater;->inflate(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/FixedContainer;

    iput-object v1, p0, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    invoke-virtual {v1, v3}, Lcom/sec/daliviews/views/FixedContainer;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/ImageView;

    iput-object v1, p0, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->mUninstallImageView:Lcom/sec/daliviews/views/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->addView(Lcom/sec/daliviews/views/NativeViewBase;)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->updateMode()V

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    invoke-virtual {v1, v5}, Lcom/sec/daliviews/views/FixedContainer;->setVisibility(I)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getInst()Lcom/sec/android/app/launcher/activities/LauncherApp;

    move-result-object v1

    const v2, 0x7f04003e

    invoke-static {v1, v2}, Lcom/sec/daliviews/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Lcom/sec/daliviews/animation/NativeAnimation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->mUninstallIconShowAnimation:Lcom/sec/daliviews/animation/NativeAnimation;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getInst()Lcom/sec/android/app/launcher/activities/LauncherApp;

    move-result-object v1

    const v2, 0x7f04003d

    invoke-static {v1, v2}, Lcom/sec/daliviews/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Lcom/sec/daliviews/animation/NativeAnimation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->mUninstallIconHideAnimation:Lcom/sec/daliviews/animation/NativeAnimation;

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->mUninstallIconHideAnimation:Lcom/sec/daliviews/animation/NativeAnimation;

    new-instance v2, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView$1;-><init>(Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;)V

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/animation/NativeAnimation;->addListener(Lcom/sec/daliviews/animation/NativeAnimation$AnimationListener;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->mUninstallIconShowAnimation:Lcom/sec/daliviews/animation/NativeAnimation;

    new-instance v2, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView$2;-><init>(Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;)V

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/animation/NativeAnimation;->addListener(Lcom/sec/daliviews/animation/NativeAnimation$AnimationListener;)V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    invoke-virtual {v1, v4}, Lcom/sec/daliviews/views/FixedContainer;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    invoke-virtual {v1, v3}, Lcom/sec/daliviews/views/FixedContainer;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sec/daliviews/views/NativeViewBase;->setVisibility(I)V

    if-eqz p2, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->mUninstallIconShowAnimation:Lcom/sec/daliviews/animation/NativeAnimation;

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->mUninstallImageView:Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/animation/NativeAnimation;->start(Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/FixedContainer;->setFocusableInTouchMode(Z)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    if-eqz v1, :cond_5

    if-eqz p2, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->mUninstallIconHideAnimation:Lcom/sec/daliviews/animation/NativeAnimation;

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    invoke-virtual {v2, v3}, Lcom/sec/daliviews/views/FixedContainer;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/animation/NativeAnimation;->start(Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->mFolderBtnView:Lcom/sec/daliviews/views/ImageView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->mFolderBtnView:Lcom/sec/daliviews/views/ImageView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/ImageView;->setOpacity(F)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->mFolderBtnView:Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v1, v4}, Lcom/sec/daliviews/views/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    invoke-virtual {v1, v3}, Lcom/sec/daliviews/views/FixedContainer;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/sec/daliviews/views/NativeViewBase;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    invoke-virtual {v1, v5}, Lcom/sec/daliviews/views/FixedContainer;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public changeMode(I)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    sget-object v1, Lcom/sec/android/app/launcher/views/ViewDefs$WidgetViewMode;->NORMAL:Lcom/sec/android/app/launcher/views/ViewDefs$WidgetViewMode;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/views/ViewDefs$WidgetViewMode;->ordinal()I

    move-result v1

    if-ne p1, v1, :cond_1

    invoke-direct {p0, v5, v4}, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->setUninstallView(ZZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/sec/android/app/launcher/views/ViewDefs$WidgetViewMode;->UNINSTALL:Lcom/sec/android/app/launcher/views/ViewDefs$WidgetViewMode;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/views/ViewDefs$WidgetViewMode;->ordinal()I

    move-result v1

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->getItemId()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v2, v3}, Lcom/sec/daliviews/views/IdGenerator;->getItemById(J)Lcom/sec/daliviews/views/Item;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/data/WidgetListItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/WidgetListItem;->canUninstall()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v4, v4}, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->setUninstallView(ZZ)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->mFolderBtnView:Lcom/sec/daliviews/views/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->mFolderBtnView:Lcom/sec/daliviews/views/ImageView;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/ImageView;->setOpacity(F)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->mFolderBtnView:Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v1, v5}, Lcom/sec/daliviews/views/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public createPreviewImageWithPadding(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 6

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v5, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-object v1
.end method

.method protected destroy(J)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/sec/daliviews/views/IconView;->destroy(J)V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->cleanupJavaSide()V

    return-void
.end method

.method public getFolderView()Lcom/sec/android/app/launcher/views/WidgetFolderView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->mWidgetFolderView:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    return-object v0
.end method

.method public getModedViewType()I
    .locals 1

    const v0, 0x7f0b0007

    return v0
.end method

.method public getTitleView()Lcom/sec/daliviews/views/TextView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->mTitleView:Lcom/sec/daliviews/views/TextView;

    return-object v0
.end method

.method public getUninstallView()Lcom/sec/daliviews/views/NativeViewBase;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    return-object v0
.end method

.method public isCloneable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 9

    const/4 v8, 0x1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getWidgetsFragment()Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/launcher/data/WidgetListItem;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/WidgetListItem;->canUninstall()Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->getWidgetsPresenter()Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getWidgetScreenMode()I

    move-result v4

    if-ne v4, v8, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v4

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v5

    const v6, 0x7f0d0057

    invoke-virtual {v5, v6}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->mTitleView:Lcom/sec/daliviews/views/TextView;

    if-eqz v4, :cond_1

    const-string v4, "%s %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->mTitleView:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v7}, Lcom/sec/daliviews/views/TextView;->getText()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v6

    const v7, 0x7f0d004b

    invoke-virtual {v6, v7}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->mTitleView:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v4, v0}, Lcom/sec/daliviews/views/TextView;->setContentDescription(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->mTitleView:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v4, p1}, Lcom/sec/daliviews/views/TextView;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_1
    return-void
.end method

.method public openWidgetFolder()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->mWidgetFolderView:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->isWidgetFolderOpen()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->mWidgetFolderView:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->showOpenWidgetFolder()V

    :cond_0
    return-void
.end method

.method protected resetPeer()V
    .locals 0

    invoke-super {p0}, Lcom/sec/daliviews/views/IconView;->resetPeer()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->cleanupJavaSide()V

    return-void
.end method

.method public setPreviewImages(Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x4

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->isValidPeer()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090008

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    new-array v2, v7, [Lcom/sec/daliviews/views/ImageView;

    const v5, 0x7f0b012f

    invoke-virtual {p0, v5}, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v5

    check-cast v5, Lcom/sec/daliviews/views/ImageView;

    aput-object v5, v2, v8

    const v5, 0x7f0b0130

    invoke-virtual {p0, v5}, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v5

    check-cast v5, Lcom/sec/daliviews/views/ImageView;

    aput-object v5, v2, v9

    const/4 v6, 0x2

    const v5, 0x7f0b0131

    invoke-virtual {p0, v5}, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v5

    check-cast v5, Lcom/sec/daliviews/views/ImageView;

    aput-object v5, v2, v6

    const/4 v6, 0x3

    const v5, 0x7f0b0132

    invoke-virtual {p0, v5}, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v5

    check-cast v5, Lcom/sec/daliviews/views/ImageView;

    aput-object v5, v2, v6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v7, :cond_0

    aget-object v5, v2, v1

    if-nez v5, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-ge v1, v3, :cond_4

    aget-object v5, v2, v1

    invoke-virtual {v5, v8}, Lcom/sec/daliviews/views/ImageView;->setVisibility(I)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    aget-object v6, v2, v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v5, v0, v9}, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->createPreviewImageWithPadding(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/sec/daliviews/views/ImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_4
    aget-object v5, v2, v1

    invoke-virtual {v5, v7}, Lcom/sec/daliviews/views/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setSpanText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->mSpanView:Lcom/sec/daliviews/views/TextView;

    if-nez v0, :cond_0

    const v0, 0x7f0b012c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/TextView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->mSpanView:Lcom/sec/daliviews/views/TextView;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->mSpanView:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v0, p1}, Lcom/sec/daliviews/views/TextView;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->mSpanView:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/TextView;->invalidate()V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->mTitleView:Lcom/sec/daliviews/views/TextView;

    if-nez v0, :cond_0

    const v0, 0x7f0b012b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/TextView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->mTitleView:Lcom/sec/daliviews/views/TextView;

    :cond_0
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->isRTLLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->mTitleView:Lcom/sec/daliviews/views/TextView;

    const v1, 0x10101ad

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/TextView;->setGravity(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->mTitleView:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v0, p1}, Lcom/sec/daliviews/views/TextView;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->mTitleView:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/TextView;->invalidate()V

    return-void
.end method

.method public setWidgetFolderView(Lcom/sec/android/app/launcher/views/WidgetFolderView;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->mWidgetFolderView:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->mFolderBtnView:Lcom/sec/daliviews/views/ImageView;

    if-nez v0, :cond_0

    const v0, 0x7f0b012d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->mFolderBtnView:Lcom/sec/daliviews/views/ImageView;

    :cond_0
    return-void
.end method

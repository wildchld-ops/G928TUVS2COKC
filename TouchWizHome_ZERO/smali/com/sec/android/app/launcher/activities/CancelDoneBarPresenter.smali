.class public Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;
.super Lcom/sec/android/app/launcher/activities/PresenterBase;
.source "CancelDoneBarPresenter.java"


# instance fields
.field private mAnimDuration:F

.field private mCancelBtn:Lcom/sec/daliviews/views/TextView;

.field private mCancelDoneButton:Lcom/sec/daliviews/views/ContainerView;

.field private mDoneBtn:Lcom/sec/daliviews/views/TextView;

.field private mDoneBtnEnabled:Z

.field mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

.field private mRootView:Lcom/sec/daliviews/views/ContainerView;


# direct methods
.method protected constructor <init>(Lcom/sec/android/app/launcher/activities/HomePresenter;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/launcher/activities/PresenterBase;-><init>(Lcom/sec/android/app/launcher/activities/PresenterBase$ItemFilter;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;->mCancelBtn:Lcom/sec/daliviews/views/TextView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;->mDoneBtn:Lcom/sec/daliviews/views/TextView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;->mDoneBtnEnabled:Z

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getRootView()Lcom/sec/daliviews/views/ContainerView;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;->mRootView:Lcom/sec/daliviews/views/ContainerView;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0239

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;->mAnimDuration:F

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;->setCancelDoneBar()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;)Lcom/sec/daliviews/views/ContainerView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;->mCancelDoneButton:Lcom/sec/daliviews/views/ContainerView;

    return-object v0
.end method

.method private setCancelDoneBar()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;->mCancelDoneButton:Lcom/sec/daliviews/views/ContainerView;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getViewInflater()Lcom/sec/daliviews/views/ViewInflater;

    move-result-object v0

    const v1, 0x7f03000c

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ViewInflater;->inflate(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/ContainerView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;->mCancelDoneButton:Lcom/sec/daliviews/views/ContainerView;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;->mCancelDoneButton:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;->mCancelDoneButton:Lcom/sec/daliviews/views/ContainerView;

    const v1, 0x7f0b005d

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/TextView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;->mCancelBtn:Lcom/sec/daliviews/views/TextView;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;->mCancelBtn:Lcom/sec/daliviews/views/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;->mCancelBtn:Lcom/sec/daliviews/views/TextView;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;->mCancelBtn:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v1}, Lcom/sec/daliviews/views/TextView;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/TextView;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;->mCancelBtn:Lcom/sec/daliviews/views/TextView;

    new-instance v1, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter$1;-><init>(Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;)V

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/TextView;->setOnClickListener(Lcom/sec/daliviews/views/NativeViewBase$OnClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;->mCancelDoneButton:Lcom/sec/daliviews/views/ContainerView;

    const v1, 0x7f0b005e

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/TextView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;->mDoneBtn:Lcom/sec/daliviews/views/TextView;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;->mDoneBtn:Lcom/sec/daliviews/views/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;->mDoneBtn:Lcom/sec/daliviews/views/TextView;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;->mDoneBtn:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v1}, Lcom/sec/daliviews/views/TextView;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/TextView;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;->mDoneBtn:Lcom/sec/daliviews/views/TextView;

    new-instance v1, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter$2;-><init>(Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;)V

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/TextView;->setOnClickListener(Lcom/sec/daliviews/views/NativeViewBase$OnClickListener;)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;->mRootView:Lcom/sec/daliviews/views/ContainerView;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;->mCancelDoneButton:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ContainerView;->addView(Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;->mCancelDoneButton:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;->mRootView:Lcom/sec/daliviews/views/ContainerView;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;->mCancelDoneButton:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ContainerView;->deleteView(Lcom/sec/daliviews/views/NativeViewBase;)V

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;->mCancelDoneButton:Lcom/sec/daliviews/views/ContainerView;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;->mCancelBtn:Lcom/sec/daliviews/views/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;->mCancelBtn:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v0, v2}, Lcom/sec/daliviews/views/TextView;->setOnClickListener(Lcom/sec/daliviews/views/NativeViewBase$OnClickListener;)V

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;->mCancelBtn:Lcom/sec/daliviews/views/TextView;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;->mDoneBtn:Lcom/sec/daliviews/views/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;->mDoneBtn:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v0, v2}, Lcom/sec/daliviews/views/TextView;->setOnClickListener(Lcom/sec/daliviews/views/NativeViewBase$OnClickListener;)V

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;->mDoneBtn:Lcom/sec/daliviews/views/TextView;

    :cond_2
    return-void
.end method

.method public getCancelButton()Lcom/sec/daliviews/views/TextView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;->mCancelBtn:Lcom/sec/daliviews/views/TextView;

    return-object v0
.end method

.method public getDoneButton()Lcom/sec/daliviews/views/TextView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;->mDoneBtn:Lcom/sec/daliviews/views/TextView;

    return-object v0
.end method

.method public getDoneButtonEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;->mDoneBtnEnabled:Z

    return v0
.end method

.method public getRootView()Lcom/sec/daliviews/views/ContainerView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;->mCancelDoneButton:Lcom/sec/daliviews/views/ContainerView;

    return-object v0
.end method

.method public bridge synthetic getRootView()Lcom/sec/daliviews/views/ContainerViewBase;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;->getRootView()Lcom/sec/daliviews/views/ContainerView;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;->mCancelDoneButton:Lcom/sec/daliviews/views/ContainerView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ContainerView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v0, v2, v2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->cancel(ZZ)V

    const/4 v0, 0x1

    return v0
.end method

.method public onItemAdded(Lcom/sec/daliviews/views/Item;)V
    .locals 0

    return-void
.end method

.method public onItemBadgeUpdated(Lcom/sec/daliviews/views/Item;)V
    .locals 0

    return-void
.end method

.method public onItemDeleted(Lcom/sec/daliviews/views/Item;)V
    .locals 0

    return-void
.end method

.method public onItemUpdateCompleted()V
    .locals 0

    return-void
.end method

.method public onItemUpdated(Lcom/sec/daliviews/views/Item;)V
    .locals 0

    return-void
.end method

.method public onItemsUpdated(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setAccessibilityMode(Z)V
    .locals 0

    return-void
.end method

.method public setDoneButtonEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;->mDoneBtn:Lcom/sec/daliviews/views/TextView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;->mDoneBtn:Lcom/sec/daliviews/views/TextView;

    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v1, v0}, Lcom/sec/daliviews/views/TextView;->setOpacity(F)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;->mDoneBtn:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v0, p1}, Lcom/sec/daliviews/views/TextView;->setEnabled(Z)V

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;->mDoneBtnEnabled:Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    const v0, 0x3ee66666    # 0.45f

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;->mDoneBtnEnabled:Z

    goto :goto_1
.end method

.method public switchMode(Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;)V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->PAGE_EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;->mCancelDoneButton:Lcom/sec/daliviews/views/ContainerView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ContainerView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;->SCREENGRID_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;->mCancelDoneButton:Lcom/sec/daliviews/views/ContainerView;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;->setCancelDoneBar()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;->mDoneBtn:Lcom/sec/daliviews/views/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;->mDoneBtn:Lcom/sec/daliviews/views/TextView;

    const v1, 0x3ee66666    # 0.45f

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/TextView;->setOpacity(F)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;->mDoneBtn:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v0, v2}, Lcom/sec/daliviews/views/TextView;->setEnabled(Z)V

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;->mDoneBtnEnabled:Z

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;->mCancelDoneButton:Lcom/sec/daliviews/views/ContainerView;

    iget v1, p0, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;->mAnimDuration:F

    invoke-virtual {v0, v2, v1}, Lcom/sec/daliviews/views/ContainerView;->setVisibilityAnimated(IF)V

    goto :goto_0
.end method

.method public updateLayoutView()V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;->mCancelDoneButton:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;->mCancelDoneButton:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v2}, Lcom/sec/daliviews/views/ContainerView;->getLayoutParams()Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    move-result-object v0

    const v2, 0x7f0a004e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutHeight(I)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;->mCancelDoneButton:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v2, v0}, Lcom/sec/daliviews/views/ContainerView;->setLayoutParams(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;)V

    :cond_0
    return-void
.end method

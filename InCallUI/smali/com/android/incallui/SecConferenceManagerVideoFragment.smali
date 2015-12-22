.class public Lcom/android/incallui/SecConferenceManagerVideoFragment;
.super Lcom/android/incallui/SecConferenceManagerFragment;
.source "SecConferenceManagerVideoFragment.java"


# instance fields
.field private mConferencePanel:Landroid/widget/FrameLayout;

.field private mHideAnimatorSet:Landroid/animation/AnimatorSet;

.field private mManagerAnimatorSet:Landroid/animation/AnimatorSet;

.field private mPhotoViewForAnim:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecConferenceManagerFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/SecConferenceManagerVideoFragment;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecConferenceManagerVideoFragment;->mConferencePanel:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private animateForManager()V
    .locals 15

    const-string v10, "animateForManager..."

    invoke-static {p0, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecConferenceManagerVideoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a01cb

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {p0}, Lcom/android/incallui/SecConferenceManagerVideoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a00f6

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    add-int v9, v10, v11

    invoke-virtual {p0}, Lcom/android/incallui/SecConferenceManagerVideoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0269

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    sub-int/2addr v9, v10

    invoke-virtual {p0}, Lcom/android/incallui/SecConferenceManagerVideoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0266

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v2, v10

    invoke-virtual {p0}, Lcom/android/incallui/SecConferenceManagerVideoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c0014

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    const/4 v10, 0x2

    new-array v10, v10, [I

    const/4 v11, 0x0

    aput v9, v10, v11

    const/4 v11, 0x1

    aput v2, v10, v11

    invoke-static {v10}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v8

    new-instance v10, Lcom/android/incallui/SecConferenceManagerVideoFragment$4;

    invoke-direct {v10, p0}, Lcom/android/incallui/SecConferenceManagerVideoFragment$4;-><init>(Lcom/android/incallui/SecConferenceManagerVideoFragment;)V

    invoke-virtual {v8, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    int-to-long v10, v5

    invoke-virtual {v8, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v10, Landroid/animation/AnimatorSet;

    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v10, p0, Lcom/android/incallui/SecConferenceManagerVideoFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v10, p0, Lcom/android/incallui/SecConferenceManagerVideoFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v10, v8}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {p0}, Lcom/android/incallui/SecConferenceManagerVideoFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v10

    check-cast v10, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-virtual {v10}, Lcom/android/incallui/ConferenceManagerPresenter;->getMaxCallersInConference()I

    move-result v6

    new-array v0, v6, [Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Lcom/android/incallui/SecConferenceManagerVideoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c0015

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v6, :cond_0

    iget-object v10, p0, Lcom/android/incallui/SecConferenceManagerVideoFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v10, v10, v4

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v10, p0, Lcom/android/incallui/SecConferenceManagerVideoFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v10, v10, v4

    sget-object v11, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v12, 0x1

    new-array v12, v12, [F

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    aput v14, v12, v13

    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    aput-object v10, v0, v4

    aget-object v10, v0, v4

    div-int/lit8 v11, v1, 0x2

    mul-int/2addr v11, v4

    add-int/2addr v11, v1

    int-to-long v12, v11

    invoke-virtual {v10, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v10, p0, Lcom/android/incallui/SecConferenceManagerVideoFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    aget-object v11, v0, v4

    invoke-virtual {v10, v11}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v10, p0, Lcom/android/incallui/SecConferenceManagerVideoFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v11, Lcom/android/incallui/SecConferenceManagerVideoFragment$5;

    invoke-direct {v11, p0}, Lcom/android/incallui/SecConferenceManagerVideoFragment$5;-><init>(Lcom/android/incallui/SecConferenceManagerVideoFragment;)V

    invoke-virtual {v10, v11}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v10, p0, Lcom/android/incallui/SecConferenceManagerVideoFragment;->mConferencePanel:Landroid/widget/FrameLayout;

    if-eqz v10, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecConferenceManagerVideoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0266

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v3, v10

    iget-object v10, p0, Lcom/android/incallui/SecConferenceManagerVideoFragment;->mConferencePanel:Landroid/widget/FrameLayout;

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    iput v3, v7, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v10, p0, Lcom/android/incallui/SecConferenceManagerVideoFragment;->mConferencePanel:Landroid/widget/FrameLayout;

    invoke-virtual {v10, v7}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v10, p0, Lcom/android/incallui/SecConferenceManagerVideoFragment;->mConferencePanel:Landroid/widget/FrameLayout;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/SecConferenceManagerVideoFragment;->getView()Landroid/view/View;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    iget-object v10, p0, Lcom/android/incallui/SecConferenceManagerVideoFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v10}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method


# virtual methods
.method public animateForHide()V
    .locals 14

    const/4 v13, 0x1

    const/4 v12, 0x0

    const-string v8, "animateForHide..."

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/incallui/SecConferenceManagerVideoFragment;->mConferencePanel:Landroid/widget/FrameLayout;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/incallui/SecConferenceManagerVideoFragment;->mConferencePanel:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecConferenceManagerVideoFragment;->getView()Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecConferenceManagerVideoFragment;->getView()Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/SecConferenceManagerVideoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0266

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v7, v8

    invoke-virtual {p0}, Lcom/android/incallui/SecConferenceManagerVideoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c0016

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    const/4 v8, 0x2

    new-array v8, v8, [I

    aput v7, v8, v12

    aput v12, v8, v13

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v6

    new-instance v8, Lcom/android/incallui/SecConferenceManagerVideoFragment$2;

    invoke-direct {v8, p0}, Lcom/android/incallui/SecConferenceManagerVideoFragment$2;-><init>(Lcom/android/incallui/SecConferenceManagerVideoFragment;)V

    invoke-virtual {v6, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    int-to-long v8, v4

    invoke-virtual {v6, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v8, p0, Lcom/android/incallui/SecConferenceManagerVideoFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v8, p0, Lcom/android/incallui/SecConferenceManagerVideoFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v8, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {p0}, Lcom/android/incallui/SecConferenceManagerVideoFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v8

    check-cast v8, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-virtual {v8}, Lcom/android/incallui/ConferenceManagerPresenter;->getMaxCallersInConference()I

    move-result v5

    new-array v1, v5, [Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Lcom/android/incallui/SecConferenceManagerVideoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c0017

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_2

    iget-object v8, p0, Lcom/android/incallui/SecConferenceManagerVideoFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v8, v8, v3

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v10, v13, [F

    const/4 v11, 0x0

    aput v11, v10, v12

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v1, v3

    aget-object v8, v1, v3

    int-to-long v10, v2

    invoke-virtual {v8, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v8, p0, Lcom/android/incallui/SecConferenceManagerVideoFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    aget-object v9, v1, v3

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget-object v8, p0, Lcom/android/incallui/SecConferenceManagerVideoFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v9, Lcom/android/incallui/SecConferenceManagerVideoFragment$3;

    invoke-direct {v9, p0}, Lcom/android/incallui/SecConferenceManagerVideoFragment$3;-><init>(Lcom/android/incallui/SecConferenceManagerVideoFragment;)V

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v8, p0, Lcom/android/incallui/SecConferenceManagerVideoFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->start()V

    invoke-virtual {p0}, Lcom/android/incallui/SecConferenceManagerVideoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecConferenceManagerVideoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    instance-of v8, v8, Lcom/android/incallui/SecInCallActivity;

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecConferenceManagerVideoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/SecInCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/SecInCallActivity;->getSecCallCardFragment()Lcom/android/incallui/SecCallCardUi;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/SecInCallActivity;->getSecCallCardFragment()Lcom/android/incallui/SecCallCardUi;

    move-result-object v8

    invoke-interface {v8, v13}, Lcom/android/incallui/SecCallCardUi;->animateForHideManager(Z)V

    goto/16 :goto_0
.end method

.method public final displayCallerInfoForConferenceRow(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    return-void
.end method

.method public final displayCallerInfoForConferenceRow(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/graphics/drawable/Drawable;ZZ)V
    .locals 7

    iget-object v5, p0, Lcom/android/incallui/SecConferenceManagerVideoFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v5, v5, p1

    const v6, 0x7f100045

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/incallui/SecConferenceManagerVideoFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v5, v5, p1

    const v6, 0x7f100046

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/incallui/SecConferenceManagerVideoFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v5, v5, p1

    const v6, 0x7f100047

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/incallui/SecConferenceManagerVideoFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v5, v5, p1

    const v6, 0x7f100048

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecConferenceManagerVideoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0253

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v0, v5

    invoke-virtual {p0}, Lcom/android/incallui/SecConferenceManagerVideoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0201ca

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    if-eqz p7, :cond_1

    if-eqz p8, :cond_1

    invoke-static {p7, v0}, Lcom/android/incallui/InCallUtils;->getCircledDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p7

    invoke-virtual {v4, p7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/SecConferenceManagerVideoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020071

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p7

    invoke-static {p7, v0}, Lcom/android/incallui/InCallUtils;->getCircledDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p7

    invoke-virtual {v4, p7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public isFragmentVisible()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/incallui/SecConferenceManagerVideoFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/SecConferenceManagerVideoFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/SecConferenceManagerVideoFragment;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const v3, 0x7f04000f

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v3, 0x7f10004d

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/android/incallui/SecConferenceManagerVideoFragment;->mConferencePanel:Landroid/widget/FrameLayout;

    const v3, 0x7f100056

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/incallui/SecConferenceManagerVideoFragment;->mPhotoViewForAnim:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/SecConferenceManagerVideoFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-virtual {v3}, Lcom/android/incallui/ConferenceManagerPresenter;->getMaxCallersInConference()I

    move-result v3

    new-array v3, v3, [Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/incallui/SecConferenceManagerVideoFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    const/4 v3, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/SecConferenceManagerVideoFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-virtual {v3}, Lcom/android/incallui/ConferenceManagerPresenter;->getMaxCallersInConference()I

    move-result v3

    if-ge v0, v3, :cond_0

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/android/incallui/SecConferenceManagerVideoFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget v3, v2, v0

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    aput-object v3, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SecConferenceManagerVideoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/contacts/common/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/SecConferenceManagerVideoFragment;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    invoke-virtual {p0}, Lcom/android/incallui/SecConferenceManagerVideoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0057

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/incallui/SecConferenceManagerVideoFragment;->mActionBarElevation:I

    return-object v1

    nop

    :array_0
    .array-data 4
        0x7f100050
        0x7f100051
        0x7f100052
        0x7f100053
        0x7f100054
        0x7f100055
    .end array-data
.end method

.method public setVisible(Z)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v5, 0x8

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/SecConferenceManagerVideoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/android/incallui/SecConferenceManagerVideoFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-virtual {p0}, Lcom/android/incallui/SecConferenceManagerVideoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/android/incallui/ConferenceManagerPresenter;->init(Landroid/content/Context;Lcom/android/incallui/CallList;)V

    iget-object v3, p0, Lcom/android/incallui/SecConferenceManagerVideoFragment;->mConferencePanel:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-static {v3, v8, v7}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    if-ne v3, v5, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/SecConferenceManagerVideoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090087

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    :goto_1
    iget-object v3, p0, Lcom/android/incallui/SecConferenceManagerVideoFragment;->mConferencePanel:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    :cond_2
    iget-object v3, p0, Lcom/android/incallui/SecConferenceManagerVideoFragment;->mConferencePanel:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_3
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isEasyModeOn()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/android/incallui/SecConferenceManagerVideoFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/android/incallui/SecConferenceManagerVideoFragment;->mPhotoViewForAnim:Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/SecConferenceManagerVideoFragment;->mPhotoViewForAnim:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/SecConferenceManagerVideoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090086

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/SecConferenceManagerVideoFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/incallui/SecConferenceManagerVideoFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/incallui/SecConferenceManagerVideoFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v3

    if-nez v3, :cond_4

    :cond_7
    invoke-direct {p0}, Lcom/android/incallui/SecConferenceManagerVideoFragment;->animateForManager()V

    goto :goto_2

    :cond_8
    iget-object v3, p0, Lcom/android/incallui/SecConferenceManagerVideoFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/incallui/SecConferenceManagerVideoFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/incallui/SecConferenceManagerVideoFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->end()V

    :cond_9
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isEasyModeOn()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {p0}, Lcom/android/incallui/SecConferenceManagerVideoFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p0}, Lcom/android/incallui/SecConferenceManagerVideoFragment;->getView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecConferenceManagerVideoFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1, v8, v7}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/android/incallui/SecConferenceManagerVideoFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_b
    iget-object v3, p0, Lcom/android/incallui/SecConferenceManagerVideoFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/android/incallui/SecConferenceManagerVideoFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v3

    if-nez v3, :cond_0

    :cond_c
    invoke-virtual {p0}, Lcom/android/incallui/SecConferenceManagerVideoFragment;->animateForHide()V

    goto/16 :goto_0
.end method

.method public final setupEndButtonForRow(IZ)V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/SecConferenceManagerVideoFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v1, v1, p1

    const v2, 0x7f100049

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p2, :cond_0

    new-instance v1, Lcom/android/incallui/SecConferenceManagerVideoFragment$1;

    invoke-direct {v1, p0, p1}, Lcom/android/incallui/SecConferenceManagerVideoFragment$1;-><init>(Lcom/android/incallui/SecConferenceManagerVideoFragment;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public final setupSeparateButtonForRow(IZ)V
    .locals 0

    return-void
.end method

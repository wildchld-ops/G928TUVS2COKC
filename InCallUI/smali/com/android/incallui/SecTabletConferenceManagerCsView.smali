.class public Lcom/android/incallui/SecTabletConferenceManagerCsView;
.super Lcom/android/incallui/SecTabletConferenceManagerView;
.source "SecTabletConferenceManagerCsView.java"


# instance fields
.field private mConferenceManageLayout:Landroid/widget/FrameLayout;

.field private mConferencePanel:Landroid/widget/FrameLayout;

.field private mHideAnimatorSet:Landroid/animation/AnimatorSet;

.field private mManagerAnimatorSet:Landroid/animation/AnimatorSet;

.field private mPhotoViewForAnim:Landroid/widget/ImageView;

.field private mSelectedRowId:I

.field private mSplitAnimatorSet:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/SecTabletConferenceManagerView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/SecTabletConferenceManagerCsView;)I
    .locals 1

    iget v0, p0, Lcom/android/incallui/SecTabletConferenceManagerCsView;->mSelectedRowId:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/incallui/SecTabletConferenceManagerCsView;I)I
    .locals 0

    iput p1, p0, Lcom/android/incallui/SecTabletConferenceManagerCsView;->mSelectedRowId:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/incallui/SecTabletConferenceManagerCsView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/SecTabletConferenceManagerCsView;->animateForSplit(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/incallui/SecTabletConferenceManagerCsView;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecTabletConferenceManagerCsView;->mConferencePanel:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/incallui/SecTabletConferenceManagerCsView;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecTabletConferenceManagerCsView;->mConferenceManageLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private animateForManager()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/SecTabletConferenceManagerCsView;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/SecTabletConferenceManagerCsView;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v13}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v13

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/SecTabletConferenceManagerCsView;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v13}, Landroid/animation/AnimatorSet;->end()V

    :cond_0
    const-string v13, "animateForManager..."

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecTabletConferenceManagerCsView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a00d5

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    float-to-int v12, v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecTabletConferenceManagerCsView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a0078

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    float-to-int v13, v13

    sub-int/2addr v12, v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecTabletConferenceManagerCsView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a0075

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    float-to-int v5, v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecTabletConferenceManagerCsView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0c0014

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    const/4 v13, 0x2

    new-array v13, v13, [I

    const/4 v14, 0x0

    aput v12, v13, v14

    const/4 v14, 0x1

    aput v5, v13, v14

    invoke-static {v13}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v11

    new-instance v13, Lcom/android/incallui/SecTabletConferenceManagerCsView$5;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/incallui/SecTabletConferenceManagerCsView$5;-><init>(Lcom/android/incallui/SecTabletConferenceManagerCsView;)V

    invoke-virtual {v11, v13}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    int-to-long v14, v8

    invoke-virtual {v11, v14, v15}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v13, Landroid/animation/AnimatorSet;

    invoke-direct {v13}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/incallui/SecTabletConferenceManagerCsView;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/SecTabletConferenceManagerCsView;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v13, v11}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecTabletConferenceManagerCsView;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v13

    check-cast v13, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-virtual {v13}, Lcom/android/incallui/ConferenceManagerPresenter;->getMaxCallersInConference()I

    move-result v9

    new-array v3, v9, [Landroid/animation/ObjectAnimator;

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecTabletConferenceManagerCsView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0c0015

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v9, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/SecTabletConferenceManagerCsView;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v13, v13, v7

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->setAlpha(F)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/SecTabletConferenceManagerCsView;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v13, v13, v7

    sget-object v14, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v15, 0x1

    new-array v15, v15, [F

    const/16 v16, 0x0

    const/high16 v17, 0x3f800000    # 1.0f

    aput v17, v15, v16

    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v3, v7

    aget-object v13, v3, v7

    div-int/lit8 v14, v4, 0x2

    mul-int/2addr v14, v7

    add-int/2addr v14, v4

    int-to-long v14, v14

    invoke-virtual {v13, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/SecTabletConferenceManagerCsView;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    aget-object v14, v3, v7

    invoke-virtual {v13, v14}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/SecTabletConferenceManagerCsView;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v14, Lcom/android/incallui/SecTabletConferenceManagerCsView$6;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/incallui/SecTabletConferenceManagerCsView$6;-><init>(Lcom/android/incallui/SecTabletConferenceManagerCsView;)V

    invoke-virtual {v13, v14}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/SecTabletConferenceManagerCsView;->mConferencePanel:Landroid/widget/FrameLayout;

    if-eqz v13, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecTabletConferenceManagerCsView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a00d5

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    float-to-int v6, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/SecTabletConferenceManagerCsView;->mConferencePanel:Landroid/widget/FrameLayout;

    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout$LayoutParams;

    iput v6, v10, Landroid/widget/FrameLayout$LayoutParams;->height:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/SecTabletConferenceManagerCsView;->mConferencePanel:Landroid/widget/FrameLayout;

    invoke-virtual {v13, v10}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/SecTabletConferenceManagerCsView;->mConferenceManageLayout:Landroid/widget/FrameLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/BaseInCallComponent;

    move-result-object v13

    if-eqz v13, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/BaseInCallComponent;

    move-result-object v13

    instance-of v13, v13, Lcom/android/incallui/SecTabletInCallService;

    if-eqz v13, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/BaseInCallComponent;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/SecTabletInCallService;

    invoke-virtual {v2}, Lcom/android/incallui/SecTabletInCallService;->getSecCallCardFragment()Lcom/android/incallui/SecCallCardUi;

    move-result-object v13

    if-eqz v13, :cond_3

    invoke-virtual {v2}, Lcom/android/incallui/SecTabletInCallService;->getSecCallCardFragment()Lcom/android/incallui/SecCallCardUi;

    move-result-object v13

    const/4 v14, 0x1

    invoke-interface {v13, v14}, Lcom/android/incallui/SecCallCardUi;->showManageConferenceCallButton(Z)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/SecTabletConferenceManagerCsView;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v13}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private animateForSplit(I)V
    .locals 29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecTabletConferenceManagerCsView;->mConferenceCallList:[Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    aget-object v24, v24, p1

    const v25, 0x7f100045

    invoke-virtual/range {v24 .. v25}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    if-eqz v13, :cond_2

    const-string v24, "animateForSplit..."

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecTabletConferenceManagerCsView;->mPhotoViewForAnim:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    invoke-virtual {v13}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecTabletConferenceManagerCsView;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0a015d

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecTabletConferenceManagerCsView;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0a0159

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v21, v0

    mul-int v24, v21, p1

    add-int v17, v20, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecTabletConferenceManagerCsView;->mPhotoViewForAnim:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup$MarginLayoutParams;

    move/from16 v0, v17

    iput v0, v12, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecTabletConferenceManagerCsView;->mPhotoViewForAnim:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecTabletConferenceManagerCsView;->mPhotoViewForAnim:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setTranslationX(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecTabletConferenceManagerCsView;->mPhotoViewForAnim:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setTranslationY(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecTabletConferenceManagerCsView;->mPhotoViewForAnim:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecTabletConferenceManagerCsView;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0a015f

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecTabletConferenceManagerCsView;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0a015e

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecTabletConferenceManagerCsView;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0a0160

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecTabletConferenceManagerCsView;->mPhotoViewForAnim:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    sget-object v25, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    sub-float v28, v18, v16

    aput v28, v26, v27

    invoke-static/range {v24 .. v26}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecTabletConferenceManagerCsView;->mPhotoViewForAnim:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    sget-object v25, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v28, v0

    sub-float v28, v19, v28

    aput v28, v26, v27

    invoke-static/range {v24 .. v26}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v23

    new-instance v24, Landroid/animation/AnimatorSet;

    invoke-direct/range {v24 .. v24}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/SecTabletConferenceManagerCsView;->mSplitAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecTabletConferenceManagerCsView;->mSplitAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecTabletConferenceManagerCsView;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0a0075

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v15, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecTabletConferenceManagerCsView;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0c0016

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [I

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput v15, v24, v25

    const/16 v25, 0x1

    const/16 v26, 0x0

    aput v26, v24, v25

    invoke-static/range {v24 .. v24}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v14

    new-instance v24, Lcom/android/incallui/SecTabletConferenceManagerCsView$7;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/incallui/SecTabletConferenceManagerCsView$7;-><init>(Lcom/android/incallui/SecTabletConferenceManagerCsView;)V

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecTabletConferenceManagerCsView;->mSplitAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecTabletConferenceManagerCsView;->mConferencePanel:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecTabletConferenceManagerCsView;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0a0075

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecTabletConferenceManagerCsView;->mConferencePanel:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout$LayoutParams;

    iput v6, v11, Landroid/widget/FrameLayout$LayoutParams;->height:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecTabletConferenceManagerCsView;->mConferencePanel:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecTabletConferenceManagerCsView;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v24

    check-cast v24, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-virtual/range {v24 .. v24}, Lcom/android/incallui/ConferenceManagerPresenter;->getMaxCallersInConference()I

    move-result v10

    new-array v4, v10, [Landroid/animation/ObjectAnimator;

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecTabletConferenceManagerCsView;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0c0017

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v10, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecTabletConferenceManagerCsView;->mConferenceCallList:[Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    aget-object v24, v24, v7

    sget-object v25, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    aput v28, v26, v27

    invoke-static/range {v24 .. v26}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v24

    aput-object v24, v4, v7

    aget-object v24, v4, v7

    int-to-long v0, v9

    move-wide/from16 v26, v0

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecTabletConferenceManagerCsView;->mSplitAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v24, v0

    aget-object v25, v4, v7

    invoke-virtual/range {v24 .. v25}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecTabletConferenceManagerCsView;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0c0016

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecTabletConferenceManagerCsView;->mSplitAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v24, v0

    int-to-long v0, v5

    move-wide/from16 v26, v0

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v24

    new-instance v25, Lcom/android/incallui/SecTabletConferenceManagerCsView$8;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/incallui/SecTabletConferenceManagerCsView$8;-><init>(Lcom/android/incallui/SecTabletConferenceManagerCsView;)V

    invoke-virtual/range {v24 .. v25}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecTabletConferenceManagerCsView;->mSplitAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/animation/AnimatorSet;->start()V

    :cond_2
    return-void
.end method

.method private updateConferencePanel()V
    .locals 7

    iget-object v4, p0, Lcom/android/incallui/SecTabletConferenceManagerCsView;->mConferencePanel:Landroid/widget/FrameLayout;

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecTabletConferenceManagerCsView;->updateConferencePanelBackground(Lcom/android/incallui/Call;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletConferenceManagerCsView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0075

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v1, v4

    iget-object v4, p0, Lcom/android/incallui/SecTabletConferenceManagerCsView;->mConferencePanel:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v4, p0, Lcom/android/incallui/SecTabletConferenceManagerCsView;->mConferencePanel:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v4, p0, Lcom/android/incallui/SecTabletConferenceManagerCsView;->mPhotoViewForAnim:Landroid/widget/ImageView;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/incallui/SecTabletConferenceManagerCsView;->mPhotoViewForAnim:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object v4, p0, Lcom/android/incallui/SecTabletConferenceManagerCsView;->mConferenceCallList:[Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletConferenceManagerCsView;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-virtual {v4}, Lcom/android/incallui/ConferenceManagerPresenter;->getMaxCallersInConference()I

    move-result v4

    if-ge v2, v4, :cond_2

    iget-object v4, p0, Lcom/android/incallui/SecTabletConferenceManagerCsView;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v4, v4, v2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setAlpha(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public animateForHide()V
    .locals 15

    const v10, 0x7f0a0075

    const/4 v14, 0x1

    const/4 v13, 0x0

    iget-object v9, p0, Lcom/android/incallui/SecTabletConferenceManagerCsView;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/incallui/SecTabletConferenceManagerCsView;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "animateForHide...isRunning"

    invoke-static {p0, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletConferenceManagerCsView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v2, v9

    iget-object v9, p0, Lcom/android/incallui/SecTabletConferenceManagerCsView;->mConferencePanel:Landroid/widget/FrameLayout;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    iget v9, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-ge v9, v2, :cond_2

    const-string v9, "animateForHide...already hide"

    invoke-static {p0, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/incallui/SecTabletConferenceManagerCsView;->mConferenceManageLayout:Landroid/widget/FrameLayout;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/incallui/SecTabletConferenceManagerCsView;->mConferenceManageLayout:Landroid/widget/FrameLayout;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const-string v9, "animateForHide..."

    invoke-static {p0, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletConferenceManagerCsView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v8, v9

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletConferenceManagerCsView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0016

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    const/4 v9, 0x2

    new-array v9, v9, [I

    aput v8, v9, v13

    aput v13, v9, v14

    invoke-static {v9}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v7

    new-instance v9, Lcom/android/incallui/SecTabletConferenceManagerCsView$3;

    invoke-direct {v9, p0}, Lcom/android/incallui/SecTabletConferenceManagerCsView$3;-><init>(Lcom/android/incallui/SecTabletConferenceManagerCsView;)V

    invoke-virtual {v7, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    int-to-long v10, v4

    invoke-virtual {v7, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v9, p0, Lcom/android/incallui/SecTabletConferenceManagerCsView;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v9, p0, Lcom/android/incallui/SecTabletConferenceManagerCsView;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v9, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletConferenceManagerCsView;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v9

    check-cast v9, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-virtual {v9}, Lcom/android/incallui/ConferenceManagerPresenter;->getMaxCallersInConference()I

    move-result v5

    new-array v0, v5, [Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletConferenceManagerCsView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0017

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_3

    iget-object v9, p0, Lcom/android/incallui/SecTabletConferenceManagerCsView;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v9, v9, v3

    sget-object v10, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v11, v14, [F

    const/4 v12, 0x0

    aput v12, v11, v13

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    aput-object v9, v0, v3

    aget-object v9, v0, v3

    int-to-long v10, v1

    invoke-virtual {v9, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v9, p0, Lcom/android/incallui/SecTabletConferenceManagerCsView;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    aget-object v10, v0, v3

    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    iget-object v9, p0, Lcom/android/incallui/SecTabletConferenceManagerCsView;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v10, Lcom/android/incallui/SecTabletConferenceManagerCsView$4;

    invoke-direct {v10, p0}, Lcom/android/incallui/SecTabletConferenceManagerCsView$4;-><init>(Lcom/android/incallui/SecTabletConferenceManagerCsView;)V

    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v9, p0, Lcom/android/incallui/SecTabletConferenceManagerCsView;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0
.end method

.method public final displayCallerInfoForConferenceRow(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    return-void
.end method

.method public final displayCallerInfoForConferenceRow(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/graphics/drawable/Drawable;ZZ)V
    .locals 7

    iget-object v5, p0, Lcom/android/incallui/SecTabletConferenceManagerCsView;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v5, v5, p1

    const v6, 0x7f100045

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/incallui/SecTabletConferenceManagerCsView;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v5, v5, p1

    const v6, 0x7f100046

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/incallui/SecTabletConferenceManagerCsView;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v5, v5, p1

    const v6, 0x7f100047

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/incallui/SecTabletConferenceManagerCsView;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v5, v5, p1

    const v6, 0x7f100048

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletConferenceManagerCsView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a013c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v0, v5

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
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletConferenceManagerCsView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020071

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p7

    invoke-static {p7, v0}, Lcom/android/incallui/InCallUtils;->getCircledDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p7

    invoke-virtual {v4, p7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected initView()V
    .locals 5

    invoke-super {p0}, Lcom/android/incallui/SecTabletConferenceManagerView;->initView()V

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletConferenceManagerCsView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f040073

    const/4 v4, 0x1

    invoke-virtual {v1, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v3, 0x7f10004d

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletConferenceManagerCsView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/android/incallui/SecTabletConferenceManagerCsView;->mConferencePanel:Landroid/widget/FrameLayout;

    const v3, 0x7f100056

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletConferenceManagerCsView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/incallui/SecTabletConferenceManagerCsView;->mPhotoViewForAnim:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletConferenceManagerCsView;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-virtual {v3}, Lcom/android/incallui/ConferenceManagerPresenter;->getMaxCallersInConference()I

    move-result v3

    new-array v3, v3, [Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/incallui/SecTabletConferenceManagerCsView;->mConferenceCallList:[Landroid/view/ViewGroup;

    const/4 v3, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletConferenceManagerCsView;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-virtual {v3}, Lcom/android/incallui/ConferenceManagerPresenter;->getMaxCallersInConference()I

    move-result v3

    if-ge v0, v3, :cond_0

    iget-object v4, p0, Lcom/android/incallui/SecTabletConferenceManagerCsView;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget v3, v2, v0

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletConferenceManagerCsView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    aput-object v3, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const v3, 0x7f100186

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletConferenceManagerCsView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/android/incallui/SecTabletConferenceManagerCsView;->mConferenceManageLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletConferenceManagerCsView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/contacts/common/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/SecTabletConferenceManagerCsView;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletConferenceManagerCsView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0057

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/incallui/SecTabletConferenceManagerCsView;->mActionBarElevation:I

    return-void

    :array_0
    .array-data 4
        0x7f100050
        0x7f100051
        0x7f100052
        0x7f100053
        0x7f100054
    .end array-data
.end method

.method public isFragmentVisible()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/incallui/SecTabletConferenceManagerCsView;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/SecTabletConferenceManagerCsView;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/SecTabletConferenceManagerCsView;->mConferenceManageLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecTabletConferenceManagerCsView;->mConferenceManageLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onFinishInflate()V
    .locals 0

    invoke-super {p0}, Lcom/android/incallui/SecTabletConferenceManagerView;->onFinishInflate()V

    return-void
.end method

.method public setVisible(Z)V
    .locals 5

    const/16 v4, 0x8

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletConferenceManagerCsView;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletConferenceManagerCsView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/incallui/ConferenceManagerPresenter;->init(Landroid/content/Context;Lcom/android/incallui/CallList;)V

    invoke-direct {p0}, Lcom/android/incallui/SecTabletConferenceManagerCsView;->updateConferencePanel()V

    iget-object v2, p0, Lcom/android/incallui/SecTabletConferenceManagerCsView;->mConferenceManageLayout:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isEasyModeOn()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/SecTabletConferenceManagerCsView;->mConferenceManageLayout:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/SecTabletConferenceManagerCsView;->mConferenceManageLayout:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecTabletConferenceManagerCsView;->mConferenceManageLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/SecTabletConferenceManagerCsView;->animateForManager()V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/incallui/SecTabletConferenceManagerCsView;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/SecTabletConferenceManagerCsView;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/SecTabletConferenceManagerCsView;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->end()V

    :cond_3
    iget-object v2, p0, Lcom/android/incallui/SecTabletConferenceManagerCsView;->mConferenceManageLayout:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isEasyModeOn()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/incallui/SecTabletConferenceManagerCsView;->mConferenceManageLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/incallui/SecTabletConferenceManagerCsView;->mConferenceManageLayout:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecTabletConferenceManagerCsView;->mConferenceManageLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    iget-object v2, p0, Lcom/android/incallui/SecTabletConferenceManagerCsView;->mConferenceManageLayout:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_5

    if-nez v0, :cond_5

    iget-object v2, p0, Lcom/android/incallui/SecTabletConferenceManagerCsView;->mConferenceManageLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletConferenceManagerCsView;->animateForHide()V

    goto :goto_0
.end method

.method public final setupEndButtonForRow(IZ)V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/SecTabletConferenceManagerCsView;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v1, v1, p1

    const v2, 0x7f100049

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p2, :cond_0

    new-instance v1, Lcom/android/incallui/SecTabletConferenceManagerCsView$1;

    invoke-direct {v1, p0, p1}, Lcom/android/incallui/SecTabletConferenceManagerCsView$1;-><init>(Lcom/android/incallui/SecTabletConferenceManagerCsView;I)V

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
    .locals 4

    iget-object v1, p0, Lcom/android/incallui/SecTabletConferenceManagerCsView;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v1, v1, p1

    const v2, 0x7f100043

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setupSeparateButtonForRow rowId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    new-instance v1, Lcom/android/incallui/SecTabletConferenceManagerCsView$2;

    invoke-direct {v1, p0}, Lcom/android/incallui/SecTabletConferenceManagerCsView$2;-><init>(Lcom/android/incallui/SecTabletConferenceManagerCsView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletConferenceManagerCsView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d01c3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletConferenceManagerCsView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d01c8

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateConferencePanelBackground(Lcom/android/incallui/Call;)V
    .locals 3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletConferenceManagerCsView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09007c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_1
    iget-object v1, p0, Lcom/android/incallui/SecTabletConferenceManagerCsView;->mConferencePanel:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecTabletConferenceManagerCsView;->mConferencePanel:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletConferenceManagerCsView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09007a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_1
.end method

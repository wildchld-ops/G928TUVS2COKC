.class public Lcom/android/incallui/SecConferenceManagerCsFragment;
.super Lcom/android/incallui/SecConferenceManagerFragment;
.source "SecConferenceManagerCsFragment.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$OnehandModeListener;


# instance fields
.field private conferenceRowCallStateLabel:Landroid/widget/TextView;

.field private mConferencePanel:Landroid/widget/FrameLayout;

.field private mHideAnimatorSet:Landroid/animation/AnimatorSet;

.field private mManagerAnimatorSet:Landroid/animation/AnimatorSet;

.field private mPhotoViewForAnim:Landroid/widget/ImageView;

.field private mSelectedRowId:I

.field private mSplitAnimatorSet:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecConferenceManagerFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/SecConferenceManagerCsFragment;)I
    .locals 1

    iget v0, p0, Lcom/android/incallui/SecConferenceManagerCsFragment;->mSelectedRowId:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/incallui/SecConferenceManagerCsFragment;I)I
    .locals 0

    iput p1, p0, Lcom/android/incallui/SecConferenceManagerCsFragment;->mSelectedRowId:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/incallui/SecConferenceManagerCsFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/SecConferenceManagerCsFragment;->animateForSplit(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/incallui/SecConferenceManagerCsFragment;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecConferenceManagerCsFragment;->mConferencePanel:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private animateForManager()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/SecConferenceManagerCsFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/SecConferenceManagerCsFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v13}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v13

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/SecConferenceManagerCsFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v13}, Landroid/animation/AnimatorSet;->end()V

    :cond_0
    const-string v13, "animateForManager..."

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecConferenceManagerCsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a00d5

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    float-to-int v12, v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecConferenceManagerCsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a0078

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    float-to-int v13, v13

    sub-int/2addr v12, v13

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/SecConferenceManagerCsFragment;->getConfenrenceCallManagerHeight()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecConferenceManagerCsFragment;->getResources()Landroid/content/res/Resources;

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

    new-instance v13, Lcom/android/incallui/SecConferenceManagerCsFragment$5;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/incallui/SecConferenceManagerCsFragment$5;-><init>(Lcom/android/incallui/SecConferenceManagerCsFragment;)V

    invoke-virtual {v11, v13}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    int-to-long v14, v8

    invoke-virtual {v11, v14, v15}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v13, Landroid/animation/AnimatorSet;

    invoke-direct {v13}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/incallui/SecConferenceManagerCsFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/SecConferenceManagerCsFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v13, v11}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecConferenceManagerCsFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v13

    check-cast v13, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-virtual {v13}, Lcom/android/incallui/ConferenceManagerPresenter;->getMaxCallersInConference()I

    move-result v9

    new-array v3, v9, [Landroid/animation/ObjectAnimator;

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecConferenceManagerCsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0c0015

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v9, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/SecConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v13, v13, v7

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->setAlpha(F)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/SecConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

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

    iget-object v13, v0, Lcom/android/incallui/SecConferenceManagerCsFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    aget-object v14, v3, v7

    invoke-virtual {v13, v14}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/SecConferenceManagerCsFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v14, Lcom/android/incallui/SecConferenceManagerCsFragment$6;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/incallui/SecConferenceManagerCsFragment$6;-><init>(Lcom/android/incallui/SecConferenceManagerCsFragment;)V

    invoke-virtual {v13, v14}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/SecConferenceManagerCsFragment;->mConferencePanel:Landroid/widget/FrameLayout;

    if-eqz v13, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecConferenceManagerCsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a00d5

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    float-to-int v6, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/SecConferenceManagerCsFragment;->mConferencePanel:Landroid/widget/FrameLayout;

    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout$LayoutParams;

    iput v6, v10, Landroid/widget/FrameLayout$LayoutParams;->height:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/SecConferenceManagerCsFragment;->mConferencePanel:Landroid/widget/FrameLayout;

    invoke-virtual {v13, v10}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecConferenceManagerCsFragment;->getView()Landroid/view/View;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/SecConferenceManagerCsFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v14, Landroid/view/animation/interpolator/SineInOut80;

    invoke-direct {v14}, Landroid/view/animation/interpolator/SineInOut80;-><init>()V

    invoke-virtual {v13, v14}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/SecConferenceManagerCsFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v13}, Landroid/animation/AnimatorSet;->start()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecConferenceManagerCsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    if-eqz v13, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecConferenceManagerCsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    instance-of v13, v13, Lcom/android/incallui/SecInCallActivity;

    if-eqz v13, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecConferenceManagerCsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/SecInCallActivity;

    invoke-virtual {v2}, Lcom/android/incallui/SecInCallActivity;->getSecCallButtonFragment()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v13

    if-eqz v13, :cond_3

    invoke-virtual {v2}, Lcom/android/incallui/SecInCallActivity;->getSecCallButtonFragment()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v13

    const/4 v14, 0x1

    invoke-interface {v13, v14}, Lcom/android/incallui/SecCallButtonUi;->animateForManager(Z)V

    :cond_3
    return-void
.end method

.method private animateForSplit(I)V
    .locals 29

    const-string v24, "animateForSplit..."

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    aget-object v24, v24, p1

    const v25, 0x7f100045

    invoke-virtual/range {v24 .. v25}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/incallui/CallCardPresenter;->getSecUi()Lcom/android/incallui/SecCallCardUi;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Lcom/android/incallui/SecCallCardUi;->getPrimaryPhotoView()Landroid/view/View;

    move-result-object v21

    new-instance v24, Landroid/animation/AnimatorSet;

    invoke-direct/range {v24 .. v24}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/SecConferenceManagerCsFragment;->mSplitAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v24

    if-nez v24, :cond_0

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecConferenceManagerCsFragment;->mPhotoViewForAnim:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecConferenceManagerCsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f02031a

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v25

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecConferenceManagerCsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f0a013c

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v26

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    invoke-static/range {v25 .. v26}, Lcom/android/incallui/InCallUtils;->getCircledDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {v14}, Lcom/android/incallui/secutils/CallAnimationUtils;->getAbsolutePositionTop(Landroid/view/View;)I

    move-result v18

    invoke-static {v14}, Lcom/android/incallui/secutils/CallAnimationUtils;->getAbsolutePositionLeft(Landroid/view/View;)I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-static/range {v21 .. v21}, Lcom/android/incallui/secutils/CallAnimationUtils;->getAbsolutePositionTop(Landroid/view/View;)I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-static/range {v21 .. v21}, Lcom/android/incallui/secutils/CallAnimationUtils;->getAbsolutePositionLeft(Landroid/view/View;)I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecConferenceManagerCsFragment;->mPhotoViewForAnim:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup$MarginLayoutParams;

    move/from16 v0, v18

    iput v0, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecConferenceManagerCsFragment;->mPhotoViewForAnim:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecConferenceManagerCsFragment;->mPhotoViewForAnim:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setTranslationX(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecConferenceManagerCsFragment;->mPhotoViewForAnim:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setTranslationY(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecConferenceManagerCsFragment;->mPhotoViewForAnim:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecConferenceManagerCsFragment;->mPhotoViewForAnim:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    sget-object v25, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    sub-float v28, v19, v17

    aput v28, v26, v27

    invoke-static/range {v24 .. v26}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecConferenceManagerCsFragment;->mPhotoViewForAnim:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    sget-object v25, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v28, v0

    sub-float v28, v20, v28

    aput v28, v26, v27

    invoke-static/range {v24 .. v26}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecConferenceManagerCsFragment;->mSplitAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/SecConferenceManagerCsFragment;->getConfenrenceCallManagerHeight()I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecConferenceManagerCsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0c0016

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [I

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput v16, v24, v25

    const/16 v25, 0x1

    const/16 v26, 0x0

    aput v26, v24, v25

    invoke-static/range {v24 .. v24}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v15

    new-instance v24, Lcom/android/incallui/SecConferenceManagerCsFragment$7;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/incallui/SecConferenceManagerCsFragment$7;-><init>(Lcom/android/incallui/SecConferenceManagerCsFragment;)V

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecConferenceManagerCsFragment;->mSplitAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecConferenceManagerCsFragment;->mConferencePanel:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    if-eqz v24, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/SecConferenceManagerCsFragment;->getConfenrenceCallManagerHeight()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecConferenceManagerCsFragment;->mConferencePanel:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout$LayoutParams;

    iput v7, v12, Landroid/widget/FrameLayout$LayoutParams;->height:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecConferenceManagerCsFragment;->mConferencePanel:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecConferenceManagerCsFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v24

    check-cast v24, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-virtual/range {v24 .. v24}, Lcom/android/incallui/ConferenceManagerPresenter;->getMaxCallersInConference()I

    move-result v11

    new-array v5, v11, [Landroid/animation/ObjectAnimator;

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecConferenceManagerCsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0c0017

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v11, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    aget-object v24, v24, v8

    if-eqz v24, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    aget-object v24, v24, v8

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

    aput-object v24, v5, v8

    aget-object v24, v5, v8

    int-to-long v0, v10

    move-wide/from16 v26, v0

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecConferenceManagerCsFragment;->mSplitAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v24, v0

    aget-object v25, v5, v8

    invoke-virtual/range {v24 .. v25}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecConferenceManagerCsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0c0016

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecConferenceManagerCsFragment;->mSplitAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v24, v0

    new-instance v25, Landroid/view/animation/interpolator/SineInOut80;

    invoke-direct/range {v25 .. v25}, Landroid/view/animation/interpolator/SineInOut80;-><init>()V

    invoke-virtual/range {v24 .. v25}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecConferenceManagerCsFragment;->mSplitAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v24, v0

    int-to-long v0, v6

    move-wide/from16 v26, v0

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v24

    new-instance v25, Lcom/android/incallui/SecConferenceManagerCsFragment$8;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/incallui/SecConferenceManagerCsFragment$8;-><init>(Lcom/android/incallui/SecConferenceManagerCsFragment;)V

    invoke-virtual/range {v24 .. v25}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecConferenceManagerCsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v24

    if-eqz v24, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecConferenceManagerCsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v24

    move-object/from16 v0, v24

    instance-of v0, v0, Lcom/android/incallui/SecInCallActivity;

    move/from16 v24, v0

    if-eqz v24, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecConferenceManagerCsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/SecInCallActivity;

    invoke-virtual {v4}, Lcom/android/incallui/SecInCallActivity;->getSecCallCardFragment()Lcom/android/incallui/SecCallCardUi;

    move-result-object v24

    if-eqz v24, :cond_4

    invoke-virtual {v4}, Lcom/android/incallui/SecInCallActivity;->getSecCallCardFragment()Lcom/android/incallui/SecCallCardUi;

    move-result-object v24

    const/16 v25, 0x0

    invoke-interface/range {v24 .. v25}, Lcom/android/incallui/SecCallCardUi;->animateForHideManager(Z)V

    :cond_4
    invoke-virtual {v4}, Lcom/android/incallui/SecInCallActivity;->getSecCallButtonFragment()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v24

    if-eqz v24, :cond_5

    invoke-virtual {v4}, Lcom/android/incallui/SecInCallActivity;->getSecCallButtonFragment()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v24

    const/16 v25, 0x0

    invoke-interface/range {v24 .. v25}, Lcom/android/incallui/SecCallButtonUi;->animateForManager(Z)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecConferenceManagerCsFragment;->mSplitAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private getConfenrenceCallManagerHeight()I
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecConferenceManagerCsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a007a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isOneHandModeOn()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecConferenceManagerCsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a043d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/SecConferenceManagerCsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0075

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    goto :goto_0
.end method

.method private updateConferencePanel()V
    .locals 7

    iget-object v4, p0, Lcom/android/incallui/SecConferenceManagerCsFragment;->mConferencePanel:Landroid/widget/FrameLayout;

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecConferenceManagerCsFragment;->updateConferencePanelBackground(Lcom/android/incallui/Call;)V

    invoke-direct {p0}, Lcom/android/incallui/SecConferenceManagerCsFragment;->getConfenrenceCallManagerHeight()I

    move-result v1

    iget-object v4, p0, Lcom/android/incallui/SecConferenceManagerCsFragment;->mConferencePanel:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v4, p0, Lcom/android/incallui/SecConferenceManagerCsFragment;->mConferencePanel:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v4, p0, Lcom/android/incallui/SecConferenceManagerCsFragment;->mPhotoViewForAnim:Landroid/widget/ImageView;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/incallui/SecConferenceManagerCsFragment;->mPhotoViewForAnim:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object v4, p0, Lcom/android/incallui/SecConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/SecConferenceManagerCsFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-virtual {v4}, Lcom/android/incallui/ConferenceManagerPresenter;->getMaxCallersInConference()I

    move-result v4

    if-ge v2, v4, :cond_2

    iget-object v4, p0, Lcom/android/incallui/SecConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

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

    iget-object v10, p0, Lcom/android/incallui/SecConferenceManagerCsFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/incallui/SecConferenceManagerCsFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v10}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "animateForHide...isRunning"

    invoke-static {p0, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/SecConferenceManagerCsFragment;->getConfenrenceCallManagerHeight()I

    move-result v3

    iget-object v10, p0, Lcom/android/incallui/SecConferenceManagerCsFragment;->mConferencePanel:Landroid/widget/FrameLayout;

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    iget v10, v7, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-ge v10, v3, :cond_2

    const-string v10, "animateForHide...already hide"

    invoke-static {p0, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecConferenceManagerCsFragment;->getView()Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecConferenceManagerCsFragment;->getView()Landroid/view/View;

    move-result-object v10

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const-string v10, "animateForHide..."

    invoke-static {p0, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/incallui/SecConferenceManagerCsFragment;->getConfenrenceCallManagerHeight()I

    move-result v9

    invoke-virtual {p0}, Lcom/android/incallui/SecConferenceManagerCsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c0016

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    const/4 v10, 0x2

    new-array v10, v10, [I

    const/4 v11, 0x0

    aput v9, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x0

    aput v12, v10, v11

    invoke-static {v10}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v8

    new-instance v10, Lcom/android/incallui/SecConferenceManagerCsFragment$3;

    invoke-direct {v10, p0}, Lcom/android/incallui/SecConferenceManagerCsFragment$3;-><init>(Lcom/android/incallui/SecConferenceManagerCsFragment;)V

    invoke-virtual {v8, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    int-to-long v10, v5

    invoke-virtual {v8, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v10, Landroid/animation/AnimatorSet;

    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v10, p0, Lcom/android/incallui/SecConferenceManagerCsFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v10, p0, Lcom/android/incallui/SecConferenceManagerCsFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v10, v8}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {p0}, Lcom/android/incallui/SecConferenceManagerCsFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v10

    check-cast v10, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-virtual {v10}, Lcom/android/incallui/ConferenceManagerPresenter;->getMaxCallersInConference()I

    move-result v6

    new-array v1, v6, [Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Lcom/android/incallui/SecConferenceManagerCsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c0017

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v6, :cond_3

    iget-object v10, p0, Lcom/android/incallui/SecConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v10, v10, v4

    sget-object v11, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v12, 0x1

    new-array v12, v12, [F

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput v14, v12, v13

    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    aput-object v10, v1, v4

    aget-object v10, v1, v4

    int-to-long v12, v2

    invoke-virtual {v10, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v10, p0, Lcom/android/incallui/SecConferenceManagerCsFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    aget-object v11, v1, v4

    invoke-virtual {v10, v11}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    iget-object v10, p0, Lcom/android/incallui/SecConferenceManagerCsFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v11, Lcom/android/incallui/SecConferenceManagerCsFragment$4;

    invoke-direct {v11, p0}, Lcom/android/incallui/SecConferenceManagerCsFragment$4;-><init>(Lcom/android/incallui/SecConferenceManagerCsFragment;)V

    invoke-virtual {v10, v11}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v10, p0, Lcom/android/incallui/SecConferenceManagerCsFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v11, Landroid/view/animation/interpolator/SineInOut80;

    invoke-direct {v11}, Landroid/view/animation/interpolator/SineInOut80;-><init>()V

    invoke-virtual {v10, v11}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v10, p0, Lcom/android/incallui/SecConferenceManagerCsFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v10}, Landroid/animation/AnimatorSet;->start()V

    invoke-virtual {p0}, Lcom/android/incallui/SecConferenceManagerCsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecConferenceManagerCsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    instance-of v10, v10, Lcom/android/incallui/SecInCallActivity;

    if-eqz v10, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecConferenceManagerCsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/SecInCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/SecInCallActivity;->getSecCallCardFragment()Lcom/android/incallui/SecCallCardUi;

    move-result-object v10

    if-eqz v10, :cond_4

    invoke-virtual {v0}, Lcom/android/incallui/SecInCallActivity;->getSecCallCardFragment()Lcom/android/incallui/SecCallCardUi;

    move-result-object v10

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Lcom/android/incallui/SecCallCardUi;->animateForHideManager(Z)V

    :cond_4
    invoke-virtual {v0}, Lcom/android/incallui/SecInCallActivity;->getSecCallButtonFragment()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/SecInCallActivity;->getSecCallButtonFragment()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcom/android/incallui/SecCallButtonUi;->animateForManager(Z)V

    goto/16 :goto_0
.end method

.method public final displayCallerInfoForConferenceRow(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    return-void
.end method

.method public final displayCallerInfoForConferenceRow(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/graphics/drawable/Drawable;ZZ)V
    .locals 11

    iget-object v9, p0, Lcom/android/incallui/SecConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v9, v9, p1

    const v10, 0x7f100045

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/android/incallui/SecConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v9, v9, p1

    const v10, 0x7f100150

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/incallui/SecConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v9, v9, p1

    const v10, 0x7f100046

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/incallui/SecConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v9, v9, p1

    const v10, 0x7f100047

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/incallui/SecConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v9, v9, p1

    const v10, 0x7f100048

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/incallui/SecConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v9, v9, p1

    const v10, 0x7f100151

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecConferenceManagerCsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a013c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v1, v9

    if-eqz p7, :cond_2

    if-eqz p8, :cond_2

    move-object/from16 v0, p7

    invoke-static {v0, v1}, Lcom/android/incallui/InCallUtils;->getCircledDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p7

    move-object/from16 v0, p7

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v7, :cond_0

    const/16 v9, 0x8

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v9, "vzw_volte_ui"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    if-eqz v3, :cond_1

    if-eqz p9, :cond_5

    const/4 v9, 0x0

    :goto_1
    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    const/16 v9, 0x8

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v9, 0x8

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_2
    const/4 v2, 0x0

    if-eqz p2, :cond_3

    if-eqz v7, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    const/4 v9, 0x0

    invoke-virtual {p2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isLetter(C)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {p2, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v7, :cond_0

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/SecConferenceManagerCsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f020071

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p7

    move-object/from16 v0, p7

    invoke-static {v0, v1}, Lcom/android/incallui/InCallUtils;->getCircledDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p7

    move-object/from16 v0, p7

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v7, :cond_0

    const/16 v9, 0x8

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_5
    const/16 v9, 0x8

    goto :goto_1
.end method

.method public isFragmentVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecConferenceManagerCsFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecConferenceManagerCsFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/android/incallui/SecConferenceManagerFragment;->isFragmentVisible()Z

    move-result v0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v3

    if-eqz v3, :cond_2

    const v3, 0x7f040074

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    const v3, 0x7f10004d

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/android/incallui/SecConferenceManagerCsFragment;->mConferencePanel:Landroid/widget/FrameLayout;

    const v3, 0x7f100056

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/incallui/SecConferenceManagerCsFragment;->mPhotoViewForAnim:Landroid/widget/ImageView;

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isEasyModeOn()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/incallui/SecConferenceManagerCsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0137

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/SecConferenceManagerCsFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-virtual {v3}, Lcom/android/incallui/ConferenceManagerPresenter;->getMaxCallersInConference()I

    move-result v3

    new-array v3, v3, [Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/incallui/SecConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    const/4 v3, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/SecConferenceManagerCsFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-virtual {v3}, Lcom/android/incallui/ConferenceManagerPresenter;->getMaxCallersInConference()I

    move-result v3

    if-ge v0, v3, :cond_3

    if-eqz v1, :cond_3

    iget-object v4, p0, Lcom/android/incallui/SecConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget v3, v2, v0

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    aput-object v3, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const v3, 0x7f040073

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/SecConferenceManagerCsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/contacts/common/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/SecConferenceManagerCsFragment;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    invoke-virtual {p0}, Lcom/android/incallui/SecConferenceManagerCsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0057

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/incallui/SecConferenceManagerCsFragment;->mActionBarElevation:I

    invoke-virtual {p0}, Lcom/android/incallui/SecConferenceManagerCsFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-virtual {v3}, Lcom/android/incallui/ConferenceManagerPresenter;->startCallTimer()V

    const-string v3, "support_onehand_operation"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/incallui/InCallPresenter;->addOnehandModeListener(Lcom/android/incallui/InCallPresenter$OnehandModeListener;)V

    :cond_4
    return-object v1

    nop

    :array_0
    .array-data 4
        0x7f100050
        0x7f100051
        0x7f100052
        0x7f100053
        0x7f100054
    .end array-data
.end method

.method public onDestroyView()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/SecConferenceManagerCsFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/ConferenceManagerPresenter;->stopCallTimer()V

    const-string v0, "support_onehand_operation"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeOnehandModeListener(Lcom/android/incallui/InCallPresenter$OnehandModeListener;)V

    :cond_0
    invoke-super {p0}, Lcom/android/incallui/SecConferenceManagerFragment;->onDestroyView()V

    return-void
.end method

.method public onOnehandModeChanged()V
    .locals 1

    const-string v0, "onOnehandModeChanged"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecConferenceManagerCsFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/incallui/SecConferenceManagerCsFragment;->setVisible(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPrimaryCallElapsedTime(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    const v1, 0x7f100152

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/SecConferenceManagerCsFragment;->conferenceRowCallStateLabel:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/incallui/SecConferenceManagerCsFragment;->conferenceRowCallStateLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecConferenceManagerCsFragment;->conferenceRowCallStateLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/SecConferenceManagerCsFragment;->conferenceRowCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setVisible(Z)V
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/incallui/SecConferenceManagerCsFragment;->getView()Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, "getView is null"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/SecConferenceManagerCsFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-virtual {p0}, Lcom/android/incallui/SecConferenceManagerCsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/android/incallui/ConferenceManagerPresenter;->init(Landroid/content/Context;Lcom/android/incallui/CallList;)V

    invoke-direct {p0}, Lcom/android/incallui/SecConferenceManagerCsFragment;->updateConferencePanel()V

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isEasyModeOn()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/SecConferenceManagerCsFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/SecConferenceManagerCsFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/SecConferenceManagerCsFragment;->animateForManager()V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/incallui/SecConferenceManagerCsFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/incallui/SecConferenceManagerCsFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/incallui/SecConferenceManagerCsFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->end()V

    :cond_4
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isEasyModeOn()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/SecConferenceManagerCsFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/SecConferenceManagerCsFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    if-nez v1, :cond_6

    invoke-virtual {p0}, Lcom/android/incallui/SecConferenceManagerCsFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/incallui/SecConferenceManagerCsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecConferenceManagerCsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    instance-of v3, v3, Lcom/android/incallui/SecInCallActivity;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecConferenceManagerCsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/SecInCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/SecInCallActivity;->getSecCallButtonFragment()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/SecInCallActivity;->getSecCallButtonFragment()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v3

    invoke-interface {v3, v5}, Lcom/android/incallui/SecCallButtonUi;->returnButtonsForManager(Z)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0, v1}, Lcom/android/incallui/SecConferenceManagerCsFragment;->updateConferencePanelBackground(Lcom/android/incallui/Call;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecConferenceManagerCsFragment;->animateForHide()V

    goto/16 :goto_0
.end method

.method public final setupEndButtonForRow(IZ)V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/incallui/SecConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v4, v4, p1

    const v5, 0x7f100049

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v4, p0, Lcom/android/incallui/SecConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v4, v4, p1

    const v5, 0x7f10004a

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/SecConferenceManagerCsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0166

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/incallui/SecConferenceManagerCsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0168

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-static {v0, v2, v2, v3, v3}, Lcom/android/incallui/InCallUtils;->setRippleSize(Landroid/view/View;IIII)V

    if-eqz p2, :cond_2

    new-instance v4, Lcom/android/incallui/SecConferenceManagerCsFragment$1;

    invoke-direct {v4, p0, p1}, Lcom/android/incallui/SecConferenceManagerCsFragment$1;-><init>(Lcom/android/incallui/SecConferenceManagerCsFragment;I)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v4, "support_drop_text_conference_manage"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    const-string v4, "support_drop_text_conference_manage"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public final setupSeparateButtonForRow(IZ)V
    .locals 6

    iget-object v4, p0, Lcom/android/incallui/SecConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v4, v4, p1

    const v5, 0x7f100043

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/incallui/SecConferenceManagerCsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a015c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/incallui/SecConferenceManagerCsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0159

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/incallui/SecConferenceManagerCsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0168

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {v3, v2, v1, v0, v0}, Lcom/android/incallui/InCallUtils;->setRippleSize(Landroid/view/View;IIII)V

    if-eqz p2, :cond_0

    new-instance v4, Lcom/android/incallui/SecConferenceManagerCsFragment$2;

    invoke-direct {v4, p0}, Lcom/android/incallui/SecConferenceManagerCsFragment$2;-><init>(Lcom/android/incallui/SecConferenceManagerCsFragment;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

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

    invoke-virtual {p0}, Lcom/android/incallui/SecConferenceManagerCsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09007c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_1
    iget-object v1, p0, Lcom/android/incallui/SecConferenceManagerCsFragment;->mConferencePanel:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecConferenceManagerCsFragment;->mConferencePanel:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/SecConferenceManagerCsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09007a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_1
.end method

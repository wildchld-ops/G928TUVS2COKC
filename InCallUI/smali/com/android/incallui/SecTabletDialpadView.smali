.class public Lcom/android/incallui/SecTabletDialpadView;
.super Lcom/android/incallui/SecTabletView;
.source "SecTabletDialpadView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnHoverListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/incallui/SecDialpadUi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/SecTabletDialpadView$DTMFKeyListener;,
        Lcom/android/incallui/SecTabletDialpadView$HoverIgnoringLinearLayout;,
        Lcom/android/incallui/SecTabletDialpadView$DialpadSlidingLinearLayout;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/SecTabletView",
        "<",
        "Lcom/android/incallui/DialpadPresenter;",
        "Lcom/android/incallui/DialpadPresenter$DialpadUi;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/view/View$OnHoverListener;",
        "Landroid/view/View$OnKeyListener;",
        "Landroid/view/View$OnTouchListener;",
        "Lcom/android/incallui/SecDialpadUi;"
    }
.end annotation


# static fields
.field private static final mDisplayMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final sHandler:Landroid/os/Handler;


# instance fields
.field private mDeleteButton:Landroid/view/View;

.field private mDialerKeyListener:Lcom/android/incallui/SecTabletDialpadView$DTMFKeyListener;

.field private mDialpad:Landroid/view/View;

.field private mDialpadView:Lcom/android/phone/common/dialpad/DialpadView;

.field private mDtmfDialerField:Landroid/widget/EditText;

.field private mElapsedTime:Landroid/widget/TextView;

.field private mElapsedTimeContainer:Landroid/view/View;

.field protected mInCallMenu:Lcom/android/incallui/InCallMenu;

.field private mInCallMenuPopup:Lcom/android/incallui/SecTabletInCallMenuPopup;

.field private mOnScreenMenuBtn:Landroid/widget/Button;

.field private mPreviouslyProcessedTime:J

.field private mSlideIn:Landroid/view/animation/Animation;

.field mSlideInListner:Lcom/android/phone/common/animation/AnimationListenerAdapter;

.field private mSlideOut:Landroid/view/animation/Animation;

.field mSlideOutListener:Lcom/android/phone/common/animation/AnimationListenerAdapter;

.field private mVolumeButton:Landroid/widget/TextView;

.field private mVolumeButtonStub:Landroid/view/ViewStub;

.field private mVolumeSeekBarLayout:Lcom/android/incallui/SecTabletVolumeSeekBar;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/incallui/SecTabletDialpadView;->mDisplayMap:Ljava/util/HashMap;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/incallui/SecTabletDialpadView;->sHandler:Landroid/os/Handler;

    sget-object v0, Lcom/android/incallui/SecTabletDialpadView;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f100083

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x31

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/SecTabletDialpadView;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f100079

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x32

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/SecTabletDialpadView;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f10007a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x33

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/SecTabletDialpadView;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f10007b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x34

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/SecTabletDialpadView;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f10007c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x35

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/SecTabletDialpadView;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f10007d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x36

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/SecTabletDialpadView;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f10007e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x37

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/SecTabletDialpadView;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f10007f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x38

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/SecTabletDialpadView;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f100080

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x39

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/SecTabletDialpadView;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f100087

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x30

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/SecTabletDialpadView;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f100085

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x23

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/SecTabletDialpadView;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f100086

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/incallui/SecTabletView;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/incallui/SecTabletDialpadView$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/SecTabletDialpadView$1;-><init>(Lcom/android/incallui/SecTabletDialpadView;)V

    iput-object v0, p0, Lcom/android/incallui/SecTabletDialpadView;->mSlideInListner:Lcom/android/phone/common/animation/AnimationListenerAdapter;

    new-instance v0, Lcom/android/incallui/SecTabletDialpadView$2;

    invoke-direct {v0, p0}, Lcom/android/incallui/SecTabletDialpadView$2;-><init>(Lcom/android/incallui/SecTabletDialpadView;)V

    iput-object v0, p0, Lcom/android/incallui/SecTabletDialpadView;->mSlideOutListener:Lcom/android/phone/common/animation/AnimationListenerAdapter;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/incallui/SecTabletDialpadView;->mPreviouslyProcessedTime:J

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/SecTabletDialpadView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/SecTabletDialpadView;->setTopMarginOfDialpad(I)V

    return-void
.end method

.method private animateForTopMargin(Z)V
    .locals 6

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v4}, Lcom/android/incallui/SecTabletDialpadView;->setTopMarginOfDialpad(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletDialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0a0189

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v0, v3

    if-eqz p1, :cond_1

    neg-int v3, v0

    :goto_1
    invoke-direct {p0, v3}, Lcom/android/incallui/SecTabletDialpadView;->setTopMarginOfDialpad(I)V

    const/4 v3, 0x2

    new-array v5, v3, [I

    if-eqz p1, :cond_2

    neg-int v3, v0

    :goto_2
    aput v3, v5, v4

    const/4 v3, 0x1

    if-eqz p1, :cond_3

    :goto_3
    aput v4, v5, v3

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    new-instance v3, Lcom/android/incallui/SecTabletDialpadView$4;

    invoke-direct {v3, p0}, Lcom/android/incallui/SecTabletDialpadView$4;-><init>(Lcom/android/incallui/SecTabletDialpadView;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v3, Landroid/view/animation/interpolator/QuintOut80;

    invoke-direct {v3}, Landroid/view/animation/interpolator/QuintOut80;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletDialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v4, v1

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1

    :cond_2
    move v3, v4

    goto :goto_2

    :cond_3
    neg-int v4, v0

    goto :goto_3
.end method

.method private animateHideDialpad()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecTabletDialpadView;->mSlideOut:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecTabletDialpadView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecTabletDialpadView;->mSlideOut:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecTabletDialpadView;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/incallui/SecTabletDialpadView;->animateForTopMargin(Z)V

    goto :goto_0
.end method

.method private animateShowDialpad()V
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletDialpadView;->setVisibility(I)V

    const-string v1, "clear_dialpad_digits"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletDialpadView;->clearDigits()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletDialpadView;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f100088

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/common/dialpad/DialpadView;

    invoke-virtual {v0}, Lcom/android/phone/common/dialpad/DialpadView;->animateShow()V

    iget-object v1, p0, Lcom/android/incallui/SecTabletDialpadView;->mSlideIn:Landroid/view/animation/Animation;

    if-nez v1, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/SecTabletDialpadView;->mSlideIn:Landroid/view/animation/Animation;

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletDialpadView;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/incallui/SecTabletDialpadView;->animateForTopMargin(Z)V

    goto :goto_0
.end method

.method private configureKeypadListeners(Landroid/view/View;)V
    .locals 4

    const/16 v3, 0xc

    new-array v0, v3, [I

    fill-array-data v0, :array_0

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    aget v3, v0, v2

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/phone/common/dialpad/DialpadKeyButton;

    invoke-virtual {v1, p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v1, p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-virtual {v1, p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    invoke-virtual {v1, p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x7f100087
        0x7f100083
        0x7f100079
        0x7f10007a
        0x7f10007b
        0x7f10007c
        0x7f10007d
        0x7f10007e
        0x7f10007f
        0x7f100080
        0x7f100086
        0x7f100085
    .end array-data
.end method

.method private initVolumePanelLayout()V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/SecTabletDialpadView;->mVolumeButtonStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    const v0, 0x7f100199

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecTabletDialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/SecTabletDialpadView;->mVolumeButtonStub:Landroid/view/ViewStub;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecTabletDialpadView;->mVolumeButtonStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecTabletDialpadView;->mVolumeButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v0, 0x7f100328

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecTabletDialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/SecTabletDialpadView;->mVolumeButton:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/incallui/SecTabletDialpadView;->mVolumeButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletDialpadView;->mVolumeButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletDialpadView;->mVolumeButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletDialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900bd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletDialpadView;->mVolumeButton:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    new-instance v0, Lcom/android/incallui/SecTabletVolumeSeekBar;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletDialpadView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/incallui/SecTabletVolumeSeekBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/SecTabletDialpadView;->mVolumeSeekBarLayout:Lcom/android/incallui/SecTabletVolumeSeekBar;

    return-void
.end method

.method private menuButtonClicked()V
    .locals 9

    const v8, 0x7f0d01bc

    const v7, 0x7f0d01bb

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/incallui/SecTabletDialpadView;->mOnScreenMenuBtn:Landroid/widget/Button;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/incallui/SecTabletDialpadView;->mOnScreenMenuBtn:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "menuButtonClicked: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletDialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d019e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletDialpadView;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallMenu;->isMenuOpen()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletDialpadView;->dismissInCallMenu()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/incallui/SecTabletDialpadView;->showInCallMenu()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletDialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0158

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-static {v3, v6, v5}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v3, "common_volte_kor"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isPSDomain()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/secui/SecCall;->getHoldStateOfTheOtherParty()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "can not hold volte call"

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    const v3, 0x7f0d025a

    invoke-static {v3}, Lcom/android/incallui/InCallUtils;->displayToast(I)V

    goto/16 :goto_0

    :cond_4
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/incallui/TelecomAdapter;->holdCall(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletDialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0154

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-static {v3, v6, v5}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/incallui/TelecomAdapter;->unholdCall(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletDialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0155

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletDialpadView;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletDialpadView;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallMenu;->addCallClicked()V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletDialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d01ea

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletDialpadView;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletDialpadView;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallMenu;->callTransferClicked()V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletDialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0341

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletDialpadView;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletDialpadView;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallMenu;->addVoiceUserClicked()V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletDialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletDialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_a
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletDialpadView;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletDialpadView;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallMenu;->recordstopClicked()V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getRecorderMgr()Lcom/android/incallui/PhoneVoiceRecorderManager;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/incallui/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/incallui/SecTabletDialpadView;->mOnScreenMenuBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletDialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_b
    iget-object v3, p0, Lcom/android/incallui/SecTabletDialpadView;->mOnScreenMenuBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletDialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletDialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d01b3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-static {v3, v6, v5}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/incallui/TelecomAdapter;->holdCall(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletDialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d01b2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-static {v3, v6, v5}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/incallui/TelecomAdapter;->merge(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private setTopMarginOfDialpad(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletDialpadView;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletDialpadView;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletDialpadView;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private showInCallMenu()V
    .locals 1

    const-string v0, "- showInCallMenu"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletDialpadView;->mInCallMenuPopup:Lcom/android/incallui/SecTabletInCallMenuPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletDialpadView;->mInCallMenuPopup:Lcom/android/incallui/SecTabletInCallMenuPopup;

    invoke-virtual {v0}, Lcom/android/incallui/SecTabletInCallMenuPopup;->show()V

    :cond_0
    return-void
.end method

.method private showVolumeSeekBar()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecTabletDialpadView;->mVolumeSeekBarLayout:Lcom/android/incallui/SecTabletVolumeSeekBar;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecTabletDialpadView;->mVolumeSeekBarLayout:Lcom/android/incallui/SecTabletVolumeSeekBar;

    iget-object v1, p0, Lcom/android/incallui/SecTabletDialpadView;->mVolumeButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1, p0}, Lcom/android/incallui/SecTabletVolumeSeekBar;->showBelow(Landroid/view/View;Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method public appendDigitsToField(C)V
    .locals 6

    iget-object v2, p0, Lcom/android/incallui/SecTabletDialpadView;->mDtmfDialerField:Landroid/widget/EditText;

    if-eqz v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/incallui/SecTabletDialpadView;->mPreviouslyProcessedTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/android/incallui/SecTabletDialpadView;->mPreviouslyProcessedTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1388

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const-string v2, "Enter empty space"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/SecTabletDialpadView;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    const/16 v3, 0x20

    invoke-interface {v2, v3}, Landroid/text/Editable;->append(C)Landroid/text/Editable;

    :cond_0
    iput-wide v0, p0, Lcom/android/incallui/SecTabletDialpadView;->mPreviouslyProcessedTime:J

    iget-object v2, p0, Lcom/android/incallui/SecTabletDialpadView;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/text/Editable;->append(C)Landroid/text/Editable;

    :cond_1
    return-void
.end method

.method public clearDigits()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecTabletDialpadView;->mDtmfDialerField:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletDialpadView;->mDtmfDialerField:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method createPresenter()Lcom/android/incallui/DialpadPresenter;
    .locals 1

    invoke-static {}, Lcom/android/incallui/DialpadPresenter;->getInstance()Lcom/android/incallui/DialpadPresenter;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic createPresenter()Lcom/android/incallui/Presenter;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletDialpadView;->createPresenter()Lcom/android/incallui/DialpadPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected dismissInCallMenu()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletDialpadView;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletDialpadView;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallMenu;->isMenuOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletDialpadView;->mInCallMenuPopup:Lcom/android/incallui/SecTabletInCallMenuPopup;

    if-eqz v0, :cond_0

    const-string v0, "- dismissInCallMenu"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletDialpadView;->mInCallMenuPopup:Lcom/android/incallui/SecTabletInCallMenuPopup;

    invoke-virtual {v0}, Lcom/android/incallui/SecTabletInCallMenuPopup;->dismiss()V

    :cond_0
    return-void
.end method

.method public getDtmfText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecTabletDialpadView;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInCallMenu()Lcom/android/incallui/InCallMenu;
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecTabletDialpadView;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/InCallMenu;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletDialpadView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/incallui/InCallMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/SecTabletDialpadView;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecTabletDialpadView;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    return-object v0
.end method

.method getUi()Lcom/android/incallui/SecDialpadUi;
    .locals 0

    return-object p0
.end method

.method bridge synthetic getUi()Lcom/android/incallui/Ui;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletDialpadView;->getUi()Lcom/android/incallui/SecDialpadUi;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    invoke-super {p0}, Lcom/android/incallui/SecTabletView;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public hideElapsedTimeContainer()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecTabletDialpadView;->mElapsedTimeContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "hideElapsedTimeContainer"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletDialpadView;->mElapsedTimeContainer:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected initView()V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletDialpadView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400ea

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v1, 0x7f100088

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletDialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/phone/common/dialpad/DialpadView;

    iput-object v1, p0, Lcom/android/incallui/SecTabletDialpadView;->mDialpadView:Lcom/android/phone/common/dialpad/DialpadView;

    iget-object v1, p0, Lcom/android/incallui/SecTabletDialpadView;->mDialpadView:Lcom/android/phone/common/dialpad/DialpadView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecTabletDialpadView;->mDialpadView:Lcom/android/phone/common/dialpad/DialpadView;

    invoke-virtual {v1, v3}, Lcom/android/phone/common/dialpad/DialpadView;->setCanDigitsBeEdited(Z)V

    iget-object v1, p0, Lcom/android/incallui/SecTabletDialpadView;->mDialpadView:Lcom/android/phone/common/dialpad/DialpadView;

    const v2, 0x7f0900b8

    invoke-virtual {v1, v2}, Lcom/android/phone/common/dialpad/DialpadView;->setBackgroundResource(I)V

    :cond_0
    const v1, 0x7f100198

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletDialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/SecTabletDialpadView;->mElapsedTimeContainer:Landroid/view/View;

    const v1, 0x7f10008b

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletDialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/incallui/SecTabletDialpadView;->mDtmfDialerField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/incallui/SecTabletDialpadView;->mDtmfDialerField:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    new-instance v1, Lcom/android/incallui/SecTabletDialpadView$DTMFKeyListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/incallui/SecTabletDialpadView$DTMFKeyListener;-><init>(Lcom/android/incallui/SecTabletDialpadView;Lcom/android/incallui/SecTabletDialpadView$1;)V

    iput-object v1, p0, Lcom/android/incallui/SecTabletDialpadView;->mDialerKeyListener:Lcom/android/incallui/SecTabletDialpadView$DTMFKeyListener;

    iget-object v1, p0, Lcom/android/incallui/SecTabletDialpadView;->mDtmfDialerField:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/incallui/SecTabletDialpadView;->mDialerKeyListener:Lcom/android/incallui/SecTabletDialpadView$DTMFKeyListener;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    iget-object v1, p0, Lcom/android/incallui/SecTabletDialpadView;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setLongClickable(Z)V

    iget-object v1, p0, Lcom/android/incallui/SecTabletDialpadView;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setElegantTextHeight(Z)V

    iget-object v1, p0, Lcom/android/incallui/SecTabletDialpadView;->mDialpadView:Lcom/android/phone/common/dialpad/DialpadView;

    invoke-direct {p0, v1}, Lcom/android/incallui/SecTabletDialpadView;->configureKeypadListeners(Landroid/view/View;)V

    :cond_1
    const v1, 0x7f1000d7

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletDialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/SecTabletDialpadView;->mElapsedTime:Landroid/widget/TextView;

    const v1, 0x7f10019a

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletDialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/incallui/SecTabletDialpadView;->mOnScreenMenuBtn:Landroid/widget/Button;

    const v1, 0x7f100078

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletDialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/SecTabletDialpadView;->mDialpad:Landroid/view/View;

    const v1, 0x7f10008c

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletDialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/SecTabletDialpadView;->mDeleteButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/SecTabletDialpadView;->mOnScreenMenuBtn:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/android/incallui/SecTabletDialpadView;->initVolumePanelLayout()V

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletDialpadView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f050006

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/SecTabletDialpadView;->mSlideIn:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/incallui/SecTabletDialpadView;->mSlideIn:Landroid/view/animation/Animation;

    new-instance v2, Landroid/view/animation/interpolator/QuintOut80;

    invoke-direct {v2}, Landroid/view/animation/interpolator/QuintOut80;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v1, p0, Lcom/android/incallui/SecTabletDialpadView;->mSlideIn:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/android/incallui/SecTabletDialpadView;->mSlideInListner:Lcom/android/phone/common/animation/AnimationListenerAdapter;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletDialpadView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f050009

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/SecTabletDialpadView;->mSlideOut:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/incallui/SecTabletDialpadView;->mSlideOut:Landroid/view/animation/Animation;

    new-instance v2, Landroid/view/animation/interpolator/QuintOut80;

    invoke-direct {v2}, Landroid/view/animation/interpolator/QuintOut80;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v1, p0, Lcom/android/incallui/SecTabletDialpadView;->mSlideOut:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/android/incallui/SecTabletDialpadView;->mSlideOutListener:Lcom/android/phone/common/animation/AnimationListenerAdapter;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Lcom/android/incallui/SecTabletView;->onAttachedToWindow()V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecTabletDialpadView;->setVisibility(I)V

    sget-object v0, Lcom/android/incallui/SecEventBusManager;->INSTANCE:Lcom/android/incallui/SecEventBusManager;

    invoke-virtual {v0, p0}, Lcom/android/incallui/SecEventBusManager;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public onChangeSideDialPad(I)V
    .locals 4

    const/4 v3, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChangeSideDialPad : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/incallui/SecTabletDialpadView;->mDialpadView:Lcom/android/phone/common/dialpad/DialpadView;

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletDialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0429

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    iget-object v1, p0, Lcom/android/incallui/SecTabletDialpadView;->mDialpadView:Lcom/android/phone/common/dialpad/DialpadView;

    invoke-virtual {v1, v3, v3, v0, v3}, Lcom/android/phone/common/dialpad/DialpadView;->setPadding(IIII)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletDialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a043b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    iget-object v1, p0, Lcom/android/incallui/SecTabletDialpadView;->mDialpadView:Lcom/android/phone/common/dialpad/DialpadView;

    invoke-virtual {v1, v0, v3, v3, v3}, Lcom/android/phone/common/dialpad/DialpadView;->setPadding(IIII)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/incallui/SecTabletDialpadView;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletDialpadView;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/DialpadPresenter;

    sget-object v3, Lcom/android/incallui/SecTabletDialpadView;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Character;

    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/DialpadPresenter;->processDtmf(C)V

    sget-object v2, Lcom/android/incallui/SecTabletDialpadView;->sHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/incallui/SecTabletDialpadView$3;

    invoke-direct {v3, p0}, Lcom/android/incallui/SecTabletDialpadView$3;-><init>(Lcom/android/incallui/SecTabletDialpadView;)V

    const-wide/16 v4, 0x32

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void

    :sswitch_0
    invoke-direct {p0}, Lcom/android/incallui/SecTabletDialpadView;->menuButtonClicked()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/android/incallui/SecTabletDialpadView;->showVolumeSeekBar()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f10019a -> :sswitch_0
        0x7f100328 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/SecTabletDialpadView;->mDialerKeyListener:Lcom/android/incallui/SecTabletDialpadView$DTMFKeyListener;

    sget-object v0, Lcom/android/incallui/SecEventBusManager;->INSTANCE:Lcom/android/incallui/SecEventBusManager;

    invoke-virtual {v0, p0}, Lcom/android/incallui/SecEventBusManager;->unregister(Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/android/incallui/SecTabletView;->onDetachedFromWindow()V

    return-void
.end method

.method public onDialerKeyDown(Landroid/view/KeyEvent;)Z
    .locals 1

    const-string v0, "Notifying dtmf key down."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletDialpadView;->mDialerKeyListener:Lcom/android/incallui/SecTabletDialpadView$DTMFKeyListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletDialpadView;->mDialerKeyListener:Lcom/android/incallui/SecTabletDialpadView$DTMFKeyListener;

    invoke-virtual {v0, p1}, Lcom/android/incallui/SecTabletDialpadView$DTMFKeyListener;->onKeyDown(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDialerKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const-string v0, "Notifying dtmf key up."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletDialpadView;->mDialerKeyListener:Lcom/android/incallui/SecTabletDialpadView$DTMFKeyListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletDialpadView;->mDialerKeyListener:Lcom/android/incallui/SecTabletDialpadView$DTMFKeyListener;

    invoke-virtual {v0, p2}, Lcom/android/incallui/SecTabletDialpadView$DTMFKeyListener;->onKeyUp(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    const/4 v9, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "accessibility"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    sub-int v3, v7, v8

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    sub-int v1, v7, v8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    :cond_0
    :goto_0
    return v9

    :pswitch_0
    invoke-virtual {p1, v9}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v5, v7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v6, v7

    if-le v5, v2, :cond_1

    if-ge v5, v3, :cond_1

    if-le v6, v4, :cond_1

    if-ge v6, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    :cond_1
    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKey:  keyCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", view "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x17

    if-eq p2, v1, :cond_0

    const/16 v1, 0x42

    if-ne p2, v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget-object v1, Lcom/android/incallui/SecTabletDialpadView;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1

    :pswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletDialpadView;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/DialpadPresenter;

    sget-object v2, Lcom/android/incallui/SecTabletDialpadView;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/DialpadPresenter;->processDtmf(C)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletDialpadView;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/DialpadPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/DialpadPresenter;->stopDtmf()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const-string v1, "onTouch"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget-object v1, Lcom/android/incallui/SecTabletDialpadView;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    const/4 v1, 0x0

    return v1

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletDialpadView;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/DialpadPresenter;

    sget-object v2, Lcom/android/incallui/SecTabletDialpadView;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/DialpadPresenter;->processDtmf(C)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletDialpadView;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/DialpadPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/DialpadPresenter;->stopDtmf()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setDtmfText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecTabletDialpadView;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setPrimaryCallElapsedTime(ZLjava/lang/String;)V
    .locals 2

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/android/incallui/SecTabletDialpadView;->mElapsedTime:Landroid/widget/TextView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecTabletDialpadView;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecTabletDialpadView;->mElapsedTime:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/android/phone/common/animation/AnimUtils;->fadeIn(Landroid/view/View;I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecTabletDialpadView;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecTabletDialpadView;->mElapsedTime:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/android/phone/common/animation/AnimUtils;->fadeOut(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public setPrimaryCallMenuForDialpad(Lcom/android/incallui/SecEventDialpadOptionButtons;)V
    .locals 7
    .annotation runtime Lcom/android/incallui/SecEventBus;
    .end annotation

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v3}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/incallui/SecTabletDialpadView;->mOnScreenMenuBtn:Landroid/widget/Button;

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Lcom/android/incallui/SecEventDialpadOptionButtons;->showMenu()Z

    move-result v0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/SecEventDialpadOptionButtons;->getSecTabletInCallMenuPopup()Lcom/android/incallui/SecTabletInCallMenuPopup;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/SecTabletDialpadView;->mInCallMenuPopup:Lcom/android/incallui/SecTabletInCallMenuPopup;

    iget-object v4, p0, Lcom/android/incallui/SecTabletDialpadView;->mInCallMenuPopup:Lcom/android/incallui/SecTabletInCallMenuPopup;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletDialpadView;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/incallui/SecTabletInCallMenuPopup;->setInCallMenuInstance(Lcom/android/incallui/InCallMenu;)V

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletDialpadView;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-static {v1}, Lcom/android/incallui/InCallUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletDialpadView;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallMenu;->isExistOptionsItem()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletDialpadView;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallMenu;->getUniqueMenuItem()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/incallui/SecTabletDialpadView;->mOnScreenMenuBtn:Landroid/widget/Button;

    invoke-virtual {v4, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/incallui/SecTabletDialpadView;->mOnScreenMenuBtn:Landroid/widget/Button;

    invoke-virtual {v4, v2}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/android/incallui/SecTabletDialpadView;->mOnScreenMenuBtn:Landroid/widget/Button;

    if-eqz v0, :cond_6

    :goto_2
    invoke-virtual {v4, v3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_3
    invoke-virtual {p1}, Lcom/android/incallui/SecEventDialpadOptionButtons;->showMenu()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletDialpadView;->dismissInCallMenu()V

    :cond_4
    invoke-virtual {p1}, Lcom/android/incallui/SecEventDialpadOptionButtons;->showVolumeMenu()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletDialpadView;->showVolumeButton(Z)V

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/android/incallui/SecTabletDialpadView;->mOnScreenMenuBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletDialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d019e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/incallui/SecTabletDialpadView;->mOnScreenMenuBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletDialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d019f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_6
    const/16 v3, 0x8

    goto :goto_2
.end method

.method public setPrimaryCallMenuForDialpad(Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/SecTabletDialpadView;->mOnScreenMenuBtn:Landroid/widget/Button;

    if-eqz v1, :cond_1

    move v0, p1

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/SecTabletDialpadView;->mOnScreenMenuBtn:Landroid/widget/Button;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public setVisible(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/SecTabletDialpadView;->animateShowDialpad()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/SecTabletDialpadView;->animateHideDialpad()V

    goto :goto_0
.end method

.method public setupLayout()V
    .locals 4

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v1

    iget-object v2, p0, Lcom/android/incallui/SecTabletDialpadView;->mDialpadView:Lcom/android/phone/common/dialpad/DialpadView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecTabletDialpadView;->mDialpadView:Lcom/android/phone/common/dialpad/DialpadView;

    invoke-virtual {v2}, Lcom/android/phone/common/dialpad/DialpadView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletDialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a01f5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :goto_0
    iget-object v2, p0, Lcom/android/incallui/SecTabletDialpadView;->mDialpadView:Lcom/android/phone/common/dialpad/DialpadView;

    invoke-virtual {v2, v0}, Lcom/android/phone/common/dialpad/DialpadView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/SecTabletDialpadView;->mDialpad:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/SecTabletDialpadView;->mDialpad:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletDialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0352

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :goto_1
    iget-object v2, p0, Lcom/android/incallui/SecTabletDialpadView;->mDialpad:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v3, p0, Lcom/android/incallui/SecTabletDialpadView;->mElapsedTimeContainer:Landroid/view/View;

    if-eqz v1, :cond_4

    const/16 v2, 0x8

    :goto_2
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletDialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a034f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletDialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0351

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public showElapsedTimeContainer()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecTabletDialpadView;->mElapsedTimeContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "showElapsedTimeContainer"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletDialpadView;->mElapsedTimeContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public showIndicator(Z)V
    .locals 0

    return-void
.end method

.method public showVolumeButton(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecTabletDialpadView;->mVolumeButton:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecTabletDialpadView;->mVolumeButton:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecTabletDialpadView;->mVolumeSeekBarLayout:Lcom/android/incallui/SecTabletVolumeSeekBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecTabletDialpadView;->mVolumeSeekBarLayout:Lcom/android/incallui/SecTabletVolumeSeekBar;

    invoke-virtual {v0}, Lcom/android/incallui/SecTabletVolumeSeekBar;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecTabletDialpadView;->mVolumeSeekBarLayout:Lcom/android/incallui/SecTabletVolumeSeekBar;

    invoke-virtual {v0}, Lcom/android/incallui/SecTabletVolumeSeekBar;->dismiss()V

    :cond_1
    return-void

    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method

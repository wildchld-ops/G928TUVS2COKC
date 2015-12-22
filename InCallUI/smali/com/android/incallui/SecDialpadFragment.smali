.class public Lcom/android/incallui/SecDialpadFragment;
.super Lcom/android/incallui/BaseFragment;
.source "SecDialpadFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnHoverListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/incallui/SecDialpadUi;
.implements Lcom/android/phone/common/dialpad/DialpadKeyButton$OnPressedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/SecDialpadFragment$DTMFKeyListener;,
        Lcom/android/incallui/SecDialpadFragment$HoverIgnoringLinearLayout;,
        Lcom/android/incallui/SecDialpadFragment$DialpadSlidingLinearLayout;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/BaseFragment",
        "<",
        "Lcom/android/incallui/DialpadPresenter;",
        "Lcom/android/incallui/DialpadPresenter$DialpadUi;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/view/View$OnFocusChangeListener;",
        "Landroid/view/View$OnHoverListener;",
        "Landroid/view/View$OnKeyListener;",
        "Landroid/view/View$OnTouchListener;",
        "Lcom/android/incallui/SecDialpadUi;",
        "Lcom/android/phone/common/dialpad/DialpadKeyButton$OnPressedListener;"
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
.field private isTouchButtonPressed:Z

.field private isUpdateMenuOnResume:Z

.field private mDialerKeyListener:Lcom/android/incallui/SecDialpadFragment$DTMFKeyListener;

.field private mDialpad:Landroid/view/View;

.field private mDialpadContainer:Landroid/view/View;

.field private mDialpadView:Lcom/android/incallui/SecDialpadView;

.field private mDigitContainer:Landroid/view/View;

.field private mDtmfDialerField:Landroid/widget/EditText;

.field private mElapsedTime:Landroid/widget/TextView;

.field private mElapsedTimeContainer:Landroid/view/View;

.field private mIndicatorArea:Landroid/view/ViewGroup;

.field private mIsRapidInputMode:Z

.field private mOnScreenMenuBtn:Landroid/widget/Button;

.field private mPreviouslyProcessedTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/incallui/SecDialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/incallui/SecDialpadFragment;->sHandler:Landroid/os/Handler;

    sget-object v0, Lcom/android/incallui/SecDialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f100083

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x31

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/SecDialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f100079

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x32

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/SecDialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f10007a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x33

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/SecDialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f10007b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x34

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/SecDialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f10007c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x35

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/SecDialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f10007d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x36

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/SecDialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f10007e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x37

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/SecDialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f10007f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x38

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/SecDialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f100080

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x39

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/SecDialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f100087

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x30

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/SecDialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f100085

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x23

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/SecDialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f100086

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/incallui/BaseFragment;-><init>()V

    iput-boolean v0, p0, Lcom/android/incallui/SecDialpadFragment;->isTouchButtonPressed:Z

    iput-boolean v0, p0, Lcom/android/incallui/SecDialpadFragment;->isUpdateMenuOnResume:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/incallui/SecDialpadFragment;->mPreviouslyProcessedTime:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/SecDialpadFragment;->mIsRapidInputMode:Z

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/SecDialpadFragment;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecDialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    return-object v0
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

    invoke-virtual {v1, p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setOnPressedListener(Lcom/android/phone/common/dialpad/DialpadKeyButton$OnPressedListener;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void

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

.method private getInCallMenu()Lcom/android/incallui/InCallMenu;
    .locals 2

    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/secui/SecUiAdapter;->getSecInCallActivity()Lcom/android/incallui/SecInCallActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/SecInCallActivity;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private menuButtonClicked()V
    .locals 10

    const/4 v9, 0x0

    const v8, 0x7f0d01bc

    const v7, 0x7f0d01bb

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/incallui/SecDialpadFragment;->mOnScreenMenuBtn:Landroid/widget/Button;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/incallui/SecDialpadFragment;->mOnScreenMenuBtn:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "menuButtonClicked: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecDialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d019e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/secui/SecUiAdapter;->getSecInCallActivity()Lcom/android/incallui/SecInCallActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/incallui/SecDialpadFragment;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-direct {p0}, Lcom/android/incallui/SecDialpadFragment;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallMenu;->isMenuOpen()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/secui/SecUiAdapter;->dismissInCallMenu()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/secui/SecUiAdapter;->showInCallMenu()V

    goto :goto_0

    :cond_3
    const-string v4, "activity is not SecInCallActivity"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/SecDialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0158

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-static {v4, v9, v6}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/incallui/TelecomAdapter;->holdCall(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/SecDialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0154

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-static {v4, v9, v6}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/incallui/TelecomAdapter;->unholdCall(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/SecDialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0155

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-direct {p0}, Lcom/android/incallui/SecDialpadFragment;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/SecDialpadFragment;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallMenu;->addCallClicked()V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/android/incallui/SecDialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d01ea

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-direct {p0}, Lcom/android/incallui/SecDialpadFragment;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/SecDialpadFragment;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallMenu;->callTransferClicked()V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0}, Lcom/android/incallui/SecDialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0341

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-direct {p0}, Lcom/android/incallui/SecDialpadFragment;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/SecDialpadFragment;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallMenu;->addVoiceUserClicked()V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0}, Lcom/android/incallui/SecDialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d01b4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-direct {p0}, Lcom/android/incallui/SecDialpadFragment;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/SecDialpadFragment;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallMenu;->addVoiceUserClicked()V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p0}, Lcom/android/incallui/SecDialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d018f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-direct {p0}, Lcom/android/incallui/SecDialpadFragment;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/SecDialpadFragment;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallMenu;->extraVolumeClicked()V

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p0}, Lcom/android/incallui/SecDialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    invoke-virtual {p0}, Lcom/android/incallui/SecDialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_c
    invoke-direct {p0}, Lcom/android/incallui/SecDialpadFragment;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/SecDialpadFragment;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallMenu;->recordstopClicked()V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallPresenter;->getRecorderMgr()Lcom/android/incallui/PhoneVoiceRecorderManager;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/incallui/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/android/incallui/SecDialpadFragment;->mOnScreenMenuBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/SecDialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_d
    iget-object v4, p0, Lcom/android/incallui/SecDialpadFragment;->mOnScreenMenuBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/SecDialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private showSoftInput()V
    .locals 6

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecDialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecDialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    const/16 v3, 0x2003

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v2, p0, Lcom/android/incallui/SecDialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setShowSoftInputOnFocus(Z)V

    iget-object v2, p0, Lcom/android/incallui/SecDialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    invoke-virtual {p0}, Lcom/android/incallui/SecDialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    sget-object v2, Lcom/android/incallui/SecDialpadFragment;->sHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/incallui/SecDialpadFragment$3;

    invoke-direct {v3, p0, v0}, Lcom/android/incallui/SecDialpadFragment$3;-><init>(Lcom/android/incallui/SecDialpadFragment;Landroid/view/inputmethod/InputMethodManager;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/SecDialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/incallui/SecDialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getInputType()I

    move-result v3

    const/high16 v4, 0x80000

    or-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v2, p0, Lcom/android/incallui/SecDialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setShowSoftInputOnFocus(Z)V

    goto :goto_0
.end method


# virtual methods
.method public appendDigitsToField(C)V
    .locals 6

    iget-object v2, p0, Lcom/android/incallui/SecDialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    if-eqz v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/incallui/SecDialpadFragment;->mPreviouslyProcessedTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/android/incallui/SecDialpadFragment;->mPreviouslyProcessedTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1388

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const-string v2, "Enter empty space"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/SecDialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    const/16 v3, 0x20

    invoke-interface {v2, v3}, Landroid/text/Editable;->append(C)Landroid/text/Editable;

    :cond_0
    iput-wide v0, p0, Lcom/android/incallui/SecDialpadFragment;->mPreviouslyProcessedTime:J

    iget-object v2, p0, Lcom/android/incallui/SecDialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/text/Editable;->append(C)Landroid/text/Editable;

    :cond_1
    return-void
.end method

.method public clearDigits()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecDialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecDialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

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

    invoke-virtual {p0}, Lcom/android/incallui/SecDialpadFragment;->createPresenter()Lcom/android/incallui/DialpadPresenter;

    move-result-object v0

    return-object v0
.end method

.method public getDtmfText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecDialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecDialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getUi()Lcom/android/incallui/SecDialpadUi;
    .locals 0

    return-object p0
.end method

.method bridge synthetic getUi()Lcom/android/incallui/Ui;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/SecDialpadFragment;->getUi()Lcom/android/incallui/SecDialpadUi;

    move-result-object v0

    return-object v0
.end method

.method public hideElapsedTimeContainer()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecDialpadFragment;->mElapsedTimeContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "hideElapsedTimeContainer"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecDialpadFragment;->mElapsedTimeContainer:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public hideSoftInput()V
    .locals 4

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecDialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecDialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecDialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "hideSoftInput()"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/SecDialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v2, p0, Lcom/android/incallui/SecDialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/view/inputmethod/InputMethodManager;->focusOut(Landroid/view/View;)V

    :cond_0
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

    iget-object v1, p0, Lcom/android/incallui/SecDialpadFragment;->mDialpadContainer:Landroid/view/View;

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecDialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0429

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    iget-object v1, p0, Lcom/android/incallui/SecDialpadFragment;->mDialpadContainer:Landroid/view/View;

    invoke-virtual {v1, v3, v3, v0, v3}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecDialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a043b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    iget-object v1, p0, Lcom/android/incallui/SecDialpadFragment;->mDialpadContainer:Landroid/view/View;

    invoke-virtual {v1, v0, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

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

    packed-switch v1, :pswitch_data_0

    :goto_0
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/incallui/SecDialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecDialpadFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/DialpadPresenter;

    sget-object v3, Lcom/android/incallui/SecDialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Character;

    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/DialpadPresenter;->processDtmf(C)V

    sget-object v2, Lcom/android/incallui/SecDialpadFragment;->sHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/incallui/SecDialpadFragment$1;

    invoke-direct {v3, p0}, Lcom/android/incallui/SecDialpadFragment$1;-><init>(Lcom/android/incallui/SecDialpadFragment;)V

    const-wide/16 v4, 0x32

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/incallui/SecDialpadFragment;->menuButtonClicked()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f10019a
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    const v9, 0x7f10019a

    const/4 v8, 0x3

    const/16 v7, 0x8

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isEasyModeOn()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isOneHandModeOn()Z

    move-result v4

    if-eqz v4, :cond_a

    const v4, 0x7f040090

    invoke-virtual {p1, v4, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    :goto_0
    const v4, 0x7f10017b

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/incallui/SecDialpadFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    const v4, 0x7f100088

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/SecDialpadView;

    iput-object v4, p0, Lcom/android/incallui/SecDialpadFragment;->mDialpadView:Lcom/android/incallui/SecDialpadView;

    iget-object v4, p0, Lcom/android/incallui/SecDialpadFragment;->mDialpadView:Lcom/android/incallui/SecDialpadView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/SecDialpadFragment;->mDialpadView:Lcom/android/incallui/SecDialpadView;

    invoke-virtual {v4, v6}, Lcom/android/incallui/SecDialpadView;->setCanDigitsBeEdited(Z)V

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v4

    if-eqz v4, :cond_10

    iget-object v4, p0, Lcom/android/incallui/SecDialpadFragment;->mDialpadView:Lcom/android/incallui/SecDialpadView;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/incallui/SecDialpadFragment;->mDialpadView:Lcom/android/incallui/SecDialpadView;

    const v5, 0x7f0900b9

    invoke-virtual {v4, v5}, Lcom/android/incallui/SecDialpadView;->setBackgroundResource(I)V

    :cond_1
    :goto_1
    const v4, 0x7f100089

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/SecDialpadFragment;->mDigitContainer:Landroid/view/View;

    const v4, 0x7f100198

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/SecDialpadFragment;->mElapsedTimeContainer:Landroid/view/View;

    const v4, 0x7f10008b

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/incallui/SecDialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    const-string v4, "support_dialpad_by_hardkey"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/incallui/SecDialpadFragment;->mDialpadView:Lcom/android/incallui/SecDialpadView;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/incallui/SecDialpadFragment;->mDialpadView:Lcom/android/incallui/SecDialpadView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/incallui/SecDialpadView;->setFocusable(Z)V

    :cond_2
    iget-object v4, p0, Lcom/android/incallui/SecDialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/incallui/SecDialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setFocusable(Z)V

    :cond_3
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isSupportDialpad()Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/android/incallui/SecDialpadFragment;->mDigitContainer:Landroid/view/View;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/incallui/SecDialpadFragment;->mDigitContainer:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object v4, p0, Lcom/android/incallui/SecDialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/incallui/SecDialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setVisibility(I)V

    :cond_5
    iget-object v4, p0, Lcom/android/incallui/SecDialpadFragment;->mDialpadView:Lcom/android/incallui/SecDialpadView;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/incallui/SecDialpadFragment;->mDialpadView:Lcom/android/incallui/SecDialpadView;

    invoke-virtual {v4, v7}, Lcom/android/incallui/SecDialpadView;->setVisibility(I)V

    :cond_6
    iget-object v4, p0, Lcom/android/incallui/SecDialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    if-eqz v4, :cond_7

    new-instance v4, Lcom/android/incallui/SecDialpadFragment$DTMFKeyListener;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/incallui/SecDialpadFragment$DTMFKeyListener;-><init>(Lcom/android/incallui/SecDialpadFragment;Lcom/android/incallui/SecDialpadFragment$1;)V

    iput-object v4, p0, Lcom/android/incallui/SecDialpadFragment;->mDialerKeyListener:Lcom/android/incallui/SecDialpadFragment$DTMFKeyListener;

    iget-object v4, p0, Lcom/android/incallui/SecDialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/incallui/SecDialpadFragment;->mDialerKeyListener:Lcom/android/incallui/SecDialpadFragment$DTMFKeyListener;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    iget-object v4, p0, Lcom/android/incallui/SecDialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setLongClickable(Z)V

    iget-object v4, p0, Lcom/android/incallui/SecDialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setElegantTextHeight(Z)V

    iget-object v4, p0, Lcom/android/incallui/SecDialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    const-string v5, "inputType=mobile_call_phone"

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/incallui/SecDialpadFragment;->mDialpadView:Lcom/android/incallui/SecDialpadView;

    invoke-direct {p0, v4}, Lcom/android/incallui/SecDialpadFragment;->configureKeypadListeners(Landroid/view/View;)V

    :cond_7
    const v4, 0x7f1000d7

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/incallui/SecDialpadFragment;->mElapsedTime:Landroid/widget/TextView;

    const v4, 0x7f100078

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/SecDialpadFragment;->mDialpad:Landroid/view/View;

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/incallui/SecDialpadFragment;->mOnScreenMenuBtn:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/incallui/SecDialpadFragment;->mOnScreenMenuBtn:Landroid/widget/Button;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/incallui/SecDialpadFragment;->mOnScreenMenuBtn:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    const-string v4, "support_folder_hardkey"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isEasyModeOn()Z

    move-result v4

    if-eqz v4, :cond_11

    iget-object v4, p0, Lcom/android/incallui/SecDialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/incallui/SecDialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v4, p0, Lcom/android/incallui/SecDialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    const v5, 0x7f100083

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setNextFocusDownId(I)V

    iget-object v4, p0, Lcom/android/incallui/SecDialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setFocusable(Z)V

    :cond_9
    new-array v1, v8, [I

    fill-array-data v1, :array_0

    const/4 v0, 0x0

    :goto_2
    array-length v4, v1

    if-ge v0, v4, :cond_12

    aget v4, v1, v0

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/phone/common/dialpad/DialpadKeyButton;

    aget v4, v1, v0

    invoke-virtual {v3, v4}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setNextFocusUpId(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_a
    const-string v4, "support_dialpad_by_hardkey"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    const v4, 0x7f04008a

    invoke-virtual {p1, v4, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto/16 :goto_0

    :cond_b
    const v4, 0x7f040088

    invoke-virtual {p1, v4, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto/16 :goto_0

    :cond_c
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isOneHandModeOn()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v4

    if-eqz v4, :cond_d

    const v4, 0x7f04012a

    invoke-virtual {p1, v4, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto/16 :goto_0

    :cond_d
    const v4, 0x7f0400c2

    invoke-virtual {p1, v4, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto/16 :goto_0

    :cond_e
    const-string v4, "support_dialpad_by_hardkey"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    const v4, 0x7f0400a2

    invoke-virtual {p1, v4, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto/16 :goto_0

    :cond_f
    const v4, 0x7f040082

    invoke-virtual {p1, v4, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto/16 :goto_0

    :cond_10
    iget-object v4, p0, Lcom/android/incallui/SecDialpadFragment;->mDialpadView:Lcom/android/incallui/SecDialpadView;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/incallui/SecDialpadFragment;->mDialpadView:Lcom/android/incallui/SecDialpadView;

    const v5, 0x7f0900b8

    invoke-virtual {v4, v5}, Lcom/android/incallui/SecDialpadView;->setBackgroundResource(I)V

    goto/16 :goto_1

    :cond_11
    iget-object v4, p0, Lcom/android/incallui/SecDialpadFragment;->mOnScreenMenuBtn:Landroid/widget/Button;

    const v5, 0x7f100079

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setNextFocusDownId(I)V

    new-array v1, v8, [I

    fill-array-data v1, :array_1

    const/4 v0, 0x0

    :goto_3
    array-length v4, v1

    if-ge v0, v4, :cond_12

    aget v4, v1, v0

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/phone/common/dialpad/DialpadKeyButton;

    invoke-virtual {v3, v9}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setNextFocusUpId(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_12
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isOneHandModeOn()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/InCallUtils;->getOneHandDirection(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/incallui/SecDialpadFragment;->onChangeSideDialPad(I)V

    const v4, 0x7f10019f

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/SecDialpadFragment;->mDialpadContainer:Landroid/view/View;

    :cond_13
    return-object v2

    nop

    :array_0
    .array-data 4
        0x7f100083
        0x7f100079
        0x7f10007a
    .end array-data

    :array_1
    .array-data 4
        0x7f100083
        0x7f100079
        0x7f10007a
    .end array-data
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/SecDialpadFragment;->mDialerKeyListener:Lcom/android/incallui/SecDialpadFragment$DTMFKeyListener;

    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onDestroyView()V

    return-void
.end method

.method public onDialerKeyDown(Landroid/view/KeyEvent;)Z
    .locals 1

    const-string v0, "Notifying dtmf key down."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecDialpadFragment;->mDialerKeyListener:Lcom/android/incallui/SecDialpadFragment$DTMFKeyListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecDialpadFragment;->mDialerKeyListener:Lcom/android/incallui/SecDialpadFragment$DTMFKeyListener;

    invoke-virtual {v0, p1}, Lcom/android/incallui/SecDialpadFragment$DTMFKeyListener;->onKeyDown(Landroid/view/KeyEvent;)Z

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

    iget-object v0, p0, Lcom/android/incallui/SecDialpadFragment;->mDialerKeyListener:Lcom/android/incallui/SecDialpadFragment$DTMFKeyListener;

    if-eqz v0, :cond_2

    const-string v0, "support_dialpad_by_hardkey"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sparse-switch p1, :sswitch_data_0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecDialpadFragment;->mDialerKeyListener:Lcom/android/incallui/SecDialpadFragment$DTMFKeyListener;

    invoke-virtual {v0, p2}, Lcom/android/incallui/SecDialpadFragment$DTMFKeyListener;->onKeyUp(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    iget-object v0, p0, Lcom/android/incallui/SecDialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "GOLD !v.isPressed() && mDisplayMap.containsKey(id) "

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecDialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0x8 -> :sswitch_0
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xb -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0xe -> :sswitch_0
        0xf -> :sswitch_0
        0x10 -> :sswitch_0
        0x11 -> :sswitch_0
        0x12 -> :sswitch_0
        0x43 -> :sswitch_0
    .end sparse-switch
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    if-eqz p2, :cond_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f10019a
        :pswitch_0
    .end packed-switch
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

    iget-boolean v7, p0, Lcom/android/incallui/SecDialpadFragment;->mIsRapidInputMode:Z

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

    sget-object v1, Lcom/android/incallui/SecDialpadFragment;->mDisplayMap:Ljava/util/HashMap;

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

    invoke-virtual {p0}, Lcom/android/incallui/SecDialpadFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/DialpadPresenter;

    sget-object v2, Lcom/android/incallui/SecDialpadFragment;->mDisplayMap:Ljava/util/HashMap;

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
    invoke-virtual {p0}, Lcom/android/incallui/SecDialpadFragment;->getPresenter()Lcom/android/incallui/Presenter;

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

.method public onPressed(Landroid/view/View;Z)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    iget-boolean v2, p0, Lcom/android/incallui/SecDialpadFragment;->isTouchButtonPressed:Z

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/InCallUtils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/incallui/SecDialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecDialpadFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/DialpadPresenter;

    sget-object v3, Lcom/android/incallui/SecDialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Character;

    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/DialpadPresenter;->processDtmf(C)V

    sget-object v2, Lcom/android/incallui/SecDialpadFragment;->sHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/incallui/SecDialpadFragment$2;

    invoke-direct {v3, p0}, Lcom/android/incallui/SecDialpadFragment$2;-><init>(Lcom/android/incallui/SecDialpadFragment;)V

    const-wide/16 v4, 0x32

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onResume()V

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isOneHandModeOn()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/InCallUtils;->getOneHandDirection(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecDialpadFragment;->onChangeSideDialPad(I)V

    :cond_0
    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/secui/SecUiAdapter;->getSecInCallActivity()Lcom/android/incallui/SecInCallActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/SecInCallActivity;->isDialpadVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/incallui/SecDialpadFragment;->showSoftInput()V

    invoke-virtual {p0}, Lcom/android/incallui/SecDialpadFragment;->showElapsedTimeContainer()V

    iget-boolean v1, p0, Lcom/android/incallui/SecDialpadFragment;->isUpdateMenuOnResume:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecDialpadFragment;->setPrimaryCallMenuForDialpad(Z)V

    :cond_1
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/incallui/SecDialpadFragment;->isUpdateMenuOnResume:Z

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/SecDialpadFragment;->hideSoftInput()V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x0

    const-string v1, "onTouch"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget-object v1, Lcom/android/incallui/SecDialpadFragment;->mDisplayMap:Ljava/util/HashMap;

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
    return v4

    :pswitch_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/incallui/SecDialpadFragment;->isTouchButtonPressed:Z

    invoke-virtual {p0}, Lcom/android/incallui/SecDialpadFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/DialpadPresenter;

    sget-object v2, Lcom/android/incallui/SecDialpadFragment;->mDisplayMap:Ljava/util/HashMap;

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
    iput-boolean v4, p0, Lcom/android/incallui/SecDialpadFragment;->isTouchButtonPressed:Z

    invoke-virtual {p0}, Lcom/android/incallui/SecDialpadFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/DialpadPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/DialpadPresenter;->stopDtmf()V

    goto :goto_0

    nop

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

    iget-object v0, p0, Lcom/android/incallui/SecDialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecDialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setPrimaryCallElapsedTime(ZLjava/lang/String;)V
    .locals 3

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/android/incallui/SecDialpadFragment;->mElapsedTime:Landroid/widget/TextView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecDialpadFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecDialpadFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/android/phone/common/animation/AnimUtils;->fadeIn(Landroid/view/View;I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecDialpadFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecDialpadFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/DialpadPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/DialpadPresenter;->getCallTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/incallui/SecDialpadFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/incallui/SecDialpadFragment;->setTTS(JLandroid/widget/TextView;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecDialpadFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/android/phone/common/animation/AnimUtils;->fadeOut(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public setPrimaryCallMenuForDialpad(Z)V
    .locals 7

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v3}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/incallui/SecDialpadFragment;->mOnScreenMenuBtn:Landroid/widget/Button;

    if-eqz v4, :cond_0

    move v0, p1

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/incallui/SecDialpadFragment;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-static {v1}, Lcom/android/incallui/InCallUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-direct {p0}, Lcom/android/incallui/SecDialpadFragment;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallMenu;->isExistOptionsItem()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/incallui/SecDialpadFragment;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallMenu;->getUniqueMenuItem()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/incallui/SecDialpadFragment;->mOnScreenMenuBtn:Landroid/widget/Button;

    invoke-virtual {v4, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/incallui/SecDialpadFragment;->mOnScreenMenuBtn:Landroid/widget/Button;

    invoke-virtual {v4, v2}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v4, p0, Lcom/android/incallui/SecDialpadFragment;->mOnScreenMenuBtn:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setHoverPopupType(I)V

    :cond_2
    iget-object v4, p0, Lcom/android/incallui/SecDialpadFragment;->mOnScreenMenuBtn:Landroid/widget/Button;

    if-eqz v0, :cond_4

    :goto_2
    invoke-virtual {v4, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/incallui/SecDialpadFragment;->mOnScreenMenuBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/SecDialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d019e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/incallui/SecDialpadFragment;->mOnScreenMenuBtn:Landroid/widget/Button;

    const v5, 0x7f0d019f

    invoke-virtual {p0, v5}, Lcom/android/incallui/SecDialpadFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    const/16 v3, 0x8

    goto :goto_2
.end method

.method public setTTS(JLandroid/widget/TextView;)V
    .locals 19

    const-wide/16 v14, 0x0

    cmp-long v14, p1, v14

    if-gtz v14, :cond_0

    :goto_0
    return-void

    :cond_0
    const-wide/32 v14, 0x36ee80

    div-long v14, p1, v14

    long-to-int v6, v14

    const-wide/32 v14, 0x36ee80

    rem-long v14, p1, v14

    const-wide/32 v16, 0xea60

    div-long v14, v14, v16

    long-to-int v7, v14

    const-wide/32 v14, 0xea60

    rem-long v14, p1, v14

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    long-to-int v9, v14

    if-eqz v6, :cond_2

    const/4 v13, 0x1

    :goto_1
    const/4 v14, 0x1

    new-array v2, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "%d"

    aput-object v15, v2, v14

    const/4 v14, 0x1

    new-array v11, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v11, v14

    const v14, 0x7f0d01c6

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/incallui/SecDialpadFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-static {v14, v2, v11}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v14, 0x1

    new-array v12, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v12, v14

    const v14, 0x7f0d01c7

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/incallui/SecDialpadFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-static {v14, v2, v12}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz v13, :cond_1

    const/4 v14, 0x1

    new-array v10, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v10, v14

    const v14, 0x7f0d01c5

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/incallui/SecDialpadFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-static {v14, v2, v10}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    :cond_1
    const-string v14, " "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    const-string v14, " "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_2
    const/4 v13, 0x0

    goto :goto_1
.end method

.method public setUpdateCallMenuOnResume(Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/SecDialpadFragment;->isUpdateMenuOnResume:Z

    return-void
.end method

.method public setupLayout()V
    .locals 8

    const/16 v6, 0x8

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v4

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isRapidInputMode()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/incallui/SecDialpadFragment;->mIsRapidInputMode:Z

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isSupportDialpad()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/incallui/SecDialpadFragment;->mDialpadView:Lcom/android/incallui/SecDialpadView;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/incallui/SecDialpadFragment;->mDialpadView:Lcom/android/incallui/SecDialpadView;

    invoke-virtual {v5}, Lcom/android/incallui/SecDialpadView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const-string v5, "support_dialpad_by_hardkey"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/SecDialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0a037e

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :cond_2
    iget-object v5, p0, Lcom/android/incallui/SecDialpadFragment;->mDialpadView:Lcom/android/incallui/SecDialpadView;

    invoke-virtual {v5, v1}, Lcom/android/incallui/SecDialpadView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    iget-object v5, p0, Lcom/android/incallui/SecDialpadFragment;->mDialpadView:Lcom/android/incallui/SecDialpadView;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/incallui/SecDialpadFragment;->mDialpadView:Lcom/android/incallui/SecDialpadView;

    invoke-virtual {v5}, Lcom/android/incallui/SecDialpadView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_d

    const-string v5, "support_dialpad_by_hardkey"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {p0}, Lcom/android/incallui/SecDialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0a037d

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :goto_1
    iget-object v5, p0, Lcom/android/incallui/SecDialpadFragment;->mDialpadView:Lcom/android/incallui/SecDialpadView;

    invoke-virtual {v5, v0}, Lcom/android/incallui/SecDialpadView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    iget-object v5, p0, Lcom/android/incallui/SecDialpadFragment;->mDigitContainer:Landroid/view/View;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/incallui/SecDialpadFragment;->mDigitContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    const-string v5, "support_dialpad_by_hardkey"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    :goto_2
    iget-object v5, p0, Lcom/android/incallui/SecDialpadFragment;->mDigitContainer:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    iget-object v5, p0, Lcom/android/incallui/SecDialpadFragment;->mElapsedTimeContainer:Landroid/view/View;

    if-eqz v5, :cond_6

    iget-object v7, p0, Lcom/android/incallui/SecDialpadFragment;->mElapsedTimeContainer:Landroid/view/View;

    if-eqz v4, :cond_16

    move v5, v6

    :goto_3
    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iget-object v5, p0, Lcom/android/incallui/SecDialpadFragment;->mDialpad:Landroid/view/View;

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setupLayout() isMobileKeyboard : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/incallui/SecDialpadFragment;->mDialpad:Landroid/view/View;

    if-eqz v3, :cond_17

    :goto_4
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/incallui/SecDialpadFragment;->showSoftInput()V

    goto/16 :goto_0

    :cond_7
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {p0}, Lcom/android/incallui/SecDialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0a02f0

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_1

    :cond_8
    const-string v5, "concept_usa_vzw"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {p0}, Lcom/android/incallui/SecDialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0a028e

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_1

    :cond_9
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isOneHandModeOn()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {p0}, Lcom/android/incallui/SecDialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0a0239

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto/16 :goto_1

    :cond_a
    const-string v5, "concept_usa_att"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "concept_usa_tmo"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "ui_for_mpcs"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "concept_canada_common"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    :cond_b
    invoke-virtual {p0}, Lcom/android/incallui/SecDialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0a01f6

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto/16 :goto_1

    :cond_c
    invoke-virtual {p0}, Lcom/android/incallui/SecDialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0a01f5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto/16 :goto_1

    :cond_d
    invoke-virtual {p0}, Lcom/android/incallui/SecDialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0a034f

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto/16 :goto_1

    :cond_e
    if-eqz v4, :cond_11

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-virtual {p0}, Lcom/android/incallui/SecDialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0a02f1

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto/16 :goto_2

    :cond_f
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isOneHandModeOn()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-virtual {p0}, Lcom/android/incallui/SecDialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0a0238

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto/16 :goto_2

    :cond_10
    invoke-virtual {p0}, Lcom/android/incallui/SecDialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0a01f7

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto/16 :goto_2

    :cond_11
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isEasyModeOn()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isOneHandModeOn()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-virtual {p0}, Lcom/android/incallui/SecDialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0a0466

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto/16 :goto_2

    :cond_12
    invoke-virtual {p0}, Lcom/android/incallui/SecDialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0a0366

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto/16 :goto_2

    :cond_13
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isOneHandModeOn()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-virtual {p0}, Lcom/android/incallui/SecDialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0a0433

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto/16 :goto_2

    :cond_14
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-virtual {p0}, Lcom/android/incallui/SecDialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0a0193

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto/16 :goto_2

    :cond_15
    invoke-virtual {p0}, Lcom/android/incallui/SecDialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0a0350

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto/16 :goto_2

    :cond_16
    const/4 v5, 0x4

    goto/16 :goto_3

    :cond_17
    const/4 v6, 0x0

    goto/16 :goto_4
.end method

.method public showElapsedTimeContainer()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecDialpadFragment;->mElapsedTimeContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "showElapsedTimeContainer"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecDialpadFragment;->mElapsedTimeContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public showIndicator(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecDialpadFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecDialpadFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

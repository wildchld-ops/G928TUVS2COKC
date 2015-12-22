.class public Lcom/android/incallui/DialpadFragment;
.super Lcom/android/incallui/BaseFragment;
.source "DialpadFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnHoverListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/incallui/DialpadPresenter$DialpadUi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/DialpadFragment$DTMFKeyListener;,
        Lcom/android/incallui/DialpadFragment$HoverIgnoringLinearLayout;,
        Lcom/android/incallui/DialpadFragment$DialpadSlidingLinearLayout;
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
        "Landroid/view/View$OnHoverListener;",
        "Landroid/view/View$OnKeyListener;",
        "Landroid/view/View$OnTouchListener;",
        "Lcom/android/incallui/DialpadPresenter$DialpadUi;"
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
.field private final mButtonIds:[I

.field private mCurrentTextColor:I

.field private mDialerKeyListener:Lcom/android/incallui/DialpadFragment$DTMFKeyListener;

.field private mDialpadView:Lcom/android/phone/common/dialpad/DialpadView;

.field private mDtmfDialerField:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/incallui/DialpadFragment;->sHandler:Landroid/os/Handler;

    sget-object v0, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f100083

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x31

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f100079

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x32

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f10007a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x33

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f10007b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x34

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f10007c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x35

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f10007d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x36

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f10007e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x37

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f10007f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x38

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f100080

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x39

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f100087

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x30

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f100085

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x23

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

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
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/BaseFragment;-><init>()V

    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/incallui/DialpadFragment;->mButtonIds:[I

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

.method private configureKeypadListeners()V
    .locals 4

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/incallui/DialpadFragment;->mButtonIds:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/DialpadFragment;->mDialpadView:Lcom/android/phone/common/dialpad/DialpadView;

    iget-object v3, p0, Lcom/android/incallui/DialpadFragment;->mButtonIds:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Lcom/android/phone/common/dialpad/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/common/dialpad/DialpadKeyButton;

    invoke-virtual {v0, p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v0, p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-virtual {v0, p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    invoke-virtual {v0, p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public animateShowDialpad()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/incallui/DialpadFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f100088

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/common/dialpad/DialpadView;

    invoke-virtual {v0}, Lcom/android/phone/common/dialpad/DialpadView;->animateShow()V

    return-void
.end method

.method public appendDigitsToField(C)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/text/Editable;->append(C)Landroid/text/Editable;

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

    invoke-virtual {p0}, Lcom/android/incallui/DialpadFragment;->createPresenter()Lcom/android/incallui/DialpadPresenter;

    move-result-object v0

    return-object v0
.end method

.method public getDtmfText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getUi()Lcom/android/incallui/DialpadPresenter$DialpadUi;
    .locals 0

    return-object p0
.end method

.method bridge synthetic getUi()Lcom/android/incallui/Ui;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/DialpadFragment;->getUi()Lcom/android/incallui/DialpadPresenter$DialpadUi;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/DialpadFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/DialpadPresenter;

    sget-object v3, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Character;

    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/DialpadPresenter;->processDtmf(C)V

    sget-object v2, Lcom/android/incallui/DialpadFragment;->sHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/incallui/DialpadFragment$1;

    invoke-direct {v3, p0}, Lcom/android/incallui/DialpadFragment$1;-><init>(Lcom/android/incallui/DialpadFragment;)V

    const-wide/16 v4, 0x32

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const/4 v3, 0x0

    const v1, 0x7f040027

    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100088

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/phone/common/dialpad/DialpadView;

    iput-object v1, p0, Lcom/android/incallui/DialpadFragment;->mDialpadView:Lcom/android/phone/common/dialpad/DialpadView;

    iget-object v1, p0, Lcom/android/incallui/DialpadFragment;->mDialpadView:Lcom/android/phone/common/dialpad/DialpadView;

    invoke-virtual {v1, v3}, Lcom/android/phone/common/dialpad/DialpadView;->setCanDigitsBeEdited(Z)V

    iget-object v1, p0, Lcom/android/incallui/DialpadFragment;->mDialpadView:Lcom/android/phone/common/dialpad/DialpadView;

    const v2, 0x7f090048

    invoke-virtual {v1, v2}, Lcom/android/phone/common/dialpad/DialpadView;->setBackgroundResource(I)V

    const v1, 0x7f10008b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/incallui/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/incallui/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/incallui/DialpadFragment$DTMFKeyListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/incallui/DialpadFragment$DTMFKeyListener;-><init>(Lcom/android/incallui/DialpadFragment;Lcom/android/incallui/DialpadFragment$1;)V

    iput-object v1, p0, Lcom/android/incallui/DialpadFragment;->mDialerKeyListener:Lcom/android/incallui/DialpadFragment$DTMFKeyListener;

    iget-object v1, p0, Lcom/android/incallui/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/incallui/DialpadFragment;->mDialerKeyListener:Lcom/android/incallui/DialpadFragment$DTMFKeyListener;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    iget-object v1, p0, Lcom/android/incallui/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setLongClickable(Z)V

    iget-object v1, p0, Lcom/android/incallui/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setElegantTextHeight(Z)V

    invoke-direct {p0}, Lcom/android/incallui/DialpadFragment;->configureKeypadListeners()V

    :cond_0
    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/DialpadFragment;->mDialerKeyListener:Lcom/android/incallui/DialpadFragment$DTMFKeyListener;

    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onDestroyView()V

    return-void
.end method

.method onDialerKeyDown(Landroid/view/KeyEvent;)Z
    .locals 1

    const-string v0, "Notifying dtmf key down."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/DialpadFragment;->mDialerKeyListener:Lcom/android/incallui/DialpadFragment$DTMFKeyListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/DialpadFragment;->mDialerKeyListener:Lcom/android/incallui/DialpadFragment$DTMFKeyListener;

    invoke-virtual {v0, p1}, Lcom/android/incallui/DialpadFragment$DTMFKeyListener;->onKeyDown(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDialerKeyUp(Landroid/view/KeyEvent;)Z
    .locals 1

    const-string v0, "Notifying dtmf key up."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/DialpadFragment;->mDialerKeyListener:Lcom/android/incallui/DialpadFragment$DTMFKeyListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/DialpadFragment;->mDialerKeyListener:Lcom/android/incallui/DialpadFragment$DTMFKeyListener;

    invoke-virtual {v0, p1}, Lcom/android/incallui/DialpadFragment$DTMFKeyListener;->onKeyUp(Landroid/view/KeyEvent;)Z

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

    if-ne p2, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget-object v1, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    :pswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/DialpadFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/DialpadPresenter;

    sget-object v2, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

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
    invoke-virtual {p0}, Lcom/android/incallui/DialpadFragment;->getPresenter()Lcom/android/incallui/Presenter;

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

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/incallui/DialpadFragment;->updateColors()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const-string v1, "onTouch"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget-object v1, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

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
    invoke-virtual {p0}, Lcom/android/incallui/DialpadFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/DialpadPresenter;

    sget-object v2, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

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
    invoke-virtual {p0}, Lcom/android/incallui/DialpadFragment;->getPresenter()Lcom/android/incallui/Presenter;

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
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->ttsSpanAsPhoneNumber(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateColors()V
    .locals 5

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getThemeColors()Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    move-result-object v3

    iget v2, v3, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;->mPrimaryColor:I

    iget v3, p0, Lcom/android/incallui/DialpadFragment;->mCurrentTextColor:I

    if-ne v3, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/incallui/DialpadFragment;->mButtonIds:[I

    array-length v3, v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/android/incallui/DialpadFragment;->mDialpadView:Lcom/android/phone/common/dialpad/DialpadView;

    iget-object v4, p0, Lcom/android/incallui/DialpadFragment;->mButtonIds:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Lcom/android/phone/common/dialpad/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/common/dialpad/DialpadKeyButton;

    const v3, 0x7f100081

    invoke-virtual {v0, v3}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iput v2, p0, Lcom/android/incallui/DialpadFragment;->mCurrentTextColor:I

    goto :goto_0
.end method

.class public Lcom/sec/android/app/launcher/views/EditTextView;
.super Landroid/widget/EditText;
.source "EditTextView.java"

# interfaces
.implements Lcom/sec/android/app/launcher/utils/DelayedKeyboardManager$DelayedKeyboardManagerProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/launcher/views/EditTextView$14;,
        Lcom/sec/android/app/launcher/views/EditTextView$MaxTextLengthWatcher;,
        Lcom/sec/android/app/launcher/views/EditTextView$Mode;,
        Lcom/sec/android/app/launcher/views/EditTextView$EditTextViewListener;
    }
.end annotation


# static fields
.field public static DEFAULT_MAX_LENGTH:I = 0x0

.field private static final LAUNCHER_EDIT_TEXT_TAG:Ljava/lang/String; = "LAUNCHER_EDIT_TEXT"

.field private static MAX_REFRESH:I


# instance fields
.field private mAndroidEditLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mAndroidEditTextActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private mAndroidFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mAndroidHandleClickListener:Landroid/view/View$OnClickListener;

.field private mAndroidHandleTextWatcher:Landroid/text/TextWatcher;

.field private mAndroidTextLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mBorderVisible:Z

.field private mContext:Landroid/content/Context;

.field private mDaliTextOnClickListener:Lcom/sec/daliviews/views/NativeViewBase$OnClickListener;

.field private mDaliTextOnTouchListener:Lcom/sec/daliviews/views/NativeViewBase$OnTouchListener;

.field private mDaliTextView:Lcom/sec/daliviews/views/TextView;

.field private mDaliTextVisibilityChangedListener:Lcom/sec/daliviews/views/NativeViewBase$VisibilityChangeListener;

.field private mDelayedKeyboardManager:Lcom/sec/android/app/launcher/utils/DelayedKeyboardManager;

.field private mEditTextFocused:Z

.field private mHandler:Landroid/os/Handler;

.field private mLastMotionEvent:Landroid/view/MotionEvent;

.field private mListener:Lcom/sec/android/app/launcher/views/EditTextView$EditTextViewListener;

.field private mMaxLengthWatcher:Lcom/sec/android/app/launcher/views/EditTextView$MaxTextLengthWatcher;

.field private mMiddleHandle:Landroid/widget/ImageView;

.field private mMode:Lcom/sec/android/app/launcher/views/EditTextView$Mode;

.field private mRefreshCount:I

.field private mRoot:Landroid/view/ViewGroup;

.field private mShowEditTextRunnable:Ljava/lang/Runnable;

.field private maxlen_toast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/launcher/views/EditTextView;->DEFAULT_MAX_LENGTH:I

    const/4 v0, 0x5

    sput v0, Lcom/sec/android/app/launcher/views/EditTextView;->MAX_REFRESH:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mEditTextFocused:Z

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mBorderVisible:Z

    iput-object v1, p0, Lcom/sec/android/app/launcher/views/EditTextView;->maxlen_toast:Landroid/widget/Toast;

    iput v0, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mRefreshCount:I

    new-instance v0, Lcom/sec/android/app/launcher/views/EditTextView$MaxTextLengthWatcher;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/launcher/views/EditTextView$MaxTextLengthWatcher;-><init>(Lcom/sec/android/app/launcher/views/EditTextView;Lcom/sec/android/app/launcher/views/EditTextView$1;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mMaxLengthWatcher:Lcom/sec/android/app/launcher/views/EditTextView$MaxTextLengthWatcher;

    new-instance v0, Lcom/sec/android/app/launcher/views/EditTextView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/launcher/views/EditTextView$1;-><init>(Lcom/sec/android/app/launcher/views/EditTextView;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mAndroidFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    new-instance v0, Lcom/sec/android/app/launcher/views/EditTextView$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/launcher/views/EditTextView$2;-><init>(Lcom/sec/android/app/launcher/views/EditTextView;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mAndroidTextLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    new-instance v0, Lcom/sec/android/app/launcher/views/EditTextView$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/launcher/views/EditTextView$3;-><init>(Lcom/sec/android/app/launcher/views/EditTextView;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mAndroidEditLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    new-instance v0, Lcom/sec/android/app/launcher/views/EditTextView$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/launcher/views/EditTextView$4;-><init>(Lcom/sec/android/app/launcher/views/EditTextView;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mAndroidEditTextActionListener:Landroid/widget/TextView$OnEditorActionListener;

    new-instance v0, Lcom/sec/android/app/launcher/views/EditTextView$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/launcher/views/EditTextView$5;-><init>(Lcom/sec/android/app/launcher/views/EditTextView;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mDaliTextOnTouchListener:Lcom/sec/daliviews/views/NativeViewBase$OnTouchListener;

    new-instance v0, Lcom/sec/android/app/launcher/views/EditTextView$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/launcher/views/EditTextView$6;-><init>(Lcom/sec/android/app/launcher/views/EditTextView;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mDaliTextOnClickListener:Lcom/sec/daliviews/views/NativeViewBase$OnClickListener;

    new-instance v0, Lcom/sec/android/app/launcher/views/EditTextView$7;

    invoke-direct {v0, p0}, Lcom/sec/android/app/launcher/views/EditTextView$7;-><init>(Lcom/sec/android/app/launcher/views/EditTextView;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mDaliTextVisibilityChangedListener:Lcom/sec/daliviews/views/NativeViewBase$VisibilityChangeListener;

    new-instance v0, Lcom/sec/android/app/launcher/views/EditTextView$8;

    invoke-direct {v0, p0}, Lcom/sec/android/app/launcher/views/EditTextView$8;-><init>(Lcom/sec/android/app/launcher/views/EditTextView;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mShowEditTextRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/sec/android/app/launcher/views/EditTextView$11;

    invoke-direct {v0, p0}, Lcom/sec/android/app/launcher/views/EditTextView$11;-><init>(Lcom/sec/android/app/launcher/views/EditTextView;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mAndroidHandleTextWatcher:Landroid/text/TextWatcher;

    new-instance v0, Lcom/sec/android/app/launcher/views/EditTextView$12;

    invoke-direct {v0, p0}, Lcom/sec/android/app/launcher/views/EditTextView$12;-><init>(Lcom/sec/android/app/launcher/views/EditTextView;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mAndroidHandleClickListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/launcher/views/EditTextView;->DEFAULT_MAX_LENGTH:I

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/launcher/views/EditTextView;)Lcom/sec/android/app/launcher/utils/DelayedKeyboardManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mDelayedKeyboardManager:Lcom/sec/android/app/launcher/utils/DelayedKeyboardManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/launcher/views/EditTextView;)Lcom/sec/android/app/launcher/views/EditTextView$MaxTextLengthWatcher;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mMaxLengthWatcher:Lcom/sec/android/app/launcher/views/EditTextView$MaxTextLengthWatcher;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/launcher/views/EditTextView;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/EditTextView;->setText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/launcher/views/EditTextView;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mAndroidTextLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/launcher/views/EditTextView;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mAndroidEditLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/launcher/views/EditTextView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/launcher/views/EditTextView;)Lcom/sec/android/app/launcher/views/EditTextView$Mode;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mMode:Lcom/sec/android/app/launcher/views/EditTextView$Mode;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/launcher/views/EditTextView;)Landroid/widget/Toast;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/EditTextView;->maxlen_toast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/sec/android/app/launcher/views/EditTextView;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/views/EditTextView;->maxlen_toast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/sec/android/app/launcher/views/EditTextView;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mRoot:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sec/android/app/launcher/views/EditTextView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/EditTextView;->removeHandle()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/launcher/views/EditTextView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/launcher/views/EditTextView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mEditTextFocused:Z

    return p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/launcher/views/EditTextView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/views/EditTextView;->setTextBorderVisible(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/launcher/views/EditTextView;)Lcom/sec/android/app/launcher/views/EditTextView$EditTextViewListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mListener:Lcom/sec/android/app/launcher/views/EditTextView$EditTextViewListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/launcher/views/EditTextView;)Lcom/sec/daliviews/views/NativeViewBase$OnTouchListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mDaliTextOnTouchListener:Lcom/sec/daliviews/views/NativeViewBase$OnTouchListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/launcher/views/EditTextView;)Lcom/sec/daliviews/views/TextView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mDaliTextView:Lcom/sec/daliviews/views/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/launcher/views/EditTextView;)Lcom/sec/daliviews/views/NativeViewBase$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mDaliTextOnClickListener:Lcom/sec/daliviews/views/NativeViewBase$OnClickListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/launcher/views/EditTextView;)Landroid/view/MotionEvent;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mLastMotionEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method static synthetic access$902(Lcom/sec/android/app/launcher/views/EditTextView;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mLastMotionEvent:Landroid/view/MotionEvent;

    return-object p1
.end method

.method private addHandle(I)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, -0x2

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/EditTextView;->getHandle()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-nez v3, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int v2, p1, v4

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    add-int/lit8 v4, v2, -0x64

    const/16 v5, 0x15e

    invoke-virtual {v1, v4, v5, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v4, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mAndroidHandleClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v4}, Lcom/sec/android/app/launcher/views/EditTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mAndroidHandleTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p0, v4}, Lcom/sec/android/app/launcher/views/EditTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private getHandle()Landroid/widget/ImageView;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mMiddleHandle:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mMiddleHandle:Landroid/widget/ImageView;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mMiddleHandle:Landroid/widget/ImageView;

    return-object v0
.end method

.method private removeHandle()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/EditTextView;->getHandle()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private setText()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/EditTextView;->getTextChange()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mDaliTextView:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v1, v0}, Lcom/sec/daliviews/views/TextView;->setText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mDaliTextView:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v1}, Lcom/sec/daliviews/views/TextView;->invalidate()V

    :cond_0
    return-object v0
.end method

.method private setTextBorderVisible(Z)V
    .locals 5

    iget-boolean v4, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mBorderVisible:Z

    if-ne v4, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mBorderVisible:Z

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/EditTextView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/EditTextView;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/EditTextView;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/EditTextView;->getPaddingBottom()I

    move-result v0

    invoke-virtual {p0, v1, v3, v2, v0}, Lcom/sec/android/app/launcher/views/EditTextView;->setPadding(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public cancelEditMode()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mShowEditTextRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public deactivate()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mDelayedKeyboardManager:Lcom/sec/android/app/launcher/utils/DelayedKeyboardManager;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/launcher/utils/DelayedKeyboardManager;->forceKeyboardOff(Landroid/widget/EditText;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/launcher/views/EditTextView$10;

    invoke-direct {v1, p0}, Lcom/sec/android/app/launcher/views/EditTextView$10;-><init>(Lcom/sec/android/app/launcher/views/EditTextView;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public getEditTextMaxLengthFilter(Landroid/content/Context;I)[Landroid/text/InputFilter;
    .locals 3

    const/4 v1, 0x1

    new-array v0, v1, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Lcom/sec/android/app/launcher/views/EditTextView$13;

    invoke-direct {v2, p0, p2, p1}, Lcom/sec/android/app/launcher/views/EditTextView$13;-><init>(Lcom/sec/android/app/launcher/views/EditTextView;ILandroid/content/Context;)V

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getEditTextView()Landroid/widget/EditText;
    .locals 0

    return-object p0
.end method

.method public getFocus()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mEditTextFocused:Z

    return v0
.end method

.method public getMaxLength()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mMaxLengthWatcher:Lcom/sec/android/app/launcher/views/EditTextView$MaxTextLengthWatcher;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/EditTextView$MaxTextLengthWatcher;->getMaxLength()I

    move-result v0

    return v0
.end method

.method public getMode()Lcom/sec/android/app/launcher/views/EditTextView$Mode;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mMode:Lcom/sec/android/app/launcher/views/EditTextView$Mode;

    return-object v0
.end method

.method public getText(Lcom/sec/android/app/launcher/views/EditTextView$Mode;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/sec/android/app/launcher/views/EditTextView$14;->$SwitchMap$com$sec$android$app$launcher$views$EditTextView$Mode:[I

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/views/EditTextView$Mode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-object v0

    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mDaliTextView:Lcom/sec/daliviews/views/TextView;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mDaliTextView:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/TextView;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/EditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getTextChange()Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mDaliTextView:Lcom/sec/daliviews/views/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mDaliTextView:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v2}, Lcom/sec/daliviews/views/TextView;->getText()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/EditTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/android/app/launcher/utils/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method public initialise(Lcom/sec/daliviews/views/TextView;Landroid/view/ViewGroup;Lcom/sec/android/app/launcher/views/EditTextView$EditTextViewListener;)V
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/views/EditTextView$Mode;->TEXT:Lcom/sec/android/app/launcher/views/EditTextView$Mode;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sec/android/app/launcher/views/EditTextView;->initialise(Lcom/sec/daliviews/views/TextView;Landroid/view/ViewGroup;Lcom/sec/android/app/launcher/views/EditTextView$EditTextViewListener;Lcom/sec/android/app/launcher/views/EditTextView$Mode;)V

    return-void
.end method

.method public initialise(Lcom/sec/daliviews/views/TextView;Landroid/view/ViewGroup;Lcom/sec/android/app/launcher/views/EditTextView$EditTextViewListener;Lcom/sec/android/app/launcher/views/EditTextView$Mode;)V
    .locals 2

    iput-object p2, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mRoot:Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mDaliTextView:Lcom/sec/daliviews/views/TextView;

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mMaxLengthWatcher:Lcom/sec/android/app/launcher/views/EditTextView$MaxTextLengthWatcher;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/EditTextView$MaxTextLengthWatcher;->getMaxLength()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/views/EditTextView;->setMaxLength(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mMaxLengthWatcher:Lcom/sec/android/app/launcher/views/EditTextView$MaxTextLengthWatcher;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/views/EditTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mAndroidFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/views/EditTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mAndroidEditTextActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/views/EditTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mContext:Landroid/content/Context;

    sget v1, Lcom/sec/android/app/launcher/views/EditTextView;->DEFAULT_MAX_LENGTH:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/launcher/views/EditTextView;->getEditTextMaxLengthFilter(Landroid/content/Context;I)[Landroid/text/InputFilter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/views/EditTextView;->setFilters([Landroid/text/InputFilter;)V

    iput-object p3, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mListener:Lcom/sec/android/app/launcher/views/EditTextView$EditTextViewListener;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/android/app/launcher/utils/DelayedKeyboardManager;

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/launcher/utils/DelayedKeyboardManager;-><init>(Lcom/sec/android/app/launcher/utils/DelayedKeyboardManager$DelayedKeyboardManagerProvider;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mDelayedKeyboardManager:Lcom/sec/android/app/launcher/utils/DelayedKeyboardManager;

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/launcher/views/EditTextView$9;

    invoke-direct {v1, p0, p4}, Lcom/sec/android/app/launcher/views/EditTextView$9;-><init>(Lcom/sec/android/app/launcher/views/EditTextView;Lcom/sec/android/app/launcher/views/EditTextView$Mode;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mRefreshCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mRefreshCount:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/EditTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const-string v0, "LAUNCHER_EDIT_TEXT"

    const-string v1, "----onKeyPreIme KEYCODE_BACK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onPreDraw()Z
    .locals 1

    sget v0, Lcom/sec/android/app/launcher/views/EditTextView;->MAX_REFRESH:I

    iput v0, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mRefreshCount:I

    invoke-super {p0}, Landroid/widget/EditText;->onPreDraw()Z

    move-result v0

    return v0
.end method

.method public setBorderColour(I)V
    .locals 3

    move v0, p1

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mMode:Lcom/sec/android/app/launcher/views/EditTextView$Mode;

    sget-object v2, Lcom/sec/android/app/launcher/views/EditTextView$Mode;->EDIT:Lcom/sec/android/app/launcher/views/EditTextView$Mode;

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mBorderVisible:Z

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/views/EditTextView;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public setEditTextViewListener(Lcom/sec/android/app/launcher/views/EditTextView$EditTextViewListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mListener:Lcom/sec/android/app/launcher/views/EditTextView$EditTextViewListener;

    return-void
.end method

.method public setMaxLength(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mMaxLengthWatcher:Lcom/sec/android/app/launcher/views/EditTextView$MaxTextLengthWatcher;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/views/EditTextView$MaxTextLengthWatcher;->setMaxLength(I)V

    return-void
.end method

.method public setMode(Lcom/sec/android/app/launcher/views/EditTextView$Mode;)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mMode:Lcom/sec/android/app/launcher/views/EditTextView$Mode;

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mMode:Lcom/sec/android/app/launcher/views/EditTextView$Mode;

    sget-object v1, Lcom/sec/android/app/launcher/views/EditTextView$14;->$SwitchMap$com$sec$android$app$launcher$views$EditTextView$Mode:[I

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mMode:Lcom/sec/android/app/launcher/views/EditTextView$Mode;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/views/EditTextView$Mode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/EditTextView;->setText()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mDelayedKeyboardManager:Lcom/sec/android/app/launcher/utils/DelayedKeyboardManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mDelayedKeyboardManager:Lcom/sec/android/app/launcher/utils/DelayedKeyboardManager;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/launcher/utils/DelayedKeyboardManager;->forceKeyboardOff(Landroid/widget/EditText;)V

    :cond_2
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/sec/android/app/launcher/views/EditTextView;->setVisibility(I)V

    invoke-virtual {p0, v3}, Lcom/sec/android/app/launcher/views/EditTextView;->setCursorVisible(Z)V

    invoke-virtual {p0, v3}, Lcom/sec/android/app/launcher/views/EditTextView;->setSelection(I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mDaliTextView:Lcom/sec/daliviews/views/TextView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mDaliTextView:Lcom/sec/daliviews/views/TextView;

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mDaliTextVisibilityChangedListener:Lcom/sec/daliviews/views/NativeViewBase$VisibilityChangeListener;

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/TextView;->setVisibilityChangeListener(Lcom/sec/daliviews/views/NativeViewBase$VisibilityChangeListener;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mDaliTextView:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v1}, Lcom/sec/daliviews/views/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mDaliTextVisibilityChangedListener:Lcom/sec/daliviews/views/NativeViewBase$VisibilityChangeListener;

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mDaliTextView:Lcom/sec/daliviews/views/TextView;

    invoke-interface {v1, v2}, Lcom/sec/daliviews/views/NativeViewBase$VisibilityChangeListener;->onVisibilityChange(Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_3
    :goto_1
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mListener:Lcom/sec/android/app/launcher/views/EditTextView$EditTextViewListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mListener:Lcom/sec/android/app/launcher/views/EditTextView$EditTextViewListener;

    invoke-interface {v1, v0}, Lcom/sec/android/app/launcher/views/EditTextView$EditTextViewListener;->onTextChanged(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mDaliTextView:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v1, v3}, Lcom/sec/daliviews/views/TextView;->setVisibility(I)V

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mShowEditTextRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setTextValue(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/launcher/views/EditTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setVisible(Z)V
    .locals 3

    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    sget-object v1, Lcom/sec/android/app/launcher/views/EditTextView$14;->$SwitchMap$com$sec$android$app$launcher$views$EditTextView$Mode:[I

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mMode:Lcom/sec/android/app/launcher/views/EditTextView$Mode;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/views/EditTextView$Mode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mDaliTextView:Lcom/sec/daliviews/views/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mDaliTextView:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v1, v0}, Lcom/sec/daliviews/views/TextView;->setOpacity(F)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/views/EditTextView;->setAlpha(F)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public showToast(Landroid/content/Context;I)V
    .locals 5

    const v4, 0x7f0d003f

    const/4 v1, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/EditTextView;->maxlen_toast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p1, v4, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/EditTextView;->maxlen_toast:Landroid/widget/Toast;

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/EditTextView;->maxlen_toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/EditTextView;->maxlen_toast:Landroid/widget/Toast;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p1, v4, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public updateEditTextViewPosition()V
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mDaliTextView:Lcom/sec/daliviews/views/TextView;

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mDaliTextView:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v3}, Lcom/sec/daliviews/views/TextView;->getScreenBoundingRect()Landroid/graphics/Rect;

    move-result-object v2

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-direct {v1, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ar"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "fa"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ur"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "iw"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/launcher/views/EditTextView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v6, v3, v4, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    :goto_1
    invoke-virtual {p0, v1}, Lcom/sec/android/app/launcher/views/EditTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v3, v4, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1
.end method

.class public Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;
.super Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;
.source "IncomingCallEasyImageWidget.java"


# instance fields
.field private final ARROW_ANI_DURATION:I

.field private final LOG_TAG:Ljava/lang/String;

.field private final START_WAVE:I

.field private mEasyArrowLeftAnimation:[I

.field private mEasyArrowRightAnimation:[I

.field private mHandler:Landroid/os/Handler;

.field private mLeftArrowAnimationIndex:I

.field private mLeftArrowImageViews:Landroid/widget/ImageView;

.field private mLeftHintTextView:Landroid/widget/TextView;

.field private mRightArrowAnimationIndex:I

.field private mRightArrowImageViews:Landroid/widget/ImageView;

.field private mRightHintTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x5

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;-><init>(Landroid/content/Context;)V

    const-string v0, "IncomingCallEasyImageWidget"

    iput-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->LOG_TAG:Ljava/lang/String;

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->START_WAVE:I

    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->ARROW_ANI_DURATION:I

    iput v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mLeftArrowAnimationIndex:I

    iput v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mRightArrowAnimationIndex:I

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mEasyArrowLeftAnimation:[I

    new-array v0, v2, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mEasyArrowRightAnimation:[I

    new-instance v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget$1;-><init>(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;)V

    iput-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mHandler:Landroid/os/Handler;

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0202d8
        0x7f0202d9
        0x7f0202da
        0x7f0202db
        0x7f0202dc
    .end array-data

    :array_1
    .array-data 4
        0x7f0202d3
        0x7f0202d4
        0x7f0202d5
        0x7f0202d6
        0x7f0202d7
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x5

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "IncomingCallEasyImageWidget"

    iput-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->LOG_TAG:Ljava/lang/String;

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->START_WAVE:I

    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->ARROW_ANI_DURATION:I

    iput v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mLeftArrowAnimationIndex:I

    iput v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mRightArrowAnimationIndex:I

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mEasyArrowLeftAnimation:[I

    new-array v0, v2, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mEasyArrowRightAnimation:[I

    new-instance v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget$1;-><init>(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;)V

    iput-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mHandler:Landroid/os/Handler;

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0202d8
        0x7f0202d9
        0x7f0202da
        0x7f0202db
        0x7f0202dc
    .end array-data

    :array_1
    .array-data 4
        0x7f0202d3
        0x7f0202d4
        0x7f0202d5
        0x7f0202d6
        0x7f0202d7
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x5

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v0, "IncomingCallEasyImageWidget"

    iput-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->LOG_TAG:Ljava/lang/String;

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->START_WAVE:I

    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->ARROW_ANI_DURATION:I

    iput v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mLeftArrowAnimationIndex:I

    iput v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mRightArrowAnimationIndex:I

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mEasyArrowLeftAnimation:[I

    new-array v0, v2, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mEasyArrowRightAnimation:[I

    new-instance v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget$1;-><init>(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;)V

    iput-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mHandler:Landroid/os/Handler;

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0202d8
        0x7f0202d9
        0x7f0202da
        0x7f0202db
        0x7f0202dc
    .end array-data

    :array_1
    .array-data 4
        0x7f0202d3
        0x7f0202d4
        0x7f0202d5
        0x7f0202d6
        0x7f0202d7
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;)I
    .locals 1

    iget v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mLeftArrowAnimationIndex:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;I)I
    .locals 0

    iput p1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mLeftArrowAnimationIndex:I

    return p1
.end method

.method static synthetic access$108(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;)I
    .locals 2

    iget v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mLeftArrowAnimationIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mLeftArrowAnimationIndex:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mEasyArrowLeftAnimation:[I

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;)I
    .locals 1

    iget v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mRightArrowAnimationIndex:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;I)I
    .locals 0

    iput p1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mRightArrowAnimationIndex:I

    return p1
.end method

.method static synthetic access$308(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;)I
    .locals 2

    iget v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mRightArrowAnimationIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mRightArrowAnimationIndex:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mEasyArrowRightAnimation:[I

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mLeftArrowImageViews:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mRightArrowImageViews:Landroid/widget/ImageView;

    return-object v0
.end method

.method private hideAllArrow()V
    .locals 2

    const/16 v1, 0x64

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->hideLeftArrow()V

    invoke-direct {p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->hideRightArrow()V

    return-void
.end method

.method private hideLeftArrow()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mLeftArrowImageViews:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mLeftArrowImageViews:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private hideLeftHint()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mLeftHintTextView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private hideRightArrow()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mRightArrowImageViews:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mRightArrowImageViews:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private hideRightHint()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mRightHintTextView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private makeArrowViews()V
    .locals 5

    const/4 v4, -0x2

    const/4 v0, 0x0

    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mLeftArrowImageViews:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mRightArrowImageViews:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mLeftArrowImageViews:Landroid/widget/ImageView;

    const v3, 0x7f0202d8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mRightArrowImageViews:Landroid/widget/ImageView;

    const v3, 0x7f0202d3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v4, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mLeftArrowImageViews:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mRightArrowImageViews:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private makeHintView()V
    .locals 7

    const/4 v6, 0x0

    const v4, 0x7f0400a7

    const/4 v5, -0x2

    iget-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    invoke-virtual {v0, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mLeftHintTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mRightHintTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mLeftHintTextView:Landroid/widget/TextView;

    const v3, 0x7f0d018b

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mRightHintTextView:Landroid/widget/TextView;

    const v3, 0x7f0d018c

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mLeftHintTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09006b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mRightHintTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09006c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, 0x0

    invoke-direct {v1, v5, v5, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mLeftHintTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mRightHintTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private showArrow()V
    .locals 3

    const/16 v2, 0x64

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mLeftArrowImageViews:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mRightArrowImageViews:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method private showHint()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mLeftHintTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mRightHintTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public clearDrawable()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->hideAllArrow()V

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mLeftHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mLeftHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->clearDrawable()V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mRightHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mRightHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->clearDrawable()V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mLeftArrowImageViews:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mLeftArrowImageViews:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mRightArrowImageViews:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mRightArrowImageViews:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    invoke-super {p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->clearDrawable()V

    return-void
.end method

.method protected inflateHandle()V
    .locals 8

    const v7, 0x7f020258

    const v4, 0x7f020124

    const/4 v6, 0x1

    const/4 v5, -0x2

    const-string v2, "inflateHandle"

    invoke-virtual {p0, v2}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->log(Ljava/lang/String;)V

    const-string v3, "useHoverToAction"

    invoke-virtual {p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mUseHoverToAction:Z

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x53

    invoke-direct {v0, v5, v5, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    new-instance v2, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    iget-object v3, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v6}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mLeftHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    iget-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mLeftHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v2, p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->setParent(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;)V

    iget-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mLeftHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    const v3, 0x7f0202d1

    invoke-virtual {v2, v3}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->setHandleImageResource(I)V

    iget-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mLeftHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v2, v4}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->setTabImageResource(I)V

    iget-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mLeftHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v2, v4, v4}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->setLeftTabImageResource(II)V

    iget-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mLeftHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    const v3, 0x7f020123

    invoke-virtual {v2, v3}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->setTargetImageResource(I)V

    iget-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mLeftHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v2, v6}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->setUseExternalArrowImage(Z)V

    iget-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mLeftHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    iget-object v3, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mContext:Landroid/content/Context;

    const v4, 0x7f0d016f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mLeftHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {p0, v2, v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x55

    invoke-direct {v1, v5, v5, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    new-instance v2, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    iget-object v3, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mContext:Landroid/content/Context;

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mRightHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    iget-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mRightHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v2, p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->setParent(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;)V

    iget-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mRightHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    const v3, 0x7f0202d2

    invoke-virtual {v2, v3}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->setHandleImageResource(I)V

    iget-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mRightHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v2, v7}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->setTabImageResource(I)V

    iget-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mRightHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v2, v7, v7}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->setRightTabImageResource(II)V

    iget-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mRightHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    const v3, 0x7f020257

    invoke-virtual {v2, v3}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->setTargetImageResource(I)V

    iget-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mRightHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v2, v6}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->setUseExternalArrowImage(Z)V

    iget-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mRightHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    iget-object v3, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mContext:Landroid/content/Context;

    const v4, 0x7f0d0171

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mRightHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {p0, v2, v1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->makeArrowViews()V

    invoke-direct {p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->makeHintView()V

    return-void
.end method

.method public log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "IncomingCallEasyImageWidget"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public log(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "IncomingCallEasyImageWidget"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected setGrabbedState(I)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->setGrabbedState(I)V

    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->hideRightArrow()V

    invoke-direct {p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->hideRightHint()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->hideLeftArrow()V

    invoke-direct {p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->hideLeftHint()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->showArrow()V

    invoke-direct {p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->showHint()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected updateLayout()V
    .locals 29

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f0a00a5

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v26

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    div-int/lit8 v25, v26, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f0a00a4

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v26

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    div-int/lit8 v24, v26, 0x2

    sub-int v8, v25, v24

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f0a00a6

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v26

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f0a00a7

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v26

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    sub-int v11, v8, v26

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f0a00a8

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v26

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    sub-int v19, v8, v26

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v26

    if-eqz v26, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f0a00a9

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v26

    move/from16 v0, v26

    float-to-int v5, v0

    add-int/2addr v11, v5

    add-int v19, v19, v5

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mLeftHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->getLeft()I

    move-result v26

    sub-int v12, v26, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mRightHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->getRight()I

    move-result v26

    add-int v20, v26, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mLeftHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->getTop()I

    move-result v26

    add-int v13, v26, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mRightHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->getTop()I

    move-result v26

    add-int v21, v26, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mLeftHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mLeftHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->getWidth()I

    move-result v27

    add-int v27, v27, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mLeftHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->getHeight()I

    move-result v28

    add-int v28, v28, v13

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v12, v13, v1, v2}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->layout(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mRightHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mRightHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->getWidth()I

    move-result v27

    sub-int v27, v20, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mRightHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->getHeight()I

    move-result v28

    add-int v28, v28, v21

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v21

    move/from16 v3, v20

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->layout(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mLeftHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->getHeight()I

    move-result v26

    div-int/lit8 v26, v26, 0x2

    add-int v26, v26, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mLeftArrowImageViews:Landroid/widget/ImageView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/ImageView;->getHeight()I

    move-result v27

    div-int/lit8 v27, v27, 0x2

    sub-int v10, v26, v27

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f0a00aa

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v26

    move/from16 v0, v26

    float-to-int v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mLeftArrowImageViews:Landroid/widget/ImageView;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mLeftArrowImageViews:Landroid/widget/ImageView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/ImageView;->getWidth()I

    move-result v27

    add-int v27, v27, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mLeftArrowImageViews:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/ImageView;->getHeight()I

    move-result v28

    add-int v28, v28, v10

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v9, v10, v1, v2}, Landroid/widget/ImageView;->layout(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mRightHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->getHeight()I

    move-result v26

    div-int/lit8 v26, v26, 0x2

    add-int v26, v26, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mRightArrowImageViews:Landroid/widget/ImageView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/ImageView;->getHeight()I

    move-result v27

    div-int/lit8 v27, v27, 0x2

    sub-int v18, v26, v27

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f0a00ab

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v26

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mRightArrowImageViews:Landroid/widget/ImageView;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mRightArrowImageViews:Landroid/widget/ImageView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/ImageView;->getWidth()I

    move-result v27

    add-int v27, v27, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mRightArrowImageViews:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/ImageView;->getHeight()I

    move-result v28

    add-int v28, v28, v18

    move-object/from16 v0, v26

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f0a00ad

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v26

    move/from16 v0, v26

    float-to-int v6, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f0a00ac

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v26

    move/from16 v0, v26

    float-to-int v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mLeftHintTextView:Landroid/widget/TextView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->getHeight()I

    move-result v26

    sub-int v26, v10, v26

    sub-int v15, v26, v6

    move v14, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mLeftHintTextView:Landroid/widget/TextView;

    move-object/from16 v26, v0

    add-int v27, v14, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mLeftHintTextView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getHeight()I

    move-result v28

    add-int v28, v28, v15

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v14, v15, v1, v2}, Landroid/widget/TextView;->layout(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mLeftArrowImageViews:Landroid/widget/ImageView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/ImageView;->getHeight()I

    move-result v26

    add-int v26, v26, v18

    add-int v23, v26, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mRightArrowImageViews:Landroid/widget/ImageView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/ImageView;->getWidth()I

    move-result v26

    add-int v22, v17, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mRightHintTextView:Landroid/widget/TextView;

    move-object/from16 v26, v0

    sub-int v27, v22, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mRightHintTextView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getHeight()I

    move-result v28

    add-int v28, v28, v23

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v23

    move/from16 v3, v22

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mLeftHintTextView:Landroid/widget/TextView;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setWidth(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mRightHintTextView:Landroid/widget/TextView;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setWidth(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    const/16 v27, 0x64

    invoke-virtual/range {v26 .. v27}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v26

    if-nez v26, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    const/16 v27, 0x64

    invoke-virtual/range {v26 .. v27}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

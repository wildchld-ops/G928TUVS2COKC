.class public Lcom/android/phone/dialpad/DialpadView;
.super Landroid/widget/LinearLayout;
.source "DialpadView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mButtonIds:[I

.field private mDelete:Landroid/widget/ImageButton;

.field private final mIsLandscape:Z

.field private final mIsRtl:Z

.field private mOverflowMenuButton:Landroid/view/View;

.field private mTranslateDistance:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/phone/dialpad/DialpadView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/dialpad/DialpadView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/dialpad/DialpadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/phone/dialpad/DialpadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v1, 0xc

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/phone/dialpad/DialpadView;->mButtonIds:[I

    sget-object v1, Lcom/android/phone/R$styleable;->Dialpad:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lcom/android/phone/dialpad/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0d0014

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/dialpad/DialpadView;->mTranslateDistance:I

    invoke-virtual {p0}, Lcom/android/phone/dialpad/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/phone/dialpad/DialpadView;->mIsLandscape:Z

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    if-ne v1, v2, :cond_1

    :goto_1
    iput-boolean v2, p0, Lcom/android/phone/dialpad/DialpadView;->mIsRtl:Z

    return-void

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    nop

    :array_0
    .array-data 4
        0x7f100088
        0x7f100074
        0x7f100076
        0x7f100078
        0x7f10007a
        0x7f10007c
        0x7f10007e
        0x7f100080
        0x7f100082
        0x7f100084
        0x7f100086
        0x7f10008a
    .end array-data
.end method

.method private setupKeypad()V
    .locals 14

    const/16 v13, 0xc

    new-array v7, v13, [I

    fill-array-data v7, :array_0

    new-array v4, v13, [I

    fill-array-data v4, :array_1

    invoke-virtual {p0}, Lcom/android/phone/dialpad/DialpadView;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x0

    :goto_0
    iget-object v13, p0, Lcom/android/phone/dialpad/DialpadView;->mButtonIds:[I

    array-length v13, v13

    if-ge v3, v13, :cond_3

    iget-object v13, p0, Lcom/android/phone/dialpad/DialpadView;->mButtonIds:[I

    aget v13, v13, v3

    invoke-virtual {p0, v13}, Lcom/android/phone/dialpad/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/dialpad/DialpadKeyButton;

    const v13, 0x7f100092

    invoke-virtual {v0, v13}, Lcom/android/phone/dialpad/DialpadKeyButton;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v13, 0x7f100093

    invoke-virtual {v0, v13}, Lcom/android/phone/dialpad/DialpadKeyButton;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    aget v13, v7, v3

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v13, "fa"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    if-ltz v3, :cond_0

    const/16 v13, 0x9

    if-gt v3, v13, :cond_0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    :cond_0
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    :try_start_0
    const-string v13, "system/fonts/Roboto-Light.ttf"

    invoke-static {v13}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_1
    invoke-virtual {v0, v8}, Lcom/android/phone/dialpad/DialpadKeyButton;->setContentDescription(Ljava/lang/CharSequence;)V

    if-eqz v5, :cond_2

    aget v13, v4, v3

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_3
    const v13, 0x7f100074

    invoke-virtual {p0, v13}, Lcom/android/phone/dialpad/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/phone/dialpad/DialpadKeyButton;

    const v13, 0x7f0a0064

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v10, v13}, Lcom/android/phone/dialpad/DialpadKeyButton;->setLongHoverContentDescription(Ljava/lang/CharSequence;)V

    const v13, 0x7f100088

    invoke-virtual {p0, v13}, Lcom/android/phone/dialpad/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/android/phone/dialpad/DialpadKeyButton;

    const v13, 0x7f0a0063

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/phone/dialpad/DialpadKeyButton;->setLongHoverContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :array_0
    .array-data 4
        0x7f0a0049
        0x7f0a004a
        0x7f0a004b
        0x7f0a004c
        0x7f0a004d
        0x7f0a004e
        0x7f0a004f
        0x7f0a0050
        0x7f0a0051
        0x7f0a0052
        0x7f0a0053
        0x7f0a0054
    .end array-data

    :array_1
    .array-data 4
        0x7f0a0055
        0x7f0a0056
        0x7f0a0057
        0x7f0a0058
        0x7f0a0059
        0x7f0a005a
        0x7f0a005b
        0x7f0a005c
        0x7f0a005d
        0x7f0a005e
        0x7f0a005f
        0x7f0a0060
    .end array-data
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/dialpad/DialpadView;->setupKeypad()V

    const v0, 0x7f100091

    invoke-virtual {p0, v0}, Lcom/android/phone/dialpad/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/dialpad/DialpadView;->mDelete:Landroid/widget/ImageButton;

    const v0, 0x7f100097

    invoke-virtual {p0, v0}, Lcom/android/phone/dialpad/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/dialpad/DialpadView;->mOverflowMenuButton:Landroid/view/View;

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.class public abstract Lcom/ime/framework/view/chinesespell/AbstractSpellView;
.super Landroid/widget/TextView;
.source "AbstractSpellView.java"


# static fields
.field private static final LEFT_RIGHT_MARGIN:I = 0x5

.field private static final SUSPENSION_POINTS:Ljava/lang/String; = "..."


# instance fields
.field public mCloudHandler:Landroid/os/Handler;

.field private mCloudIdleDrawable:Landroid/graphics/drawable/Drawable;

.field private mCmpStr:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCount:I

.field private mFmi:Landroid/graphics/Paint$FontMetricsInt;

.field private mHeight:I

.field mInputManager:Lcom/ime/framework/common/InputManager;

.field mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

.field private mNeedSuspens:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mSelectedLen:I

.field public mShowCloudIcon:Z

.field private mStrColor:I

.field private mStrColorHl:I

.field private mSuspensionPointsWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mShowCloudIcon:Z

    iput v0, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mCount:I

    new-instance v0, Lcom/ime/framework/view/chinesespell/AbstractSpellView$1;

    invoke-direct {v0, p0}, Lcom/ime/framework/view/chinesespell/AbstractSpellView$1;-><init>(Lcom/ime/framework/view/chinesespell/AbstractSpellView;)V

    iput-object v0, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mCloudHandler:Landroid/os/Handler;

    invoke-direct {p0, p1}, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v0, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mShowCloudIcon:Z

    iput v0, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mCount:I

    new-instance v0, Lcom/ime/framework/view/chinesespell/AbstractSpellView$1;

    invoke-direct {v0, p0}, Lcom/ime/framework/view/chinesespell/AbstractSpellView$1;-><init>(Lcom/ime/framework/view/chinesespell/AbstractSpellView;)V

    iput-object v0, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mCloudHandler:Landroid/os/Handler;

    invoke-direct {p0, p1}, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v0, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mShowCloudIcon:Z

    iput v0, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mCount:I

    new-instance v0, Lcom/ime/framework/view/chinesespell/AbstractSpellView$1;

    invoke-direct {v0, p0}, Lcom/ime/framework/view/chinesespell/AbstractSpellView$1;-><init>(Lcom/ime/framework/view/chinesespell/AbstractSpellView;)V

    iput-object v0, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mCloudHandler:Landroid/os/Handler;

    invoke-direct {p0, p1}, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/ime/framework/view/chinesespell/AbstractSpellView;)I
    .locals 1

    iget v0, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mCount:I

    return v0
.end method

.method static synthetic access$002(Lcom/ime/framework/view/chinesespell/AbstractSpellView;I)I
    .locals 0

    iput p1, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mCount:I

    return p1
.end method

.method static synthetic access$008(Lcom/ime/framework/view/chinesespell/AbstractSpellView;)I
    .locals 2

    iget v0, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mCount:I

    return v0
.end method

.method static synthetic access$102(Lcom/ime/framework/view/chinesespell/AbstractSpellView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mCloudIdleDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method private getLimitedStringForDrawing(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0}, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mPaddingLeft:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mPaddingRight:I

    sub-int v2, v4, v5

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v4, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, p1, v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v3

    iget v4, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mSuspensionPointsWidth:F

    add-float/2addr v4, v3

    int-to-float v5, v2

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static getSpellDescription(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 4

    if-nez p0, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 5

    iput-object p1, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v1, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b009b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mStrColor:I

    const v1, 0x7f0b009c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mStrColorHl:I

    const v1, 0x7f090ef7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mHeight:I

    iget-object v1, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f090ef8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mHeight:I

    :cond_0
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mStrColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->getTextSize()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mPaint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/ime/framework/common/FontManagerImpl;->getInstance()Lcom/ime/framework/common/FontManager;

    move-result-object v2

    const-string v3, "ROBOTO_MEDIUM"

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-interface {v2, v3, v4}, Lcom/ime/framework/common/FontManager;->getFont(Ljava/lang/String;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v1, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    iget-object v1, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mPaint:Landroid/graphics/Paint;

    const-string v2, "..."

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mSuspensionPointsWidth:F

    invoke-virtual {p0}, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202f3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mCloudIdleDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    iget-object v7, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mCmpStr:Ljava/lang/String;

    if-nez v7, :cond_2

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v7, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mPaddingLeft:I

    add-int/lit8 v7, v7, 0x5

    int-to-float v5, v7

    iget-object v7, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v7, v7, Landroid/graphics/Paint$FontMetricsInt;->top:I

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {p0}, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->getHeight()I

    move-result v8

    iget-object v9, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v9, v9, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget-object v10, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v10, v10, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v9, v10

    sub-int/2addr v8, v9

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    add-float v6, v7, v8

    iget-boolean v7, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mNeedSuspens:Z

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mCmpStr:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->getLimitedStringForDrawing(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v7, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mPaint:Landroid/graphics/Paint;

    iget v8, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mStrColor:I

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    iget v1, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mSelectedLen:I

    if-lez v1, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v1, v7, :cond_5

    iget-boolean v7, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mNeedSuspens:Z

    if-nez v7, :cond_5

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mPaint:Landroid/graphics/Paint;

    iget v8, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mStrColorHl:I

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v7, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v7, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mPaint:Landroid/graphics/Paint;

    iget v8, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mStrColor:I

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v7, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    add-float/2addr v7, v5

    iget-object v8, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v7, v6, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_2
    iget-object v7, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->getCloudLinkFeatureStatus()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_1

    iget-boolean v7, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mShowCloudIcon:Z

    if-eqz v7, :cond_1

    const/high16 v4, 0x42800000    # 64.0f

    iget-object v7, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mCmpStr:Ljava/lang/String;

    if-eqz v7, :cond_3

    float-to-double v8, v4

    iget-object v7, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mPaint:Landroid/graphics/Paint;

    iget-object v10, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mCmpStr:Ljava/lang/String;

    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    float-to-double v10, v7

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    add-double/2addr v10, v12

    add-double/2addr v8, v10

    double-to-float v4, v8

    :cond_3
    iget-object v7, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mCloudIdleDrawable:Landroid/graphics/drawable/Drawable;

    float-to-int v8, v4

    const/16 v9, 0x8

    iget-object v10, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mCloudIdleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v10, v4

    const/high16 v11, 0x41200000    # 10.0f

    add-float/2addr v10, v11

    float-to-int v10, v10

    iget-object v11, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mCloudIdleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    add-int/lit8 v11, v11, 0x8

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v7, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mCloudIdleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v7, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mCloudHandler:Landroid/os/Handler;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v7, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mCloudHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v8

    const-wide/16 v10, 0xfa

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mCmpStr:Ljava/lang/String;

    goto/16 :goto_1

    :cond_5
    iget-object v7, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 13

    const/4 v12, 0x1

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mCmpStr:Ljava/lang/String;

    if-nez v5, :cond_1

    iget v5, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mHeight:I

    invoke-virtual {p0, v6, v5}, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->setMeasuredDimension(II)V

    goto :goto_0

    :cond_1
    iput-boolean v6, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mNeedSuspens:Z

    iget v5, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mPaddingLeft:I

    iget v6, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mPaddingRight:I

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0xa

    int-to-float v4, v5

    iget-object v5, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mCmpStr:Ljava/lang/String;

    if-eqz v5, :cond_5

    float-to-double v6, v4

    iget-object v5, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mPaint:Landroid/graphics/Paint;

    iget-object v8, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mCmpStr:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-double v8, v5

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    add-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v4, v6

    iget-object v5, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mCmpStr:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    const/4 v4, 0x0

    :cond_2
    :goto_1
    const/4 v2, 0x0

    iget-object v5, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v1

    const/16 v5, 0x8

    if-ne v1, v5, :cond_7

    iget-object v5, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/ime/framework/view/PopupKeyboardView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ime/framework/view/PopupKeyboardView;->getFloatingView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v2

    :goto_2
    int-to-float v5, v2

    cmpl-float v5, v4, v5

    if-lez v5, :cond_3

    int-to-float v4, v2

    iput-boolean v12, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mNeedSuspens:Z

    :cond_3
    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-nez v5, :cond_4

    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->setVisibility(I)V

    :cond_4
    iget-object v5, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->getCloudLinkFeatureStatus()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_d

    iget-boolean v5, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mShowCloudIcon:Z

    if-eqz v5, :cond_c

    float-to-int v5, v4

    iget-object v6, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mCloudIdleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0xa

    iget v6, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mHeight:I

    invoke-virtual {p0, v5, v6}, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->setMeasuredDimension(II)V

    goto/16 :goto_0

    :cond_5
    const/4 v4, 0x0

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/ime/framework/repository/PropertyItems;->getWindowWidth()I

    move-result v2

    goto :goto_2

    :cond_7
    const/4 v5, 0x7

    if-ne v1, v5, :cond_9

    iget-object v5, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/ime/framework/view/PopupKeyboardView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ime/framework/view/PopupKeyboardView;->getSplitRightView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v2

    goto :goto_2

    :cond_8
    invoke-static {}, Lcom/ime/framework/repository/PropertyItems;->getWindowWidth()I

    move-result v2

    goto :goto_2

    :cond_9
    iget-object v5, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v0

    if-ne v0, v12, :cond_a

    invoke-virtual {p0}, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0903ea

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_2

    :cond_a
    invoke-virtual {p0}, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0903eb

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_2

    :cond_b
    invoke-static {}, Lcom/ime/framework/repository/PropertyItems;->getWindowWidth()I

    move-result v2

    goto/16 :goto_2

    :cond_c
    invoke-virtual {p0}, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0202f3

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mCloudIdleDrawable:Landroid/graphics/drawable/Drawable;

    float-to-int v5, v4

    iget v6, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mHeight:I

    invoke-virtual {p0, v5, v6}, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->setMeasuredDimension(II)V

    goto/16 :goto_0

    :cond_d
    float-to-int v5, v4

    iget v6, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mHeight:I

    invoke-virtual {p0, v5, v6}, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->setMeasuredDimension(II)V

    goto/16 :goto_0
.end method

.method public setComposingStr(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mCmpStr:Ljava/lang/String;

    iput p2, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mSelectedLen:I

    iget-object v0, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mCmpStr:Ljava/lang/String;

    invoke-static {v0}, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->getSpellDescription(Ljava/lang/String;)Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->requestLayout()V

    invoke-virtual {p0}, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->invalidate()V

    goto :goto_0
.end method

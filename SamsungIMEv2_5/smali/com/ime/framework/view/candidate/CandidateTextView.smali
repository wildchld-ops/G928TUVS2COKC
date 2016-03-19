.class public Lcom/ime/framework/view/candidate/CandidateTextView;
.super Landroid/widget/TextView;
.source "CandidateTextView.java"


# static fields
.field private static final PINYIN_FORMAT:Ljava/lang/String; = "(%s)"

.field private static final sPinYinList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private MIN_ITEM_WIDTH:I

.field private mFontManager:Lcom/ime/framework/common/FontManager;

.field private mHighlight:Z

.field private mHighlightColor:I

.field private mIconTypeDrawable:Landroid/graphics/drawable/Drawable;

.field private mIconTypeWidth:I

.field public mIcontype:I

.field private mIndex:I

.field private mInputManager:Lcom/ime/framework/common/InputManager;

.field private mInputText:Ljava/lang/CharSequence;

.field private mInputedTextColor:I

.field private mIsExpandView:Z

.field public mIsInFocusState:Z

.field public mIsInPressedState:Z

.field private mIsSwiftKeyMode:Z

.field public mIsVisible:Z

.field private mPinYinFontSizeBig:I

.field private mPinYinFontSizeMiddle:I

.field private mPinYinFontSizeSmall:I

.field private mPinYinMargin:I

.field private mPinYinMaxWidth:I

.field private mPinYinPaint:Landroid/graphics/Paint;

.field private mPressedTextColor:I

.field private mRepository:Lcom/ime/framework/repository/Repository;

.field public mSequenceTypeInfo:I

.field private mText:Ljava/lang/CharSequence;

.field private mTextColor:I

.field public mTypeIconMaxWidth:I

.field private mTypeface:Landroid/graphics/Typeface;

.field private mUseSuperOnDraw:Z

.field public mViewIndex:I

.field private mX:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ime/framework/view/candidate/CandidateTextView;->sPinYinList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v0, -0x10000

    iput v0, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->mHighlightColor:I

    const/16 v0, -0x100

    iput v0, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->mInputedTextColor:I

    iput v2, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->mTextColor:I

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->mPressedTextColor:I

    iput v2, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->mViewIndex:I

    iput v1, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->mSequenceTypeInfo:I

    iput v1, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->mIcontype:I

    iput v1, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->mTypeIconMaxWidth:I

    invoke-direct {p0}, Lcom/ime/framework/view/candidate/CandidateTextView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, -0x10000

    iput v0, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->mHighlightColor:I

    const/16 v0, -0x100

    iput v0, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->mInputedTextColor:I

    iput v2, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->mTextColor:I

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->mPressedTextColor:I

    iput v2, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->mViewIndex:I

    iput v1, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->mSequenceTypeInfo:I

    iput v1, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->mIcontype:I

    iput v1, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->mTypeIconMaxWidth:I

    invoke-direct {p0}, Lcom/ime/framework/view/candidate/CandidateTextView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v0, -0x10000

    iput v0, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->mHighlightColor:I

    const/16 v0, -0x100

    iput v0, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->mInputedTextColor:I

    iput v2, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->mTextColor:I

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->mPressedTextColor:I

    iput v2, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->mViewIndex:I

    iput v1, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->mSequenceTypeInfo:I

    iput v1, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->mIcontype:I

    iput v1, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->mTypeIconMaxWidth:I

    invoke-direct {p0}, Lcom/ime/framework/view/candidate/CandidateTextView;->init()V

    return-void
.end method

.method private init()V
    .locals 4

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v1, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getRepository()Lcom/ime/framework/repository/Repository;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->mRepository:Lcom/ime/framework/repository/Repository;

    iget-object v1, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->mIsSwiftKeyMode:Z

    :cond_0
    invoke-static {}, Lcom/ime/framework/common/FontManagerImpl;->getInstance()Lcom/ime/framework/common/FontManager;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->mFontManager:Lcom/ime/framework/common/FontManager;

    invoke-static {}, Lcom/ime/framework/repository/PropertyItems;->getWindowWidth()I

    move-result v1

    const/16 v2, 0x140

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->mFontManager:Lcom/ime/framework/common/FontManager;

    const-string v2, "SAMSUNGSANS_KEYPAD"

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-interface {v1, v2, v3}, Lcom/ime/framework/common/FontManager;->getFont(Ljava/lang/String;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/ime/framework/view/candidate/CandidateTextView;->enableMultiSelection(Z)V

    iget-object v1, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isUseBstHWRPanel()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/CandidateTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->mPinYinPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/CandidateTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090812

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->mPinYinFontSizeSmall:I

    const v1, 0x7f090811

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->mPinYinFontSizeMiddle:I

    const v1, 0x7f090810

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->mPinYinFontSizeBig:I

    const v1, 0x7f090813

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->mPinYinMargin:I

    :cond_1
    iget-object v1, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/CandidateTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090802

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->MIN_ITEM_WIDTH:I

    :cond_2
    return-void

    :cond_3
    iget-object v1, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->mFontManager:Lcom/ime/framework/common/FontManager;

    const-string v2, "SEC_ROBOTO_LIGHT_REGULAR"

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-interface {v1, v2, v3}, Lcom/ime/framework/common/FontManager;->getFont(Ljava/lang/String;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->mTypeface:Landroid/graphics/Typeface;

    goto :goto_0
.end method

.method private isNotArabic(I)Z
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x61720000

    if-eq p1, v1, :cond_0

    const/high16 v1, 0x66610000

    if-eq p1, v1, :cond_0

    const/high16 v1, 0x75720000

    if-eq p1, v1, :cond_0

    const/high16 v1, 0x69770000

    if-eq p1, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private measurePinYinFontSize()V
    .locals 6

    sget-object v4, Lcom/ime/framework/view/candidate/CandidateTextView;->sPinYinList:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->mPinYinPaint:Landroid/graphics/Paint;

    if-nez v4, :cond_1

    :cond_0
    return-void

    :cond_1
    sget-object v4, Lcom/ime/framework/view/candidate/CandidateTextView;->sPinYinList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    const/4 v4, 0x0

    iput v4, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->mPinYinMaxWidth:I

    sget-object v4, Lcom/ime/framework/view/candidate/CandidateTextView;->sPinYinList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v4, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->mPinYinPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v3, v4

    iget v4, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->mPinYinMaxWidth:I

    if-le v3, v4, :cond_2

    iput v3, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->mPinYinMaxWidth:I

    goto :goto_1

    :pswitch_0
    iget-object v4, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->mPinYinPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->mPinYinFontSizeBig:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_0

    :pswitch_1
    iget-object v4, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->mPinYinPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->mPinYinFontSizeMiddle:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_0

    :pswitch_2
    iget-object v4, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->mPinYinPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->mPinYinFontSizeSmall:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public clearPhoneticSpellings()V
    .locals 1

    sget-object v0, Lcom/ime/framework/view/candidate/CandidateTextView;->sPinYinList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getCandidateTextViewWidth()F
    .locals 6

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/CandidateTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/CandidateTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/CandidateTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    const-string v4, "\u0e01"

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    :cond_0
    const/4 v0, 0x0

    iget-object v4, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->mIndex:I

    if-nez v4, :cond_1

    sget-object v4, Lcom/ime/framework/view/candidate/CandidateTextView;->sPinYinList:Ljava/util/List;

    if-eqz v4, :cond_1

    sget-object v4, Lcom/ime/framework/view/candidate/CandidateTextView;->sPinYinList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    invoke-direct {p0}, Lcom/ime/framework/view/candidate/CandidateTextView;->measurePinYinFontSize()V

    iget v4, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->mPinYinMaxWidth:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    :cond_1
    iget v4, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->MIN_ITEM_WIDTH:I

    int-to-float v4, v4

    cmpg-float v4, v3, v4

    if-gez v4, :cond_2

    iget v4, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->MIN_ITEM_WIDTH:I

    int-to-float v3, v4

    :cond_2
    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/CandidateTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090803

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v0, v4

    :cond_3
    mul-int/lit8 v4, v0, 0x2

    int-to-float v4, v4

    add-float v1, v3, v4

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/CandidateTextView;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v1

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/CandidateTextView;->getPaddingRight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    return v4
.end method

.method public getIconType()I
    .locals 1

    iget v0, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->mIcontype:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->mIndex:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 26

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/CandidateTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/view/candidate/CandidateTextView;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/ime/framework/view/candidate/CandidateTextView;->mIndex:I

    if-nez v2, :cond_2

    sget-object v2, Lcom/ime/framework/view/candidate/CandidateTextView;->sPinYinList:Ljava/util/List;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/ime/framework/view/candidate/CandidateTextView;->sPinYinList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/view/candidate/CandidateTextView;->mPinYinPaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_2

    const/4 v11, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/view/candidate/CandidateTextView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isUseBstHWRPanel()Z

    move-result v2

    if-eqz v2, :cond_4

    if-nez v11, :cond_3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/ime/framework/view/candidate/CandidateTextView;->mIsExpandView:Z

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/ime/framework/view/candidate/CandidateTextView;->mX:F

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/view/candidate/CandidateTextView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/ime/framework/view/candidate/CandidateTextView;->mIcontype:I

    if-lez v2, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/ime/framework/view/candidate/CandidateTextView;->mPaddingTop:I

    add-int/lit8 v23, v2, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/view/candidate/CandidateTextView;->mIconTypeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/view/candidate/CandidateTextView;->mIconTypeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/CandidateTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0907ff

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/CandidateTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0907fe

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v15, v2

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/CandidateTextView;->getWidth()I

    move-result v2

    sub-int v2, v2, v17

    sub-int v20, v2, v15

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/CandidateTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090800

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v10, v2

    move/from16 v0, v17

    if-le v0, v10, :cond_0

    move/from16 v17, v10

    :cond_0
    move/from16 v0, v17

    if-le v14, v0, :cond_1

    move/from16 v14, v17

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/view/candidate/CandidateTextView;->mIconTypeDrawable:Landroid/graphics/drawable/Drawable;

    add-int v3, v23, v16

    add-int v4, v20, v17

    add-int v5, v23, v16

    add-int/2addr v5, v14

    move/from16 v0, v20

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/view/candidate/CandidateTextView;->mIconTypeDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/CandidateTextView;->isPressed()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/CandidateTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ime/framework/view/candidate/CandidateTextView;->mIconTypeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/CandidateTextView;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/CandidateTextView;->getPaddingRight()I

    move-result v3

    int-to-float v3, v3

    add-float v24, v2, v3

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/CandidateTextView;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v24, v2

    if-lez v2, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/CandidateTextView;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v21, v2, v24

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, v21, v2

    if-gez v2, :cond_6

    :goto_3
    const/4 v2, 0x0

    invoke-virtual {v8}, Landroid/graphics/Paint;->getTextSize()F

    move-result v3

    mul-float v3, v3, v21

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/ime/framework/view/candidate/CandidateTextView;->setTextSize(IF)V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/CandidateTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ime/framework/view/candidate/CandidateTextView;->mIconTypeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/CandidateTextView;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/CandidateTextView;->getPaddingRight()I

    move-result v3

    int-to-float v3, v3

    add-float v24, v2, v3

    goto :goto_2

    :cond_2
    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/CandidateTextView;->getPaddingLeft()I

    move-result v2

    int-to-float v6, v2

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/ime/framework/view/candidate/CandidateTextView;->mIsExpandView:Z

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/ime/framework/view/candidate/CandidateTextView;->mX:F

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto/16 :goto_1

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/CandidateTextView;->getPaddingLeft()I

    move-result v2

    int-to-float v6, v2

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto/16 :goto_1

    :cond_6
    const/high16 v21, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/CandidateTextView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/CandidateTextView;->getTextSize()F

    move-result v3

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {v8}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->ascent:F

    invoke-virtual {v8}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-float v3, v4

    sub-float v7, v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/CandidateTextView;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/ime/framework/view/candidate/CandidateTextView;->mUseSuperOnDraw:Z

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/view/candidate/CandidateTextView;->mText:Ljava/lang/CharSequence;

    const-string v3, " "

    if-ne v2, v3, :cond_a

    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ime/framework/view/candidate/CandidateTextView;->mPressedTextColor:I

    move-object/from16 v0, p0

    invoke-super {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-super/range {p0 .. p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    :cond_9
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/view/candidate/CandidateTextView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isUseBstHWRPanel()Z

    move-result v2

    if-eqz v2, :cond_12

    if-eqz v11, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/view/candidate/CandidateTextView;->mPinYinPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/ime/framework/view/candidate/CandidateTextView;->mHighlightColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/view/candidate/CandidateTextView;->mPinYinPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v12

    iget v2, v12, Landroid/graphics/Paint$FontMetricsInt;->top:I

    neg-int v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/ime/framework/view/candidate/CandidateTextView;->mPinYinMargin:I

    add-int v23, v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/CandidateTextView;->getMeasuredHeight()I

    move-result v13

    iget v2, v12, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    sub-int v2, v13, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/ime/framework/view/candidate/CandidateTextView;->mPinYinMargin:I

    sub-int v9, v2, v3

    div-int/lit8 v2, v13, 0x2

    iget v3, v12, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    neg-int v3, v3

    iget v4, v12, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int v19, v2, v3

    const/16 v25, 0x0

    sget-object v2, Lcom/ime/framework/view/candidate/CandidateTextView;->sPinYinList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v22

    const/16 v18, 0x0

    :goto_5
    move/from16 v0, v18

    move/from16 v1, v22

    if-ge v0, v1, :cond_12

    packed-switch v18, :pswitch_data_0

    :goto_6
    sget-object v2, Lcom/ime/framework/view/candidate/CandidateTextView;->sPinYinList:Ljava/util/List;

    move/from16 v0, v18

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ime/framework/view/candidate/CandidateTextView;->mText:Ljava/lang/CharSequence;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    add-float/2addr v3, v6

    move-object/from16 v0, p0

    iget v4, v0, Lcom/ime/framework/view/candidate/CandidateTextView;->mPinYinMargin:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    move/from16 v0, v25

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/framework/view/candidate/CandidateTextView;->mPinYinPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v18, v18, 0x1

    goto :goto_5

    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ime/framework/view/candidate/CandidateTextView;->mPressedTextColor:I

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ime/framework/view/candidate/CandidateTextView;->mText:Ljava/lang/CharSequence;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/view/candidate/CandidateTextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    goto/16 :goto_4

    :cond_b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/ime/framework/view/candidate/CandidateTextView;->mHighlight:Z

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/ime/framework/view/candidate/CandidateTextView;->mUseSuperOnDraw:Z

    if-nez v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/view/candidate/CandidateTextView;->mText:Ljava/lang/CharSequence;

    const-string v3, " "

    if-ne v2, v3, :cond_d

    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ime/framework/view/candidate/CandidateTextView;->mHighlightColor:I

    move-object/from16 v0, p0

    invoke-super {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-super {v0, v2}, Landroid/widget/TextView;->setHoverPopupType(I)V

    invoke-super/range {p0 .. p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    goto/16 :goto_4

    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ime/framework/view/candidate/CandidateTextView;->mHighlightColor:I

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ime/framework/view/candidate/CandidateTextView;->mText:Ljava/lang/CharSequence;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/view/candidate/CandidateTextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    goto/16 :goto_4

    :cond_e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/ime/framework/view/candidate/CandidateTextView;->mUseSuperOnDraw:Z

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/ime/framework/view/candidate/CandidateTextView;->mTextColor:I

    move-object/from16 v0, p0

    invoke-super {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-super/range {p0 .. p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    goto/16 :goto_4

    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/view/candidate/CandidateTextView;->mText:Ljava/lang/CharSequence;

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget v2, v0, Lcom/ime/framework/view/candidate/CandidateTextView;->mTextColor:I

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ime/framework/view/candidate/CandidateTextView;->mText:Ljava/lang/CharSequence;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/view/candidate/CandidateTextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    goto/16 :goto_4

    :pswitch_0
    const/4 v2, 0x1

    move/from16 v0, v22

    if-ne v0, v2, :cond_10

    move/from16 v25, v19

    :goto_7
    goto/16 :goto_6

    :cond_10
    move/from16 v25, v23

    goto :goto_7

    :pswitch_1
    const/4 v2, 0x2

    move/from16 v0, v22

    if-ne v0, v2, :cond_11

    move/from16 v25, v9

    :goto_8
    goto/16 :goto_6

    :cond_11
    move/from16 v25, v19

    goto :goto_8

    :pswitch_2
    move/from16 v25, v9

    goto/16 :goto_6

    :cond_12
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    int-to-float v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->mX:F

    return-void
.end method

.method public setAttribute(ZZ)V
    .locals 0

    iput-boolean p1, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->mIsExpandView:Z

    iput-boolean p2, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->mUseSuperOnDraw:Z

    return-void
.end method

.method public setHighlightColor(I)V
    .locals 0

    iput p1, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->mHighlightColor:I

    return-void
.end method

.method public setIcontype(I)V
    .locals 2

    iput p1, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->mIcontype:I

    iget v0, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->mIcontype:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->mIconTypeDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    iput v0, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->mIconTypeWidth:I

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->mIconTypeDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->mIconTypeDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->mIconTypeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->mIconTypeWidth:I

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0202ee

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->mIconTypeDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->mIconTypeDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->mIconTypeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->mIconTypeWidth:I

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020730

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->mIconTypeDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->mIconTypeDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->mIconTypeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->mIconTypeWidth:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setInputedTextColor(I)V
    .locals 0

    iput p1, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->mInputedTextColor:I

    return-void
.end method

.method public setPhoneticSpellings(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    sget-object v3, Lcom/ime/framework/view/candidate/CandidateTextView;->sPinYinList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "(%s)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/ime/framework/view/candidate/CandidateTextView;->sPinYinList:Ljava/util/List;

    if-eqz v3, :cond_2

    sget-object v3, Lcom/ime/framework/view/candidate/CandidateTextView;->sPinYinList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/ime/framework/view/candidate/CandidateTextView;->sPinYinList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setPressedTextColor(I)V
    .locals 0

    iput p1, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->mPressedTextColor:I

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V
    .locals 0

    iput p3, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->mIndex:I

    iput-object p1, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->mText:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->mInputText:Ljava/lang/CharSequence;

    iput-boolean p4, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->mHighlight:Z

    invoke-virtual {p0, p1}, Lcom/ime/framework/view/candidate/CandidateTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    iput p1, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->mTextColor:I

    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/view/candidate/CandidateTextView;->mTypeface:Landroid/graphics/Typeface;

    invoke-super {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

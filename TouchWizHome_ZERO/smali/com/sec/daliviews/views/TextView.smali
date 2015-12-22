.class public Lcom/sec/daliviews/views/TextView;
.super Lcom/sec/daliviews/views/ItemView;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/daliviews/views/TextView$ColourMap;
    }
.end annotation


# static fields
.field private static final INVAILD_COLOR:I = 0xffffff

.field private static final INVALID_RESOURCE_ID:I = 0x0

.field private static final MONOSPACE:I = 0x3

.field private static final NORMAL:I = 0x0

.field private static final SANS:I = 0x1

.field private static final SERIF:I = 0x2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field protected final mContext:Landroid/content/Context;

.field protected mDefaultTextColor:I

.field private mEllipsize:I

.field private mFontFamily:Ljava/lang/String;

.field private mGravity:I

.field mHasCustomColour:Z

.field protected mHeight:I

.field protected mHint:Ljava/lang/String;

.field private mHintColor:I

.field private mHintId:I

.field protected mMaxHeight:I

.field protected mMaxLines:I

.field protected mMaxWidth:I

.field protected mScrollHorizontally:Z

.field private mShadowColor:I

.field private mShadowDx:F

.field private mShadowDy:F

.field private mShadowRadius:F

.field protected mSingleLine:Z

.field private mSliding:Z

.field protected mText:Ljava/lang/String;

.field private mTextId:I

.field private mTextScaleX:F

.field private mTextSize:I

.field private mTextStyle:I

.field protected mTitleColourMaps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/TextView$ColourMap;",
            ">;"
        }
    .end annotation
.end field

.field private mTypeface:Landroid/graphics/Typeface;

.field private mTypefaceIndex:I

.field protected mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/daliviews/views/TextView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v0, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sec/daliviews/views/ItemView;-><init>()V

    iput-object v2, p0, Lcom/sec/daliviews/views/TextView;->mText:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/daliviews/views/TextView;->mHint:Ljava/lang/String;

    iput v1, p0, Lcom/sec/daliviews/views/TextView;->mTextId:I

    iput v1, p0, Lcom/sec/daliviews/views/TextView;->mHintId:I

    iput-object v2, p0, Lcom/sec/daliviews/views/TextView;->mFontFamily:Ljava/lang/String;

    iput v0, p0, Lcom/sec/daliviews/views/TextView;->mDefaultTextColor:I

    iput v0, p0, Lcom/sec/daliviews/views/TextView;->mHintColor:I

    iput v1, p0, Lcom/sec/daliviews/views/TextView;->mTextSize:I

    iput v4, p0, Lcom/sec/daliviews/views/TextView;->mTextStyle:I

    iput v4, p0, Lcom/sec/daliviews/views/TextView;->mMaxLines:I

    iput-boolean v1, p0, Lcom/sec/daliviews/views/TextView;->mSingleLine:Z

    iput-boolean v1, p0, Lcom/sec/daliviews/views/TextView;->mScrollHorizontally:Z

    iput v1, p0, Lcom/sec/daliviews/views/TextView;->mEllipsize:I

    iput v1, p0, Lcom/sec/daliviews/views/TextView;->mTypefaceIndex:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/daliviews/views/TextView;->mGravity:I

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/sec/daliviews/views/TextView;->mShadowColor:I

    iput v3, p0, Lcom/sec/daliviews/views/TextView;->mShadowRadius:F

    iput v3, p0, Lcom/sec/daliviews/views/TextView;->mShadowDx:F

    iput v3, p0, Lcom/sec/daliviews/views/TextView;->mShadowDy:F

    iput-boolean v1, p0, Lcom/sec/daliviews/views/TextView;->mSliding:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/sec/daliviews/views/TextView;->mTextScaleX:F

    iput-object v2, p0, Lcom/sec/daliviews/views/TextView;->mTypeface:Landroid/graphics/Typeface;

    iput v1, p0, Lcom/sec/daliviews/views/TextView;->mWidth:I

    iput v1, p0, Lcom/sec/daliviews/views/TextView;->mHeight:I

    iput v1, p0, Lcom/sec/daliviews/views/TextView;->mMaxWidth:I

    iput v1, p0, Lcom/sec/daliviews/views/TextView;->mMaxHeight:I

    iput-object v2, p0, Lcom/sec/daliviews/views/TextView;->mBackground:Landroid/graphics/drawable/Drawable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/views/TextView;->mTitleColourMaps:Ljava/util/List;

    iput-boolean v1, p0, Lcom/sec/daliviews/views/TextView;->mHasCustomColour:Z

    iput-object p1, p0, Lcom/sec/daliviews/views/TextView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    const/high16 v7, -0x1000000

    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/daliviews/views/ItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v3, p0, Lcom/sec/daliviews/views/TextView;->mText:Ljava/lang/String;

    iput-object v3, p0, Lcom/sec/daliviews/views/TextView;->mHint:Ljava/lang/String;

    iput v4, p0, Lcom/sec/daliviews/views/TextView;->mTextId:I

    iput v4, p0, Lcom/sec/daliviews/views/TextView;->mHintId:I

    iput-object v3, p0, Lcom/sec/daliviews/views/TextView;->mFontFamily:Ljava/lang/String;

    const/4 v2, -0x1

    iput v2, p0, Lcom/sec/daliviews/views/TextView;->mDefaultTextColor:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/sec/daliviews/views/TextView;->mHintColor:I

    iput v4, p0, Lcom/sec/daliviews/views/TextView;->mTextSize:I

    iput v6, p0, Lcom/sec/daliviews/views/TextView;->mTextStyle:I

    iput v6, p0, Lcom/sec/daliviews/views/TextView;->mMaxLines:I

    iput-boolean v4, p0, Lcom/sec/daliviews/views/TextView;->mSingleLine:Z

    iput-boolean v4, p0, Lcom/sec/daliviews/views/TextView;->mScrollHorizontally:Z

    iput v4, p0, Lcom/sec/daliviews/views/TextView;->mEllipsize:I

    iput v4, p0, Lcom/sec/daliviews/views/TextView;->mTypefaceIndex:I

    const/4 v2, 0x3

    iput v2, p0, Lcom/sec/daliviews/views/TextView;->mGravity:I

    iput v7, p0, Lcom/sec/daliviews/views/TextView;->mShadowColor:I

    iput v5, p0, Lcom/sec/daliviews/views/TextView;->mShadowRadius:F

    iput v5, p0, Lcom/sec/daliviews/views/TextView;->mShadowDx:F

    iput v5, p0, Lcom/sec/daliviews/views/TextView;->mShadowDy:F

    iput-boolean v4, p0, Lcom/sec/daliviews/views/TextView;->mSliding:Z

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/sec/daliviews/views/TextView;->mTextScaleX:F

    iput-object v3, p0, Lcom/sec/daliviews/views/TextView;->mTypeface:Landroid/graphics/Typeface;

    iput v4, p0, Lcom/sec/daliviews/views/TextView;->mWidth:I

    iput v4, p0, Lcom/sec/daliviews/views/TextView;->mHeight:I

    iput v4, p0, Lcom/sec/daliviews/views/TextView;->mMaxWidth:I

    iput v4, p0, Lcom/sec/daliviews/views/TextView;->mMaxHeight:I

    iput-object v3, p0, Lcom/sec/daliviews/views/TextView;->mBackground:Landroid/graphics/drawable/Drawable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sec/daliviews/views/TextView;->mTitleColourMaps:Ljava/util/List;

    iput-boolean v4, p0, Lcom/sec/daliviews/views/TextView;->mHasCustomColour:Z

    iput-object p1, p0, Lcom/sec/daliviews/views/TextView;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/sec/daliviews/R$styleable;->TextView:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    sget v0, Lcom/sec/daliviews/R$styleable;->TextView_android_text:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/daliviews/views/TextView;->mText:Ljava/lang/String;

    invoke-virtual {v1, v0, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/sec/daliviews/views/TextView;->mTextId:I

    sget v2, Lcom/sec/daliviews/R$styleable;->TextView_android_textColor:I

    const v3, 0xffffff

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/sec/daliviews/views/TextView;->mDefaultTextColor:I

    sget v2, Lcom/sec/daliviews/R$styleable;->TextView_android_hint:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/daliviews/views/TextView;->mHint:Ljava/lang/String;

    sget v2, Lcom/sec/daliviews/R$styleable;->TextView_android_hint:I

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/sec/daliviews/views/TextView;->mHintId:I

    sget v2, Lcom/sec/daliviews/R$styleable;->TextView_android_textColorHint:I

    const v3, 0xffffff

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/sec/daliviews/views/TextView;->mHintColor:I

    iget v2, p0, Lcom/sec/daliviews/views/TextView;->mTextId:I

    if-nez v2, :cond_0

    iget v2, p0, Lcom/sec/daliviews/views/TextView;->mHintId:I

    if-eqz v2, :cond_1

    :cond_0
    invoke-static {p0}, Lcom/sec/daliviews/utils/ResTextViewList;->addTextView(Lcom/sec/daliviews/views/TextView;)V

    :cond_1
    sget v2, Lcom/sec/daliviews/R$styleable;->TextView_android_textSize:I

    const/4 v3, 0x6

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/sec/daliviews/views/TextView;->mTextSize:I

    sget v2, Lcom/sec/daliviews/R$styleable;->TextView_android_typeface:I

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/sec/daliviews/views/TextView;->mTypefaceIndex:I

    sget v2, Lcom/sec/daliviews/R$styleable;->TextView_android_textStyle:I

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/sec/daliviews/views/TextView;->mTextStyle:I

    sget v2, Lcom/sec/daliviews/R$styleable;->TextView_android_fontFamily:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/daliviews/views/TextView;->mFontFamily:Ljava/lang/String;

    sget v2, Lcom/sec/daliviews/R$styleable;->TextView_android_maxLines:I

    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/sec/daliviews/views/TextView;->mMaxLines:I

    sget v2, Lcom/sec/daliviews/R$styleable;->TextView_android_gravity:I

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/sec/daliviews/views/TextView;->mGravity:I

    sget v2, Lcom/sec/daliviews/R$styleable;->TextView_android_shadowColor:I

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/sec/daliviews/views/TextView;->mShadowColor:I

    sget v2, Lcom/sec/daliviews/R$styleable;->TextView_android_shadowRadius:I

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lcom/sec/daliviews/views/TextView;->mShadowRadius:F

    sget v2, Lcom/sec/daliviews/R$styleable;->TextView_android_shadowDx:I

    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lcom/sec/daliviews/views/TextView;->mShadowDx:F

    sget v2, Lcom/sec/daliviews/R$styleable;->TextView_android_shadowDy:I

    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lcom/sec/daliviews/views/TextView;->mShadowDy:F

    sget v2, Lcom/sec/daliviews/R$styleable;->TextView_android_ellipsize:I

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/sec/daliviews/views/TextView;->mEllipsize:I

    sget v2, Lcom/sec/daliviews/R$styleable;->TextView_android_scrollHorizontally:I

    iget-boolean v3, p0, Lcom/sec/daliviews/views/TextView;->mScrollHorizontally:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/daliviews/views/TextView;->mScrollHorizontally:Z

    sget v2, Lcom/sec/daliviews/R$styleable;->TextView_android_singleLine:I

    iget-boolean v3, p0, Lcom/sec/daliviews/views/TextView;->mSingleLine:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/daliviews/views/TextView;->mSingleLine:Z

    sget v2, Lcom/sec/daliviews/R$styleable;->TextView_android_textScaleX:I

    iget v3, p0, Lcom/sec/daliviews/views/TextView;->mTextScaleX:F

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lcom/sec/daliviews/views/TextView;->mTextScaleX:F

    sget v2, Lcom/sec/daliviews/R$styleable;->TextView_android_maxWidth:I

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/sec/daliviews/views/TextView;->mMaxWidth:I

    sget v2, Lcom/sec/daliviews/R$styleable;->TextView_android_maxHeight:I

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/sec/daliviews/views/TextView;->mMaxHeight:I

    sget v2, Lcom/sec/daliviews/R$styleable;->TextView_invalidate:I

    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/TextView;->invalidate()V

    :cond_2
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private applyColour(Landroid/widget/TextView;)V
    .locals 14

    iget-object v11, p0, Lcom/sec/daliviews/views/TextView;->mTitleColourMaps:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_0

    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/sec/daliviews/views/TextView;->mHasCustomColour:Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v8, Landroid/text/SpannableString;

    invoke-direct {v8, v10}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iget-object v11, p0, Lcom/sec/daliviews/views/TextView;->mTitleColourMaps:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/TextView$ColourMap;

    invoke-virtual {v1}, Lcom/sec/daliviews/views/TextView$ColourMap;->getStartIndex()I

    move-result v9

    invoke-virtual {v1}, Lcom/sec/daliviews/views/TextView$ColourMap;->getLength()I

    move-result v6

    invoke-virtual {v1}, Lcom/sec/daliviews/views/TextView$ColourMap;->getColour()I

    move-result v0

    add-int v2, v9, v6

    if-ltz v9, :cond_1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-gt v9, v11, :cond_1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-gt v2, v11, :cond_1

    const/4 v5, -0x1

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v10, v12, v13}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v10, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toCharArray()[C

    move-result-object v13

    invoke-direct {p0, v11, v12, v13}, Lcom/sec/daliviews/views/TextView;->getPrefixCharForIndian(Landroid/text/TextPaint;Ljava/lang/CharSequence;[C)[C

    move-result-object v4

    if-eqz v4, :cond_2

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v4}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6

    add-int v2, v5, v6

    :goto_2
    if-ltz v9, :cond_1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-gt v9, v11, :cond_1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-gt v2, v11, :cond_1

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/sec/daliviews/views/TextView;->mHasCustomColour:Z

    new-instance v11, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v11, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int v12, v5, v6

    const/4 v13, 0x0

    invoke-virtual {v8, v11, v5, v12, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    :cond_2
    move v5, v9

    goto :goto_2

    :cond_3
    invoke-virtual {p1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private getPrefixCharForIndian(Landroid/text/TextPaint;Ljava/lang/CharSequence;[C)[C
    .locals 11

    const/4 v6, 0x0

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v1, "android.text.TextUtils"

    const-string v3, "getPrefixCharForIndian"

    new-array v4, v10, [Ljava/lang/Class;

    const-class v5, Landroid/text/TextPaint;

    aput-object v5, v4, v7

    const-class v5, Ljava/lang/CharSequence;

    aput-object v5, v4, v8

    const-class v5, [C

    aput-object v5, v4, v9

    new-array v0, v10, [Ljava/lang/Object;

    aput-object p1, v0, v7

    aput-object p2, v0, v8

    aput-object p3, v0, v9

    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [C

    check-cast v5, [C
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v5

    :catch_0
    move-exception v2

    move-object v5, v6

    goto :goto_0
.end method

.method private native setBitmapText(JLandroid/graphics/Bitmap;)V
.end method

.method private native setBitmapTextSlide(JLandroid/graphics/Bitmap;F)V
.end method

.method private native setCurvedBorder(JFF)V
.end method

.method private native setFishEyeAperture(JF)V
.end method

.method private setLayoutParamsForAndroidTextView(Landroid/widget/TextView;II)V
    .locals 1

    if-nez p2, :cond_0

    const/4 p2, -0x2

    :cond_0
    if-nez p3, :cond_1

    const/4 p3, -0x2

    :cond_1
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, p2, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private native setPremultiplied(JZ)V
.end method


# virtual methods
.method public addTitleColourMap(Lcom/sec/daliviews/views/TextView$ColourMap;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/views/TextView;->mTitleColourMaps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTitleColourMaps(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/TextView$ColourMap;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/daliviews/views/TextView;->mTitleColourMaps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public applyTextStyle(Landroid/widget/TextView;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, -0x2

    iget v2, p0, Lcom/sec/daliviews/views/TextView;->mShadowRadius:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    iget v2, p0, Lcom/sec/daliviews/views/TextView;->mShadowRadius:F

    iget v3, p0, Lcom/sec/daliviews/views/TextView;->mShadowDx:F

    iget v4, p0, Lcom/sec/daliviews/views/TextView;->mShadowDy:F

    iget v5, p0, Lcom/sec/daliviews/views/TextView;->mShadowColor:I

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :cond_0
    iget v2, p0, Lcom/sec/daliviews/views/TextView;->mPaddingLeft:I

    iget v3, p0, Lcom/sec/daliviews/views/TextView;->mPaddingTop:I

    iget v4, p0, Lcom/sec/daliviews/views/TextView;->mPaddingRight:I

    iget v5, p0, Lcom/sec/daliviews/views/TextView;->mPaddingBottom:I

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    iget v2, p0, Lcom/sec/daliviews/views/TextView;->mTextScaleX:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/sec/daliviews/views/TextView;->mTextScaleX:F

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextScaleX(F)V

    :cond_1
    iget-object v2, p0, Lcom/sec/daliviews/views/TextView;->mText:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/daliviews/views/TextView;->mText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/sec/daliviews/views/TextView;->mText:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/daliviews/views/TextView;->applyColour(Landroid/widget/TextView;)V

    invoke-virtual {p0}, Lcom/sec/daliviews/views/TextView;->getLayoutParams()Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->getLayoutWidth()I

    move-result v2

    if-ne v2, v6, :cond_3

    invoke-virtual {p0}, Lcom/sec/daliviews/views/TextView;->getParentView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v1

    if-eqz v1, :cond_3

    iget v2, p0, Lcom/sec/daliviews/views/TextView;->mMaxWidth:I

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lcom/sec/daliviews/views/NativeViewBase;->getLayoutParams()Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->getLayoutWidth()I

    move-result v2

    if-eq v2, v6, :cond_3

    invoke-virtual {v1}, Lcom/sec/daliviews/views/NativeViewBase;->getWidth()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_3
    iget-object v2, p0, Lcom/sec/daliviews/views/TextView;->mHint:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/daliviews/views/TextView;->mHint:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    iget-object v2, p0, Lcom/sec/daliviews/views/TextView;->mHint:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    iget v2, p0, Lcom/sec/daliviews/views/TextView;->mHintColor:I

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setHintTextColor(I)V

    :cond_4
    iget-object v2, p0, Lcom/sec/daliviews/views/TextView;->mTypeface:Landroid/graphics/Typeface;

    if-nez v2, :cond_5

    iget v2, p0, Lcom/sec/daliviews/views/TextView;->mTypefaceIndex:I

    const/4 v3, -0x1

    if-le v2, v3, :cond_5

    iget v2, p0, Lcom/sec/daliviews/views/TextView;->mTypefaceIndex:I

    packed-switch v2, :pswitch_data_0

    :cond_5
    :goto_0
    iget v2, p0, Lcom/sec/daliviews/views/TextView;->mTextStyle:I

    if-lez v2, :cond_c

    iget-object v2, p0, Lcom/sec/daliviews/views/TextView;->mTypeface:Landroid/graphics/Typeface;

    if-nez v2, :cond_b

    iget v2, p0, Lcom/sec/daliviews/views/TextView;->mTextStyle:I

    invoke-static {v2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/daliviews/views/TextView;->mTypeface:Landroid/graphics/Typeface;

    :goto_1
    iget-object v2, p0, Lcom/sec/daliviews/views/TextView;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_2
    iget v2, p0, Lcom/sec/daliviews/views/TextView;->mDefaultTextColor:I

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/sec/daliviews/views/TextView;->mDefaultTextColor:I

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_6
    iget v2, p0, Lcom/sec/daliviews/views/TextView;->mTextSize:I

    if-lez v2, :cond_7

    const/4 v2, 0x0

    iget v3, p0, Lcom/sec/daliviews/views/TextView;->mTextSize:I

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_7
    iget v2, p0, Lcom/sec/daliviews/views/TextView;->mGravity:I

    if-lez v2, :cond_8

    iget v2, p0, Lcom/sec/daliviews/views/TextView;->mGravity:I

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setGravity(I)V

    :cond_8
    iget-object v2, p0, Lcom/sec/daliviews/views/TextView;->mTypeface:Landroid/graphics/Typeface;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/sec/daliviews/views/TextView;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_9
    iget-boolean v2, p0, Lcom/sec/daliviews/views/TextView;->mSingleLine:Z

    if-eqz v2, :cond_d

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    :cond_a
    :goto_3
    iget v2, p0, Lcom/sec/daliviews/views/TextView;->mEllipsize:I

    packed-switch v2, :pswitch_data_1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :goto_4
    return-void

    :pswitch_0
    sget-object v2, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    iput-object v2, p0, Lcom/sec/daliviews/views/TextView;->mTypeface:Landroid/graphics/Typeface;

    goto :goto_0

    :pswitch_1
    sget-object v2, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    iput-object v2, p0, Lcom/sec/daliviews/views/TextView;->mTypeface:Landroid/graphics/Typeface;

    goto :goto_0

    :pswitch_2
    sget-object v2, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    iput-object v2, p0, Lcom/sec/daliviews/views/TextView;->mTypeface:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_b
    iget-object v2, p0, Lcom/sec/daliviews/views/TextView;->mTypeface:Landroid/graphics/Typeface;

    iget v3, p0, Lcom/sec/daliviews/views/TextView;->mTextStyle:I

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/daliviews/views/TextView;->mTypeface:Landroid/graphics/Typeface;

    goto :goto_1

    :cond_c
    iget-object v2, p0, Lcom/sec/daliviews/views/TextView;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_2

    :cond_d
    iget v2, p0, Lcom/sec/daliviews/views/TextView;->mMaxLines:I

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    iget v2, p0, Lcom/sec/daliviews/views/TextView;->mMaxLines:I

    if-ne v2, v7, :cond_a

    iget-boolean v2, p0, Lcom/sec/daliviews/views/TextView;->mScrollHorizontally:Z

    if-eqz v2, :cond_a

    iget-boolean v2, p0, Lcom/sec/daliviews/views/TextView;->mScrollHorizontally:Z

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    goto :goto_3

    :pswitch_3
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :pswitch_4
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_4

    :pswitch_5
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_4

    :pswitch_6
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public applyTitleColourMap(Lcom/sec/daliviews/views/TextView$ColourMap;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/views/TextView;->mTitleColourMaps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/sec/daliviews/views/TextView;->invalidate()V

    return-void
.end method

.method public applyTitleColourMaps(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/TextView$ColourMap;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/daliviews/views/TextView;->mTitleColourMaps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/sec/daliviews/views/TextView;->invalidate()V

    return-void
.end method

.method public calculateRenderedSizeInPixels(I)[I
    .locals 8

    const/high16 v7, -0x80000000

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x2

    new-array v3, v4, [I

    new-instance v1, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sec/daliviews/views/TextView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/sec/daliviews/views/TextView;->mText:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v4, p0, Lcom/sec/daliviews/views/TextView;->mTextSize:I

    int-to-float v4, v4

    invoke-virtual {v1, v6, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {p1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->measure(II)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    aput v4, v3, v5

    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    aget v4, v3, v5

    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    aget v5, v3, v5

    invoke-direct {p0, v1, v4, v5}, Lcom/sec/daliviews/views/TextView;->setLayoutParamsForAndroidTextView(Landroid/widget/TextView;II)V

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->measure(II)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    aput v4, v3, v6

    return-object v3
.end method

.method public clearTitleColour()V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/sec/daliviews/views/TextView;->mHasCustomColour:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/daliviews/views/TextView$ColourMap;

    iget-object v1, p0, Lcom/sec/daliviews/views/TextView;->mText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lcom/sec/daliviews/views/TextView;->mDefaultTextColor:I

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/daliviews/views/TextView$ColourMap;-><init>(III)V

    invoke-virtual {p0, v0}, Lcom/sec/daliviews/views/TextView;->applyTitleColourMap(Lcom/sec/daliviews/views/TextView$ColourMap;)V

    iput-boolean v3, p0, Lcom/sec/daliviews/views/TextView;->mHasCustomColour:Z

    :cond_0
    return-void
.end method

.method public clone()Lcom/sec/daliviews/views/NativeViewBase;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/sec/daliviews/views/ItemView;->clone()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/daliviews/views/TextView;->clone()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    return-object v0
.end method

.method public copyTextParams(Lcom/sec/daliviews/views/TextView;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sec/daliviews/views/TextView;->hasSameParams(Lcom/sec/daliviews/views/TextView;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/daliviews/views/TextView;->getDefaultTextColor()I

    move-result v0

    const v1, 0xffffff

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/sec/daliviews/views/TextView;->getDefaultTextColor()I

    move-result v0

    iput v0, p0, Lcom/sec/daliviews/views/TextView;->mDefaultTextColor:I

    :cond_1
    invoke-virtual {p1}, Lcom/sec/daliviews/views/TextView;->getHint()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/daliviews/views/TextView;->mHint:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/daliviews/views/TextView;->getHintTextColor()I

    move-result v0

    iput v0, p0, Lcom/sec/daliviews/views/TextView;->mHintColor:I

    invoke-virtual {p1}, Lcom/sec/daliviews/views/TextView;->getTextSize()I

    move-result v0

    iput v0, p0, Lcom/sec/daliviews/views/TextView;->mTextSize:I

    invoke-virtual {p1}, Lcom/sec/daliviews/views/TextView;->getTypefaceIndex()I

    move-result v0

    iput v0, p0, Lcom/sec/daliviews/views/TextView;->mTypefaceIndex:I

    invoke-virtual {p1}, Lcom/sec/daliviews/views/TextView;->getTextStyle()I

    move-result v0

    iput v0, p0, Lcom/sec/daliviews/views/TextView;->mTextStyle:I

    invoke-virtual {p1}, Lcom/sec/daliviews/views/TextView;->getFontFamily()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/daliviews/views/TextView;->mFontFamily:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/daliviews/views/TextView;->getMaxLines()I

    move-result v0

    iput v0, p0, Lcom/sec/daliviews/views/TextView;->mMaxLines:I

    invoke-virtual {p1}, Lcom/sec/daliviews/views/TextView;->getGravity()I

    move-result v0

    iput v0, p0, Lcom/sec/daliviews/views/TextView;->mGravity:I

    invoke-virtual {p1}, Lcom/sec/daliviews/views/TextView;->getShadowColor()I

    move-result v0

    iput v0, p0, Lcom/sec/daliviews/views/TextView;->mShadowColor:I

    invoke-virtual {p1}, Lcom/sec/daliviews/views/TextView;->getShadowRadius()F

    move-result v0

    iput v0, p0, Lcom/sec/daliviews/views/TextView;->mShadowRadius:F

    invoke-virtual {p1}, Lcom/sec/daliviews/views/TextView;->getShadowDx()F

    move-result v0

    iput v0, p0, Lcom/sec/daliviews/views/TextView;->mShadowDx:F

    invoke-virtual {p1}, Lcom/sec/daliviews/views/TextView;->getShadowDy()F

    move-result v0

    iput v0, p0, Lcom/sec/daliviews/views/TextView;->mShadowDy:F

    invoke-virtual {p1}, Lcom/sec/daliviews/views/TextView;->getEllipsize()I

    move-result v0

    iput v0, p0, Lcom/sec/daliviews/views/TextView;->mEllipsize:I

    invoke-virtual {p1}, Lcom/sec/daliviews/views/TextView;->isScrollHorizontally()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/daliviews/views/TextView;->mScrollHorizontally:Z

    iget-boolean v0, p1, Lcom/sec/daliviews/views/TextView;->mSingleLine:Z

    iput-boolean v0, p0, Lcom/sec/daliviews/views/TextView;->mSingleLine:Z

    invoke-virtual {p1}, Lcom/sec/daliviews/views/TextView;->getBackgroundImage()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/daliviews/views/TextView;->mBackground:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected native create()J
.end method

.method protected createAndroidTextView(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;II)Landroid/widget/TextView;
    .locals 2

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/daliviews/views/TextView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/sec/daliviews/views/TextView;->applyTextStyle(Landroid/widget/TextView;)V

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/sec/daliviews/views/TextView;->layoutTextView(Landroid/widget/TextView;Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;II)V

    iget-object v1, p0, Lcom/sec/daliviews/views/TextView;->mTitleColourMaps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/high16 v1, 0x100000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setDrawingCacheQuality(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->buildDrawingCache(Z)V

    return-object v0
.end method

.method protected createTextView()Landroid/widget/TextView;
    .locals 9

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/sec/daliviews/views/TextView;->getLayoutParams()Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    move-result-object v3

    iget-object v6, p0, Lcom/sec/daliviews/views/TextView;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_0

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    iget-object v6, p0, Lcom/sec/daliviews/views/TextView;->mText:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sec/daliviews/views/TextView;->mText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_3

    :cond_2
    const-string v6, ""

    iput-object v6, p0, Lcom/sec/daliviews/views/TextView;->mText:Ljava/lang/String;

    :cond_3
    iget-object v6, p0, Lcom/sec/daliviews/views/TextView;->mHint:Ljava/lang/String;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/sec/daliviews/views/TextView;->mHint:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_5

    :cond_4
    const-string v6, ""

    iput-object v6, p0, Lcom/sec/daliviews/views/TextView;->mHint:Ljava/lang/String;

    :cond_5
    invoke-virtual {v3}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->getLayoutWidth()I

    move-result v2

    iget v6, p0, Lcom/sec/daliviews/views/TextView;->mWidth:I

    if-nez v6, :cond_6

    if-lez v2, :cond_6

    iput v2, p0, Lcom/sec/daliviews/views/TextView;->mWidth:I

    :cond_6
    invoke-virtual {v3}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->getLayoutHeight()I

    move-result v1

    iget v6, p0, Lcom/sec/daliviews/views/TextView;->mHeight:I

    if-nez v6, :cond_7

    if-lez v1, :cond_7

    iput v1, p0, Lcom/sec/daliviews/views/TextView;->mHeight:I

    :cond_7
    invoke-virtual {p0}, Lcom/sec/daliviews/views/TextView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/sec/daliviews/views/TextView;->getHeight()I

    move-result v0

    invoke-virtual {v3}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->getLayoutWidth()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/sec/daliviews/views/TextView;->isValidDimen(II)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v3}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->getLayoutHeight()I

    move-result v6

    invoke-virtual {p0, v0, v6}, Lcom/sec/daliviews/views/TextView;->isValidDimen(II)Z

    move-result v6

    if-nez v6, :cond_9

    :cond_8
    sget-object v6, Lcom/sec/daliviews/views/TextView;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/sec/daliviews/views/TextView;->mText:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " invalid size : view size = ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "), layout size = ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->getLayoutWidth()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->getLayoutHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0, v3, v5, v0}, Lcom/sec/daliviews/views/TextView;->createAndroidTextView(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;II)Landroid/widget/TextView;

    move-result-object v4

    goto/16 :goto_0
.end method

.method public getAccessibilityText()Ljava/lang/String;
    .locals 3

    const-string v1, ""

    invoke-virtual {p0}, Lcom/sec/daliviews/views/TextView;->getContentDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v1, v0

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/sec/daliviews/views/TextView;->mText:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, p0, Lcom/sec/daliviews/views/TextView;->mText:Ljava/lang/String;

    goto :goto_0
.end method

.method public getBackgroundImage()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/views/TextView;->mBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDefaultTextColor()I
    .locals 1

    iget v0, p0, Lcom/sec/daliviews/views/TextView;->mDefaultTextColor:I

    return v0
.end method

.method public getEllipsize()I
    .locals 1

    iget v0, p0, Lcom/sec/daliviews/views/TextView;->mEllipsize:I

    return v0
.end method

.method public getFontFamily()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/views/TextView;->mFontFamily:Ljava/lang/String;

    return-object v0
.end method

.method public getGravity()I
    .locals 1

    iget v0, p0, Lcom/sec/daliviews/views/TextView;->mGravity:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/sec/daliviews/views/TextView;->mHeight:I

    return v0
.end method

.method public getHint()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/views/TextView;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getHintTextColor()I
    .locals 1

    iget v0, p0, Lcom/sec/daliviews/views/TextView;->mHintColor:I

    return v0
.end method

.method public getMaxLines()I
    .locals 1

    iget v0, p0, Lcom/sec/daliviews/views/TextView;->mMaxLines:I

    return v0
.end method

.method public getNodeInfo(Landroid/util/SparseIntArray;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/daliviews/views/ItemView;->getNodeInfo(Landroid/util/SparseIntArray;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    invoke-virtual {p0}, Lcom/sec/daliviews/views/TextView;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getShadowColor()I
    .locals 1

    iget v0, p0, Lcom/sec/daliviews/views/TextView;->mShadowColor:I

    return v0
.end method

.method public getShadowDx()F
    .locals 1

    iget v0, p0, Lcom/sec/daliviews/views/TextView;->mShadowDx:F

    return v0
.end method

.method public getShadowDy()F
    .locals 1

    iget v0, p0, Lcom/sec/daliviews/views/TextView;->mShadowDy:F

    return v0
.end method

.method public getShadowRadius()F
    .locals 1

    iget v0, p0, Lcom/sec/daliviews/views/TextView;->mShadowRadius:F

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/views/TextView;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getTextSize()I
    .locals 1

    iget v0, p0, Lcom/sec/daliviews/views/TextView;->mTextSize:I

    return v0
.end method

.method public getTextStyle()I
    .locals 1

    iget v0, p0, Lcom/sec/daliviews/views/TextView;->mTextStyle:I

    return v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/views/TextView;->mTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getTypefaceIndex()I
    .locals 1

    iget v0, p0, Lcom/sec/daliviews/views/TextView;->mTypefaceIndex:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/sec/daliviews/views/TextView;->mWidth:I

    return v0
.end method

.method protected hasSameParams(Lcom/sec/daliviews/views/TextView;)Z
    .locals 2

    iget v0, p0, Lcom/sec/daliviews/views/TextView;->mDefaultTextColor:I

    invoke-virtual {p1}, Lcom/sec/daliviews/views/TextView;->getDefaultTextColor()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/daliviews/views/TextView;->mHint:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/daliviews/views/TextView;->getHint()Ljava/lang/String;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sec/daliviews/views/TextView;->mHintColor:I

    invoke-virtual {p1}, Lcom/sec/daliviews/views/TextView;->getHintTextColor()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sec/daliviews/views/TextView;->mTextSize:I

    invoke-virtual {p1}, Lcom/sec/daliviews/views/TextView;->getTextSize()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sec/daliviews/views/TextView;->mTypefaceIndex:I

    invoke-virtual {p1}, Lcom/sec/daliviews/views/TextView;->getTypefaceIndex()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sec/daliviews/views/TextView;->mTextStyle:I

    invoke-virtual {p1}, Lcom/sec/daliviews/views/TextView;->getTextStyle()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/daliviews/views/TextView;->mFontFamily:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/daliviews/views/TextView;->getFontFamily()Ljava/lang/String;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sec/daliviews/views/TextView;->mMaxLines:I

    invoke-virtual {p1}, Lcom/sec/daliviews/views/TextView;->getMaxLines()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sec/daliviews/views/TextView;->mGravity:I

    invoke-virtual {p1}, Lcom/sec/daliviews/views/TextView;->getGravity()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sec/daliviews/views/TextView;->mShadowColor:I

    invoke-virtual {p1}, Lcom/sec/daliviews/views/TextView;->getShadowColor()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sec/daliviews/views/TextView;->mShadowRadius:F

    invoke-virtual {p1}, Lcom/sec/daliviews/views/TextView;->getShadowRadius()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/daliviews/views/TextView;->mShadowDx:F

    invoke-virtual {p1}, Lcom/sec/daliviews/views/TextView;->getShadowDx()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/daliviews/views/TextView;->mShadowDy:F

    invoke-virtual {p1}, Lcom/sec/daliviews/views/TextView;->getShadowDy()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/daliviews/views/TextView;->mEllipsize:I

    invoke-virtual {p1}, Lcom/sec/daliviews/views/TextView;->getEllipsize()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/sec/daliviews/views/TextView;->mScrollHorizontally:Z

    invoke-virtual {p1}, Lcom/sec/daliviews/views/TextView;->isScrollHorizontally()Z

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public invalidate()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/daliviews/views/TextView;->createTextView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/daliviews/views/TextView;->invalidate(Landroid/widget/TextView;)V

    :cond_0
    return-void
.end method

.method protected invalidate(Landroid/widget/TextView;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v3, -0x2

    iget-boolean v2, p0, Lcom/sec/daliviews/views/TextView;->mSliding:Z

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setDrawingCacheEnabled(Z)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/sec/daliviews/views/TextView;->getLayoutParams()Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/daliviews/views/TextView;->isValidPeer()Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/sec/daliviews/views/TextView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Warning "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/daliviews/views/TextView;->mText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not have peer"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->getLayoutWidth()I

    move-result v2

    if-eq v2, v3, :cond_2

    invoke-virtual {v1}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->getLayoutHeight()I

    move-result v2

    if-ne v2, v3, :cond_3

    :cond_2
    sget-object v2, Lcom/sec/daliviews/views/TextView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/daliviews/views/TextView;->mText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " view size changed from ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/daliviews/views/TextView;->mWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/daliviews/views/TextView;->mHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") to ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), bitmap size is ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    iput v2, p0, Lcom/sec/daliviews/views/TextView;->mWidth:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    iput v2, p0, Lcom/sec/daliviews/views/TextView;->mHeight:I

    :cond_3
    invoke-virtual {p0}, Lcom/sec/daliviews/views/TextView;->getmNPeer()J

    move-result-wide v2

    invoke-direct {p0, v2, v3, v0}, Lcom/sec/daliviews/views/TextView;->setBitmapText(JLandroid/graphics/Bitmap;)V

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isPremultiplied()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, v5}, Lcom/sec/daliviews/views/TextView;->setPremultiplied(Z)V

    :cond_4
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5
    :goto_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setDrawingCacheEnabled(Z)V

    goto/16 :goto_0

    :cond_6
    sget-object v2, Lcom/sec/daliviews/views/TextView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalidate: getDrawingCache returned null. isDrawingCacheEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/widget/TextView;->isDrawingCacheEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public isCloneable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isScrollHorizontally()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/daliviews/views/TextView;->mScrollHorizontally:Z

    return v0
.end method

.method public isSingleLine()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/daliviews/views/TextView;->mSingleLine:Z

    return v0
.end method

.method protected isValidDimen(II)Z
    .locals 1

    if-gtz p1, :cond_0

    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected layoutTextView(Landroid/widget/TextView;Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;II)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, -0x2

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->getLayoutWidth()I

    move-result v5

    if-ne v5, v6, :cond_5

    :cond_0
    const/4 p3, 0x0

    const/4 v4, 0x0

    const/4 v2, -0x2

    :goto_0
    if-eqz p4, :cond_1

    invoke-virtual {p2}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->getLayoutHeight()I

    move-result v5

    if-ne v5, v6, :cond_6

    :cond_1
    const/4 p4, 0x0

    const/4 v0, 0x0

    const/4 v1, -0x2

    :goto_1
    const/4 p2, 0x0

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v2, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {p3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {p4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {p1, v5, v6}, Landroid/widget/TextView;->measure(II)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {p1, v7, v7, v5, v6}, Landroid/widget/TextView;->layout(IIII)V

    iget v5, p0, Lcom/sec/daliviews/views/TextView;->mMaxLines:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    iget-boolean v5, p0, Lcom/sec/daliviews/views/TextView;->mScrollHorizontally:Z

    if-nez v5, :cond_3

    :cond_2
    iget-boolean v5, p0, Lcom/sec/daliviews/views/TextView;->mSingleLine:Z

    if-eqz v5, :cond_4

    :cond_3
    invoke-virtual {p1}, Landroid/widget/TextView;->onPreDraw()Z

    :cond_4
    iget-object v5, p0, Lcom/sec/daliviews/views/TextView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_7

    invoke-virtual {p0}, Lcom/sec/daliviews/views/TextView;->getText()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {p0}, Lcom/sec/daliviews/views/TextView;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/sec/daliviews/views/TextView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    return-void

    :cond_5
    const/high16 v4, 0x40000000    # 2.0f

    move v2, p3

    goto :goto_0

    :cond_6
    const/high16 v0, 0x40000000    # 2.0f

    move v1, p4

    goto :goto_1

    :cond_7
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/daliviews/views/TextView;->getContentDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/daliviews/views/TextView;->mText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/daliviews/views/TextView;->mText:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected onSizeChanged(II)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/sec/daliviews/views/ItemView;->onSizeChanged(II)V

    iget v0, p0, Lcom/sec/daliviews/views/TextView;->mWidth:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Lcom/sec/daliviews/views/TextView;->mHeight:I

    if-ne v0, p2, :cond_1

    sget-object v0, Lcom/sec/daliviews/views/TextView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/daliviews/views/TextView;->mText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " width ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") and height("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") are the same so, no update."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/sec/daliviews/views/TextView;->mWidth:I

    iput p2, p0, Lcom/sec/daliviews/views/TextView;->mHeight:I

    invoke-virtual {p0}, Lcom/sec/daliviews/views/TextView;->getLayoutParams()Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->getLayoutWidth()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/daliviews/views/TextView;->isValidDimen(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/daliviews/views/TextView;->getLayoutParams()Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->getLayoutHeight()I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/sec/daliviews/views/TextView;->isValidDimen(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/daliviews/views/TextView;->invalidate()V

    goto :goto_0
.end method

.method public refreshResText()V
    .locals 2

    iget v0, p0, Lcom/sec/daliviews/views/TextView;->mTextId:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/daliviews/views/TextView;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/daliviews/views/TextView;->mTextId:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/daliviews/views/TextView;->mText:Ljava/lang/String;

    :cond_0
    iget v0, p0, Lcom/sec/daliviews/views/TextView;->mHintId:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/daliviews/views/TextView;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/daliviews/views/TextView;->mHintId:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/daliviews/views/TextView;->mHint:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0}, Lcom/sec/daliviews/views/TextView;->invalidate()V

    return-void
.end method

.method public removeTitleColourMap(Lcom/sec/daliviews/views/TextView$ColourMap;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/views/TextView;->mTitleColourMaps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeTitleColourMaps(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/TextView$ColourMap;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/daliviews/views/TextView;->mTitleColourMaps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/daliviews/views/TextView;->mBackground:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setCurvedBorder(FF)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/TextView;->isValidPeer()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/daliviews/views/TextView;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/sec/daliviews/views/TextView;->setCurvedBorder(JFF)V

    :cond_0
    return-void
.end method

.method public setDefaultTextColor(I)V
    .locals 0

    iput p1, p0, Lcom/sec/daliviews/views/TextView;->mDefaultTextColor:I

    return-void
.end method

.method public setEllipsize(I)V
    .locals 0

    iput p1, p0, Lcom/sec/daliviews/views/TextView;->mEllipsize:I

    return-void
.end method

.method public setFishEyeAperture(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/TextView;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/TextView;->setFishEyeAperture(JF)V

    return-void
.end method

.method public setFontFamily(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/daliviews/views/TextView;->mFontFamily:Ljava/lang/String;

    return-void
.end method

.method public setGravity(I)V
    .locals 0

    iput p1, p0, Lcom/sec/daliviews/views/TextView;->mGravity:I

    return-void
.end method

.method public setHint(I)V
    .locals 1

    iput p1, p0, Lcom/sec/daliviews/views/TextView;->mHintId:I

    iget v0, p0, Lcom/sec/daliviews/views/TextView;->mHintId:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/daliviews/views/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/daliviews/views/TextView;->mHint:Ljava/lang/String;

    invoke-static {p0}, Lcom/sec/daliviews/utils/ResTextViewList;->addTextView(Lcom/sec/daliviews/views/TextView;)V

    :cond_0
    return-void
.end method

.method public setHint(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/daliviews/views/TextView;->mHint:Ljava/lang/String;

    return-void
.end method

.method public setHintTextColor(I)V
    .locals 0

    iput p1, p0, Lcom/sec/daliviews/views/TextView;->mHintColor:I

    return-void
.end method

.method public setMaxLines(I)V
    .locals 1

    iput p1, p0, Lcom/sec/daliviews/views/TextView;->mMaxLines:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/daliviews/views/TextView;->mSingleLine:Z

    return-void
.end method

.method public setPremultiplied(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/TextView;->isValidPeer()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/daliviews/views/TextView;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/TextView;->setPremultiplied(JZ)V

    :cond_0
    return-void
.end method

.method public setResourceIdText(I)Z
    .locals 2

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/daliviews/views/TextView;->mTextId:I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/daliviews/views/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/daliviews/views/TextView;->mText:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/daliviews/views/TextView;->mText:Ljava/lang/String;

    if-eqz v1, :cond_0

    iput p1, p0, Lcom/sec/daliviews/views/TextView;->mTextId:I

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/sec/daliviews/views/TextView;->invalidate()V

    invoke-static {p0}, Lcom/sec/daliviews/utils/ResTextViewList;->addTextView(Lcom/sec/daliviews/views/TextView;)V

    :cond_0
    return v0
.end method

.method public setShadowRadius(F)V
    .locals 0

    iput p1, p0, Lcom/sec/daliviews/views/TextView;->mShadowRadius:F

    return-void
.end method

.method public setSingleLine()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/daliviews/views/TextView;->setSingleLine(Z)V

    return-void
.end method

.method public setSingleLine(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/daliviews/views/TextView;->mSingleLine:Z

    return-void
.end method

.method public setText(I)V
    .locals 1

    iput p1, p0, Lcom/sec/daliviews/views/TextView;->mTextId:I

    iget v0, p0, Lcom/sec/daliviews/views/TextView;->mTextId:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/daliviews/views/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/daliviews/views/TextView;->mText:Ljava/lang/String;

    invoke-static {p0}, Lcom/sec/daliviews/utils/ResTextViewList;->addTextView(Lcom/sec/daliviews/views/TextView;)V

    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/daliviews/views/TextView;->mText:Ljava/lang/String;

    return-void
.end method

.method public setTextSize(I)V
    .locals 0

    iput p1, p0, Lcom/sec/daliviews/views/TextView;->mTextSize:I

    return-void
.end method

.method public setTextStyle(I)V
    .locals 0

    iput p1, p0, Lcom/sec/daliviews/views/TextView;->mTextStyle:I

    return-void
.end method

.method public setTypeFace(I)V
    .locals 1

    iput p1, p0, Lcom/sec/daliviews/views/TextView;->mTypefaceIndex:I

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Lcom/sec/daliviews/views/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    :pswitch_1
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Lcom/sec/daliviews/views/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    :pswitch_2
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Lcom/sec/daliviews/views/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    :pswitch_3
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Lcom/sec/daliviews/views/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/daliviews/views/TextView;->mTypeface:Landroid/graphics/Typeface;

    return-void
.end method

.method public slideInText(Ljava/lang/String;F)V
    .locals 7

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v4, -0x2

    iput-boolean v3, p0, Lcom/sec/daliviews/views/TextView;->mSliding:Z

    iput-object p1, p0, Lcom/sec/daliviews/views/TextView;->mText:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/daliviews/views/TextView;->createTextView()Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setDrawingCacheEnabled(Z)V

    invoke-virtual {v2}, Landroid/widget/TextView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/TextView;->getLayoutParams()Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->getLayoutWidth()I

    move-result v3

    if-eq v3, v4, :cond_0

    invoke-virtual {v1}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->getLayoutHeight()I

    move-result v3

    if-ne v3, v4, :cond_1

    :cond_0
    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/sec/daliviews/views/TextView;->setSize(II)V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/daliviews/views/TextView;->getmNPeer()J

    move-result-wide v4

    invoke-direct {p0, v4, v5, v0, p2}, Lcom/sec/daliviews/views/TextView;->setBitmapTextSlide(JLandroid/graphics/Bitmap;F)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setDrawingCacheEnabled(Z)V

    :cond_3
    iput-boolean v6, p0, Lcom/sec/daliviews/views/TextView;->mSliding:Z

    return-void
.end method

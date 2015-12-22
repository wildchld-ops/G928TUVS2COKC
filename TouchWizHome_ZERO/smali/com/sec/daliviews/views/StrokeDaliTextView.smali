.class public Lcom/sec/daliviews/views/StrokeDaliTextView;
.super Lcom/sec/daliviews/views/TextView;
.source "StrokeDaliTextView.java"


# static fields
.field private static final DEFAULT_STROKE:Z = false

.field private static final DEFAULT_STROKE_COLOR:I = 0x40ffffff

.field private static final DEFAULT_STROKE_WIDTH:F = 1.0f

.field private static final TAG:Ljava/lang/String;

.field private static mRefView:Lcom/sec/daliviews/views/StrokeTextView;


# instance fields
.field private mStroke:Z

.field private mStrokeColor:I

.field private mStrokeWidth:F

.field private mUseClone:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/daliviews/views/StrokeDaliTextView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/sec/daliviews/views/TextView;-><init>(Landroid/content/Context;)V

    iput-boolean v1, p0, Lcom/sec/daliviews/views/StrokeDaliTextView;->mStroke:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/sec/daliviews/views/StrokeDaliTextView;->mStrokeWidth:F

    const v0, 0x40ffffff    # 7.9999995f

    iput v0, p0, Lcom/sec/daliviews/views/StrokeDaliTextView;->mStrokeColor:I

    iput-boolean v1, p0, Lcom/sec/daliviews/views/StrokeDaliTextView;->mUseClone:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/daliviews/views/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v1, p0, Lcom/sec/daliviews/views/StrokeDaliTextView;->mStroke:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/sec/daliviews/views/StrokeDaliTextView;->mStrokeWidth:F

    const v0, 0x40ffffff    # 7.9999995f

    iput v0, p0, Lcom/sec/daliviews/views/StrokeDaliTextView;->mStrokeColor:I

    iput-boolean v1, p0, Lcom/sec/daliviews/views/StrokeDaliTextView;->mUseClone:Z

    invoke-direct {p0, p1, p2}, Lcom/sec/daliviews/views/StrokeDaliTextView;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private initView(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    sget-object v1, Lcom/sec/daliviews/R$styleable;->StrokeText:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/sec/daliviews/R$styleable;->StrokeText_stroke:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/daliviews/views/StrokeDaliTextView;->mStroke:Z

    sget v1, Lcom/sec/daliviews/R$styleable;->StrokeText_storkeWidth:I

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/sec/daliviews/views/StrokeDaliTextView;->mStrokeWidth:F

    sget v1, Lcom/sec/daliviews/R$styleable;->StrokeText_storkeColor:I

    const v2, 0x40ffffff    # 7.9999995f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/sec/daliviews/views/StrokeDaliTextView;->mStrokeColor:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public copyTextParams(Lcom/sec/daliviews/views/TextView;)Z
    .locals 3

    invoke-super {p0, p1}, Lcom/sec/daliviews/views/TextView;->copyTextParams(Lcom/sec/daliviews/views/TextView;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/sec/daliviews/views/StrokeDaliTextView;

    invoke-virtual {v1}, Lcom/sec/daliviews/views/StrokeDaliTextView;->getStroke()Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/daliviews/views/StrokeDaliTextView;->mStroke:Z

    invoke-virtual {v1}, Lcom/sec/daliviews/views/StrokeDaliTextView;->getStrokeWidth()F

    move-result v2

    iput v2, p0, Lcom/sec/daliviews/views/StrokeDaliTextView;->mStrokeWidth:F

    invoke-virtual {v1}, Lcom/sec/daliviews/views/StrokeDaliTextView;->getStrokeColor()I

    move-result v2

    iput v2, p0, Lcom/sec/daliviews/views/StrokeDaliTextView;->mStrokeColor:I

    :cond_0
    return v0
.end method

.method protected createAndroidTextView(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;II)Landroid/widget/TextView;
    .locals 6

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/sec/daliviews/views/StrokeDaliTextView;->mUseClone:Z

    if-eqz v2, :cond_1

    :try_start_0
    sget-object v2, Lcom/sec/daliviews/views/StrokeDaliTextView;->mRefView:Lcom/sec/daliviews/views/StrokeTextView;

    if-nez v2, :cond_0

    new-instance v2, Lcom/sec/daliviews/views/StrokeTextView;

    iget-object v3, p0, Lcom/sec/daliviews/views/StrokeDaliTextView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/sec/daliviews/views/StrokeTextView;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/sec/daliviews/views/StrokeDaliTextView;->mRefView:Lcom/sec/daliviews/views/StrokeTextView;

    :cond_0
    sget-object v2, Lcom/sec/daliviews/views/StrokeDaliTextView;->mRefView:Lcom/sec/daliviews/views/StrokeTextView;

    invoke-virtual {v2}, Lcom/sec/daliviews/views/StrokeTextView;->clone()Lcom/sec/daliviews/views/StrokeTextView;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    iget-boolean v2, p0, Lcom/sec/daliviews/views/StrokeDaliTextView;->mStroke:Z

    iget v3, p0, Lcom/sec/daliviews/views/StrokeDaliTextView;->mDefaultTextColor:I

    iget v4, p0, Lcom/sec/daliviews/views/StrokeDaliTextView;->mStrokeColor:I

    iget v5, p0, Lcom/sec/daliviews/views/StrokeDaliTextView;->mStrokeWidth:F

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/daliviews/views/StrokeTextView;->setStrokeAttr(ZIIF)V

    invoke-virtual {p0, v1}, Lcom/sec/daliviews/views/StrokeDaliTextView;->applyTextStyle(Landroid/widget/TextView;)V

    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/sec/daliviews/views/StrokeDaliTextView;->layoutTextView(Landroid/widget/TextView;Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;II)V

    iget-object v2, p0, Lcom/sec/daliviews/views/StrokeDaliTextView;->mTitleColourMaps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    const/high16 v2, 0x100000

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/StrokeTextView;->setDrawingCacheQuality(I)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/StrokeTextView;->buildDrawingCache(Z)V

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/sec/daliviews/views/StrokeTextView;

    iget-object v2, p0, Lcom/sec/daliviews/views/StrokeDaliTextView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sec/daliviews/views/StrokeTextView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/sec/daliviews/views/StrokeTextView;

    iget-object v2, p0, Lcom/sec/daliviews/views/StrokeDaliTextView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sec/daliviews/views/StrokeTextView;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public getStroke()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/daliviews/views/StrokeDaliTextView;->mStroke:Z

    return v0
.end method

.method public getStrokeColor()I
    .locals 1

    iget v0, p0, Lcom/sec/daliviews/views/StrokeDaliTextView;->mStrokeColor:I

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1

    iget v0, p0, Lcom/sec/daliviews/views/StrokeDaliTextView;->mStrokeWidth:F

    return v0
.end method

.method protected hasSameParams(Lcom/sec/daliviews/views/TextView;)Z
    .locals 3

    move-object v0, p1

    check-cast v0, Lcom/sec/daliviews/views/StrokeDaliTextView;

    invoke-super {p0, p1}, Lcom/sec/daliviews/views/TextView;->hasSameParams(Lcom/sec/daliviews/views/TextView;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/daliviews/views/StrokeDaliTextView;->mStroke:Z

    invoke-virtual {v0}, Lcom/sec/daliviews/views/StrokeDaliTextView;->getStroke()Z

    move-result v2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/sec/daliviews/views/StrokeDaliTextView;->mStrokeWidth:F

    invoke-virtual {v0}, Lcom/sec/daliviews/views/StrokeDaliTextView;->getStrokeWidth()F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Lcom/sec/daliviews/views/StrokeDaliTextView;->mStrokeColor:I

    invoke-virtual {v0}, Lcom/sec/daliviews/views/StrokeDaliTextView;->getStrokeColor()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setStroke(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/daliviews/views/StrokeDaliTextView;->mStroke:Z

    return-void
.end method

.method public setStrokeColor(I)V
    .locals 0

    iput p1, p0, Lcom/sec/daliviews/views/StrokeDaliTextView;->mStrokeColor:I

    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 0

    iput p1, p0, Lcom/sec/daliviews/views/StrokeDaliTextView;->mStrokeWidth:F

    return-void
.end method

.class public Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;
.super Ljava/lang/Object;
.source "NativeViewBase.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/daliviews/views/NativeViewBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field private mHeightOffset:I

.field private mLayoutColSpan:I

.field private mLayoutGravity:I

.field private mLayoutHeight:I

.field private mLayoutRowSpan:I

.field private mLayoutWeight:F

.field private mLayoutWidth:I

.field private mMarginBottom:I

.field private mMarginLeft:I

.field private mMarginRight:I

.field private mMarginTop:I

.field private mPosX:F

.field private mPosY:F

.field private mPosZ:F

.field private mWidthOffset:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mMarginLeft:I

    iput v0, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mMarginRight:I

    iput v0, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mMarginTop:I

    iput v0, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mMarginBottom:I

    iput v0, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mLayoutWidth:I

    iput v0, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mWidthOffset:I

    iput v0, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mLayoutHeight:I

    iput v0, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mHeightOffset:I

    iput v0, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mLayoutRowSpan:I

    iput v0, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mLayoutColSpan:I

    iput v0, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mLayoutGravity:I

    iput v1, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mPosX:F

    iput v1, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mPosY:F

    iput v1, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mPosZ:F

    iput v1, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mLayoutWeight:F

    return-void
.end method

.method public constructor <init>(III)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mMarginLeft:I

    iput v0, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mMarginRight:I

    iput v0, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mMarginTop:I

    iput v0, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mMarginBottom:I

    iput v0, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mLayoutWidth:I

    iput v0, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mWidthOffset:I

    iput v0, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mLayoutHeight:I

    iput v0, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mHeightOffset:I

    iput v0, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mLayoutRowSpan:I

    iput v0, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mLayoutColSpan:I

    iput v0, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mLayoutGravity:I

    iput v1, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mPosX:F

    iput v1, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mPosY:F

    iput v1, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mPosZ:F

    iput v1, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mLayoutWeight:F

    iput p1, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mLayoutWidth:I

    iput p2, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mLayoutHeight:I

    iput p3, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mLayoutGravity:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mMarginLeft:I

    iput v3, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mMarginRight:I

    iput v3, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mMarginTop:I

    iput v3, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mMarginBottom:I

    iput v3, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mLayoutWidth:I

    iput v3, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mWidthOffset:I

    iput v3, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mLayoutHeight:I

    iput v3, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mHeightOffset:I

    iput v3, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mLayoutRowSpan:I

    iput v3, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mLayoutColSpan:I

    iput v3, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mLayoutGravity:I

    iput v4, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mPosX:F

    iput v4, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mPosY:F

    iput v4, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mPosZ:F

    iput v4, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mLayoutWeight:F

    sget-object v2, Lcom/sec/daliviews/R$styleable;->NativeViewBase_LayoutParams:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    sget v2, Lcom/sec/daliviews/R$styleable;->NativeViewBase_LayoutParams_android_layout_margin:I

    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    if-eq v0, v5, :cond_0

    iput v0, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mMarginBottom:I

    iput v0, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mMarginTop:I

    iput v0, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mMarginRight:I

    iput v0, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mMarginLeft:I

    :goto_0
    sget v2, Lcom/sec/daliviews/R$styleable;->NativeViewBase_LayoutParams_android_layout_width:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    iput v2, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mLayoutWidth:I

    sget v2, Lcom/sec/daliviews/R$styleable;->NativeViewBase_LayoutParams_android_layout_height:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    iput v2, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mLayoutHeight:I

    sget v2, Lcom/sec/daliviews/R$styleable;->NativeViewBase_LayoutParams_layout_widthOffset:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    iput v2, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mWidthOffset:I

    sget v2, Lcom/sec/daliviews/R$styleable;->NativeViewBase_LayoutParams_layout_heightOffset:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    iput v2, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mHeightOffset:I

    sget v2, Lcom/sec/daliviews/R$styleable;->NativeViewBase_LayoutParams_android_layout_rowSpan:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mLayoutRowSpan:I

    sget v2, Lcom/sec/daliviews/R$styleable;->NativeViewBase_LayoutParams_android_layout_columnSpan:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mLayoutColSpan:I

    sget v2, Lcom/sec/daliviews/R$styleable;->NativeViewBase_LayoutParams_android_layout_gravity:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mLayoutGravity:I

    sget v2, Lcom/sec/daliviews/R$styleable;->NativeViewBase_LayoutParams_android_layout_weight:I

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mLayoutWeight:F

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_0
    sget v2, Lcom/sec/daliviews/R$styleable;->NativeViewBase_LayoutParams_android_layout_marginLeft:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mMarginLeft:I

    sget v2, Lcom/sec/daliviews/R$styleable;->NativeViewBase_LayoutParams_android_layout_marginTop:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mMarginTop:I

    sget v2, Lcom/sec/daliviews/R$styleable;->NativeViewBase_LayoutParams_android_layout_marginRight:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mMarginRight:I

    sget v2, Lcom/sec/daliviews/R$styleable;->NativeViewBase_LayoutParams_android_layout_marginBottom:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mMarginBottom:I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;)F
    .locals 1

    iget v0, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mPosX:F

    return v0
.end method

.method static synthetic access$002(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;F)F
    .locals 0

    iput p1, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mPosX:F

    return p1
.end method

.method static synthetic access$100(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;)F
    .locals 1

    iget v0, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mPosY:F

    return v0
.end method

.method static synthetic access$102(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;F)F
    .locals 0

    iput p1, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mPosY:F

    return p1
.end method

.method static synthetic access$200(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;)F
    .locals 1

    iget v0, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mPosZ:F

    return v0
.end method

.method static synthetic access$202(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;F)F
    .locals 0

    iput p1, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mPosZ:F

    return p1
.end method

.method private native initNative(JLjava/lang/String;IIIIIIIIIFII)V
.end method

.method private initParams(IIIIIIIIIFII)V
    .locals 0

    iput p1, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mLayoutWidth:I

    iput p2, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mLayoutHeight:I

    iput p3, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mLayoutRowSpan:I

    iput p4, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mLayoutColSpan:I

    iput p5, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mMarginLeft:I

    iput p6, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mMarginTop:I

    iput p7, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mMarginRight:I

    iput p8, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mMarginBottom:I

    iput p9, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mLayoutGravity:I

    iput p10, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mLayoutWeight:F

    iput p11, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mWidthOffset:I

    iput p12, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mHeightOffset:I

    return-void
.end method


# virtual methods
.method public clone()Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->clone()Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected native create()J
.end method

.method createPeer()J
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->create()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->init(J)V

    return-wide v0
.end method

.method public getLayoutHeight()I
    .locals 1

    iget v0, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mLayoutHeight:I

    return v0
.end method

.method public getLayoutWeight()F
    .locals 1

    iget v0, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mLayoutWeight:F

    return v0
.end method

.method public getLayoutWidth()I
    .locals 1

    iget v0, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mLayoutWidth:I

    return v0
.end method

.method public getMarginBottom()I
    .locals 1

    iget v0, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mMarginBottom:I

    return v0
.end method

.method public getMarginTop()I
    .locals 1

    iget v0, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mMarginTop:I

    return v0
.end method

.method protected init(J)V
    .locals 19

    const-class v2, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2e

    const/16 v4, 0x2f

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mLayoutWidth:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mLayoutHeight:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mLayoutRowSpan:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mLayoutColSpan:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mMarginLeft:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mMarginTop:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mMarginRight:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mMarginBottom:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mLayoutGravity:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mLayoutWeight:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mWidthOffset:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mHeightOffset:I

    move/from16 v18, v0

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    invoke-direct/range {v3 .. v18}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->initNative(JLjava/lang/String;IIIIIIIIIFII)V

    return-void
.end method

.method public setLayoutGravity(I)V
    .locals 0

    iput p1, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mLayoutGravity:I

    return-void
.end method

.method public setLayoutHeight(I)V
    .locals 0

    iput p1, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mLayoutHeight:I

    return-void
.end method

.method public setLayoutHeightOffset(I)V
    .locals 0

    iput p1, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mHeightOffset:I

    return-void
.end method

.method public setLayoutMargins(IIII)V
    .locals 0

    iput p1, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mMarginLeft:I

    iput p2, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mMarginTop:I

    iput p3, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mMarginRight:I

    iput p4, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mMarginBottom:I

    return-void
.end method

.method public setLayoutWeight(F)V
    .locals 0

    iput p1, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mLayoutWeight:F

    return-void
.end method

.method public setLayoutWidth(I)V
    .locals 0

    iput p1, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mLayoutWidth:I

    return-void
.end method

.method public setLayoutWidthOffset(I)V
    .locals 0

    iput p1, p0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mWidthOffset:I

    return-void
.end method

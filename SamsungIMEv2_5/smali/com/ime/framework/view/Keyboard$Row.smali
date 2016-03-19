.class public Lcom/ime/framework/view/Keyboard$Row;
.super Ljava/lang/Object;
.source "Keyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/framework/view/Keyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Row"
.end annotation


# instance fields
.field public defaultHeight:I

.field public defaultHorizontalGap:I

.field public defaultWidth:I

.field mKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ime/framework/view/Keyboard$Key;",
            ">;"
        }
    .end annotation
.end field

.field public mLeftPadding:I

.field public mRightPadding:I

.field public mStartPosX:I

.field public mode:I

.field private parent:Lcom/ime/framework/view/Keyboard;

.field public rowEdgeFlags:I

.field public verticalGap:I

.field public visibility:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;Lcom/ime/framework/view/Keyboard;Landroid/content/res/XmlResourceParser;)V
    .locals 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v9, 0x0

    iput v9, p0, Lcom/ime/framework/view/Keyboard$Row;->mLeftPadding:I

    const/4 v9, 0x0

    iput v9, p0, Lcom/ime/framework/view/Keyboard$Row;->mRightPadding:I

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/ime/framework/view/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/ime/framework/view/Keyboard$Row;->visibility:Z

    const/4 v9, 0x0

    iput v9, p0, Lcom/ime/framework/view/Keyboard$Row;->mStartPosX:I

    iput-object p3, p0, Lcom/ime/framework/view/Keyboard$Row;->parent:Lcom/ime/framework/view/Keyboard;

    invoke-static/range {p4 .. p4}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v9

    sget-object v10, Lcom/sec/android/inputmethod/R$styleable;->Keyboard:[I

    invoke-virtual {p2, v9, v10}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v9, 0x0

    # getter for: Lcom/ime/framework/view/Keyboard;->mDisplayWidth:I
    invoke-static {p3}, Lcom/ime/framework/view/Keyboard;->access$000(Lcom/ime/framework/view/Keyboard;)I

    move-result v10

    # getter for: Lcom/ime/framework/view/Keyboard;->mDefaultWidth:I
    invoke-static {p3}, Lcom/ime/framework/view/Keyboard;->access$100(Lcom/ime/framework/view/Keyboard;)I

    move-result v11

    invoke-static {v0, v9, v10, v11}, Lcom/ime/framework/view/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v9

    iput v9, p0, Lcom/ime/framework/view/Keyboard$Row;->defaultWidth:I

    const/4 v9, 0x1

    # getter for: Lcom/ime/framework/view/Keyboard;->mDisplayHeight:I
    invoke-static {p3}, Lcom/ime/framework/view/Keyboard;->access$200(Lcom/ime/framework/view/Keyboard;)I

    move-result v10

    # getter for: Lcom/ime/framework/view/Keyboard;->mDefaultHeight:I
    invoke-static {p3}, Lcom/ime/framework/view/Keyboard;->access$300(Lcom/ime/framework/view/Keyboard;)I

    move-result v11

    invoke-static {v0, v9, v10, v11}, Lcom/ime/framework/view/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v9

    iput v9, p0, Lcom/ime/framework/view/Keyboard$Row;->defaultHeight:I

    const/4 v9, 0x2

    # getter for: Lcom/ime/framework/view/Keyboard;->mDisplayWidth:I
    invoke-static {p3}, Lcom/ime/framework/view/Keyboard;->access$000(Lcom/ime/framework/view/Keyboard;)I

    move-result v10

    # getter for: Lcom/ime/framework/view/Keyboard;->mDefaultHorizontalGap:I
    invoke-static {p3}, Lcom/ime/framework/view/Keyboard;->access$400(Lcom/ime/framework/view/Keyboard;)I

    move-result v11

    invoke-static {v0, v9, v10, v11}, Lcom/ime/framework/view/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v9

    iput v9, p0, Lcom/ime/framework/view/Keyboard$Row;->defaultHorizontalGap:I

    const/4 v9, 0x3

    # getter for: Lcom/ime/framework/view/Keyboard;->mDisplayHeight:I
    invoke-static {p3}, Lcom/ime/framework/view/Keyboard;->access$200(Lcom/ime/framework/view/Keyboard;)I

    move-result v10

    # getter for: Lcom/ime/framework/view/Keyboard;->mDefaultVerticalGap:I
    invoke-static {p3}, Lcom/ime/framework/view/Keyboard;->access$500(Lcom/ime/framework/view/Keyboard;)I

    move-result v11

    invoke-static {v0, v9, v10, v11}, Lcom/ime/framework/view/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v9

    iput v9, p0, Lcom/ime/framework/view/Keyboard$Row;->verticalGap:I

    const/4 v9, 0x6

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/ime/framework/view/Keyboard$Row;->visibility:Z

    :goto_0
    const/4 v9, 0x5

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v7

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static/range {p4 .. p4}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v9

    sget-object v10, Lcom/sec/android/inputmethod/R$styleable;->Keyboard_Row:[I

    invoke-virtual {p2, v9, v10}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    iput v9, p0, Lcom/ime/framework/view/Keyboard$Row;->rowEdgeFlags:I

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    iput v9, p0, Lcom/ime/framework/view/Keyboard$Row;->mode:I

    const/16 v9, 0x8

    # getter for: Lcom/ime/framework/view/Keyboard;->mDisplayWidth:I
    invoke-static {p3}, Lcom/ime/framework/view/Keyboard;->access$000(Lcom/ime/framework/view/Keyboard;)I

    move-result v10

    # getter for: Lcom/ime/framework/view/Keyboard;->mLeftPadding:I
    invoke-static {p3}, Lcom/ime/framework/view/Keyboard;->access$800(Lcom/ime/framework/view/Keyboard;)I

    move-result v11

    invoke-static {v0, v9, v10, v11}, Lcom/ime/framework/view/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v9

    iput v9, p0, Lcom/ime/framework/view/Keyboard$Row;->mLeftPadding:I

    const/16 v9, 0x9

    # getter for: Lcom/ime/framework/view/Keyboard;->mDisplayWidth:I
    invoke-static {p3}, Lcom/ime/framework/view/Keyboard;->access$000(Lcom/ime/framework/view/Keyboard;)I

    move-result v10

    # getter for: Lcom/ime/framework/view/Keyboard;->mRightPadding:I
    invoke-static {p3}, Lcom/ime/framework/view/Keyboard;->access$900(Lcom/ime/framework/view/Keyboard;)I

    move-result v11

    invoke-static {v0, v9, v10, v11}, Lcom/ime/framework/view/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v9

    iput v9, p0, Lcom/ime/framework/view/Keyboard$Row;->mRightPadding:I

    const/4 v9, 0x2

    # getter for: Lcom/ime/framework/view/Keyboard;->mDisplayWidth:I
    invoke-static {p3}, Lcom/ime/framework/view/Keyboard;->access$000(Lcom/ime/framework/view/Keyboard;)I

    move-result v10

    const/4 v11, 0x0

    invoke-static {v0, v9, v10, v11}, Lcom/ime/framework/view/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v9

    iput v9, p0, Lcom/ime/framework/view/Keyboard$Row;->mStartPosX:I

    # getter for: Lcom/ime/framework/view/Keyboard;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {}, Lcom/ime/framework/view/Keyboard;->access$700()Lcom/ime/framework/common/InputManager;

    move-result-object v9

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->isCurrentCarModeKnobSIP()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_0

    # getter for: Lcom/ime/framework/view/Keyboard;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {}, Lcom/ime/framework/view/Keyboard;->access$700()Lcom/ime/framework/common/InputManager;

    move-result-object v9

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->isPopupInputMethod()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v4, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    const-string v9, "window"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v2, v6}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v3, v6, Landroid/graphics/Point;->x:I

    sub-int v1, v3, v4

    if-eqz v1, :cond_0

    iget v9, p0, Lcom/ime/framework/view/Keyboard$Row;->mLeftPadding:I

    div-int/lit8 v10, v1, 0x2

    sub-int/2addr v9, v10

    iput v9, p0, Lcom/ime/framework/view/Keyboard$Row;->mLeftPadding:I

    iget v9, p0, Lcom/ime/framework/view/Keyboard$Row;->mRightPadding:I

    div-int/lit8 v10, v1, 0x2

    sub-int/2addr v9, v10

    iput v9, p0, Lcom/ime/framework/view/Keyboard$Row;->mRightPadding:I

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_1
    const-string v9, "numberRow"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    # getter for: Lcom/ime/framework/view/Keyboard;->isMass:Z
    invoke-static {}, Lcom/ime/framework/view/Keyboard;->access$600()Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/ime/framework/view/Keyboard$Row;->visibility:Z

    goto/16 :goto_0

    :cond_2
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/ime/framework/view/Keyboard$Row;->visibility:Z

    goto/16 :goto_0

    :cond_3
    # getter for: Lcom/ime/framework/view/Keyboard;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {}, Lcom/ime/framework/view/Keyboard;->access$700()Lcom/ime/framework/common/InputManager;

    move-result-object v9

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v9

    if-eqz v9, :cond_5

    const-string v9, "tablet"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/ime/framework/view/Keyboard$Row;->visibility:Z

    goto/16 :goto_0

    :cond_4
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/ime/framework/view/Keyboard$Row;->visibility:Z

    goto/16 :goto_0

    :cond_5
    const-string v9, "phone"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/ime/framework/view/Keyboard$Row;->visibility:Z

    goto/16 :goto_0

    :cond_6
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/ime/framework/view/Keyboard$Row;->visibility:Z

    goto/16 :goto_0
.end method

.method public constructor <init>(Lcom/ime/framework/view/Keyboard;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/ime/framework/view/Keyboard$Row;->mLeftPadding:I

    iput v1, p0, Lcom/ime/framework/view/Keyboard$Row;->mRightPadding:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/view/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ime/framework/view/Keyboard$Row;->visibility:Z

    iput v1, p0, Lcom/ime/framework/view/Keyboard$Row;->mStartPosX:I

    iput-object p1, p0, Lcom/ime/framework/view/Keyboard$Row;->parent:Lcom/ime/framework/view/Keyboard;

    return-void
.end method

.method static synthetic access$1000(Lcom/ime/framework/view/Keyboard$Row;)Lcom/ime/framework/view/Keyboard;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/Keyboard$Row;->parent:Lcom/ime/framework/view/Keyboard;

    return-object v0
.end method


# virtual methods
.method public getRowKeys()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ime/framework/view/Keyboard$Key;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ime/framework/view/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    return-object v0
.end method

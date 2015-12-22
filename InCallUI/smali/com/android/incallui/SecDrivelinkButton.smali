.class public Lcom/android/incallui/SecDrivelinkButton;
.super Landroid/widget/FrameLayout;
.source "SecDrivelinkButton.java"


# instance fields
.field private labelText:Landroid/widget/TextView;

.field private mButtonImage:Landroid/widget/ImageView;

.field private mChecked:Z

.field private mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private mFocusLayer:Landroid/widget/LinearLayout;

.field private final mImage:Landroid/graphics/drawable/Drawable;

.field private final mLabel:Ljava/lang/String;

.field private final mNormalColor:I

.field private final mSelectedColor:I

.field private mhorizontal:Z

.field private quoteEnd:Landroid/widget/ImageView;

.field private quoteStart:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/SecDrivelinkButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010048

    invoke-direct {p0, p1, p2, v0}, Lcom/android/incallui/SecDrivelinkButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v2, "creating SecDrivelinkButton"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/incallui/SecDrivelinkButton;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/incallui/R$styleable;->SecDrivelinkButton:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/android/incallui/SecDrivelinkButton;->mNormalColor:I

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/android/incallui/SecDrivelinkButton;->mSelectedColor:I

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/SecDrivelinkButton;->mImage:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/SecDrivelinkButton;->mLabel:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/android/incallui/SecDrivelinkButton;->mhorizontal:Z

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "horizontal"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-boolean v4, p0, Lcom/android/incallui/SecDrivelinkButton;->mhorizontal:Z

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mNormalColor="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/incallui/SecDrivelinkButton;->mNormalColor:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mSelectedColor="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/incallui/SecDrivelinkButton;->mSelectedColor:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mImage="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/SecDrivelinkButton;->mImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mLabel="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/SecDrivelinkButton;->mLabel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Lcom/android/incallui/SecDrivelinkButton;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecDrivelinkButton;->setFocusable(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/SecDrivelinkButton;->mChecked:Z

    iput-boolean v1, p0, Lcom/android/incallui/SecDrivelinkButton;->mEnabled:Z

    return-void
.end method

.method private translateDpToPx(I)I
    .locals 3

    const/4 v0, 0x1

    int-to-float v1, p1

    invoke-virtual {p0}, Lcom/android/incallui/SecDrivelinkButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public onFinishInflate()V
    .locals 14

    const/4 v13, 0x3

    const/4 v7, -0x1

    const/4 v12, 0x2

    const/4 v11, -0x2

    const/4 v10, 0x0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/incallui/SecDrivelinkButton;->mContext:Landroid/content/Context;

    invoke-direct {v0, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v7, 0x11

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-boolean v7, p0, Lcom/android/incallui/SecDrivelinkButton;->mhorizontal:Z

    if-eqz v7, :cond_2

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    :goto_0
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v7, p0, Lcom/android/incallui/SecDrivelinkButton;->mImage:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_0

    new-instance v7, Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/android/incallui/SecDrivelinkButton;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/incallui/SecDrivelinkButton;->mButtonImage:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/android/incallui/SecDrivelinkButton;->mButtonImage:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/android/incallui/SecDrivelinkButton;->mImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v7, p0, Lcom/android/incallui/SecDrivelinkButton;->mButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/incallui/SecDrivelinkButton;->mButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v7, p0, Lcom/android/incallui/SecDrivelinkButton;->mButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v7, p0, Lcom/android/incallui/SecDrivelinkButton;->mLabel:Ljava/lang/String;

    if-eqz v7, :cond_1

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/incallui/SecDrivelinkButton;->mContext:Landroid/content/Context;

    invoke-direct {v2, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v7, 0x11

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/android/incallui/SecDrivelinkButton;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/incallui/SecDrivelinkButton;->quoteStart:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/android/incallui/SecDrivelinkButton;->quoteStart:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/SecDrivelinkButton;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020153

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-direct {p0, v13}, Lcom/android/incallui/SecDrivelinkButton;->translateDpToPx(I)I

    move-result v7

    invoke-virtual {v6, v10, v10, v7, v10}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v7, p0, Lcom/android/incallui/SecDrivelinkButton;->quoteStart:Landroid/widget/ImageView;

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/android/incallui/SecDrivelinkButton;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/incallui/SecDrivelinkButton;->quoteEnd:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/android/incallui/SecDrivelinkButton;->quoteEnd:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/SecDrivelinkButton;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020152

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-direct {p0, v13}, Lcom/android/incallui/SecDrivelinkButton;->translateDpToPx(I)I

    move-result v7

    invoke-virtual {v6, v7, v10, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v7, p0, Lcom/android/incallui/SecDrivelinkButton;->quoteEnd:Landroid/widget/ImageView;

    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/incallui/SecDrivelinkButton;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/incallui/SecDrivelinkButton;->labelText:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/incallui/SecDrivelinkButton;->labelText:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v7, p0, Lcom/android/incallui/SecDrivelinkButton;->labelText:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/incallui/SecDrivelinkButton;->mLabel:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/android/incallui/SecDrivelinkButton;->labelText:Landroid/widget/TextView;

    const-string v8, "sec-roboto-light"

    invoke-static {v8, v12}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isCarModeNaviOn()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/incallui/SecDrivelinkButton;->labelText:Landroid/widget/TextView;

    const/high16 v8, 0x41d00000    # 26.0f

    invoke-virtual {v7, v12, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_1
    iget-object v7, p0, Lcom/android/incallui/SecDrivelinkButton;->labelText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/SecDrivelinkButton;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090115

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v7, p0, Lcom/android/incallui/SecDrivelinkButton;->quoteStart:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v7, p0, Lcom/android/incallui/SecDrivelinkButton;->labelText:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v7, p0, Lcom/android/incallui/SecDrivelinkButton;->quoteEnd:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/incallui/SecDrivelinkButton;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v7, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v7}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {v3, v7}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/incallui/SecDrivelinkButton;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f09011c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v7

    sget-object v8, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v7

    const/16 v8, 0xa

    invoke-direct {p0, v8}, Lcom/android/incallui/SecDrivelinkButton;->translateDpToPx(I)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v7, Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/android/incallui/SecDrivelinkButton;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/incallui/SecDrivelinkButton;->mFocusLayer:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/incallui/SecDrivelinkButton;->mFocusLayer:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v7, p0, Lcom/android/incallui/SecDrivelinkButton;->mFocusLayer:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v7, p0, Lcom/android/incallui/SecDrivelinkButton;->mFocusLayer:Landroid/widget/LinearLayout;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/incallui/SecDrivelinkButton;->mFocusLayer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v7}, Lcom/android/incallui/SecDrivelinkButton;->addView(Landroid/view/View;)V

    iget-boolean v7, p0, Lcom/android/incallui/SecDrivelinkButton;->mEnabled:Z

    invoke-virtual {p0, v7}, Lcom/android/incallui/SecDrivelinkButton;->setEnabled(Z)V

    iget-boolean v7, p0, Lcom/android/incallui/SecDrivelinkButton;->mChecked:Z

    invoke-virtual {p0, v7}, Lcom/android/incallui/SecDrivelinkButton;->setChecked(Z)V

    return-void

    :cond_2
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto/16 :goto_0

    :cond_3
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isCarModeOn()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/incallui/SecDrivelinkButton;->labelText:Landroid/widget/TextView;

    const/high16 v8, 0x41f00000    # 30.0f

    invoke-virtual {v7, v12, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_1

    :cond_4
    iget-object v7, p0, Lcom/android/incallui/SecDrivelinkButton;->labelText:Landroid/widget/TextView;

    const/high16 v8, 0x41800000    # 16.0f

    invoke-virtual {v7, v12, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_1
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecDrivelinkButton;->mFocusLayer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecDrivelinkButton;->mFocusLayer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecDrivelinkButton;->mFocusLayer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/SecDrivelinkButton;->mEnabled:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/incallui/SecDrivelinkButton;->mChecked:Z

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/android/incallui/SecDrivelinkButton;->mSelectedColor:I

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecDrivelinkButton;->setBackgroundColor(I)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/incallui/SecDrivelinkButton;->mNormalColor:I

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecDrivelinkButton;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/incallui/SecDrivelinkButton;->mEnabled:Z

    iget-object v0, p0, Lcom/android/incallui/SecDrivelinkButton;->mImage:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecDrivelinkButton;->mImage:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecDrivelinkButton;->mImage:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0
.end method

.method public showQuoteMark(Z)V
    .locals 4

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecDrivelinkButton;->labelText:Landroid/widget/TextView;

    const-string v1, "sec-roboto-light"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/android/incallui/SecDrivelinkButton;->quoteStart:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/SecDrivelinkButton;->quoteEnd:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecDrivelinkButton;->labelText:Landroid/widget/TextView;

    const-string v1, "sec-roboto-light"

    invoke-static {v1, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/android/incallui/SecDrivelinkButton;->quoteStart:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/SecDrivelinkButton;->quoteEnd:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.class public Lcom/ficeto/customsettings/ColorPickerPreference;
.super Landroid/preference/DialogPreference;
.source "ColorPickerPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ficeto/customsettings/ColorPickerPreference$SavedState;
    }
.end annotation


# instance fields
.field final alphaCheck:Landroid/widget/CheckBox;

.field final alphaSlider:Landroid/widget/SeekBar;

.field final currentColorHsv:[F

.field private mColor:I

.field final rgbValue:Landroid/widget/EditText;

.field final view:Landroid/view/View;

.field final viewContainer:Landroid/view/ViewGroup;

.field final viewCursor:Landroid/widget/ImageView;

.field final viewHue:Landroid/view/View;

.field final viewNewColor:Landroid/view/View;

.field final viewOldColor:Landroid/view/View;

.field final viewSatVal:Lcom/ficeto/customsettings/ColorPickerView;

.field final viewTarget:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ficeto/customsettings/ColorPickerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010092

    invoke-direct {p0, p1, p2, v0}, Lcom/ficeto/customsettings/ColorPickerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v1, 0x3

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/ficeto/customsettings/ColorPickerPreference;->currentColorHsv:[F

    const v1, 0x7f030003

    invoke-virtual {p0, v1}, Lcom/ficeto/customsettings/ColorPickerPreference;->setWidgetLayoutResource(I)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030001

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/ficeto/customsettings/ColorPickerPreference;->view:Landroid/view/View;

    iget-object v1, p0, Lcom/ficeto/customsettings/ColorPickerPreference;->view:Landroid/view/View;

    const v2, 0x7f090006

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/ficeto/customsettings/ColorPickerPreference;->viewHue:Landroid/view/View;

    iget-object v1, p0, Lcom/ficeto/customsettings/ColorPickerPreference;->view:Landroid/view/View;

    const v2, 0x7f090005

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/ficeto/customsettings/ColorPickerView;

    iput-object v1, p0, Lcom/ficeto/customsettings/ColorPickerPreference;->viewSatVal:Lcom/ficeto/customsettings/ColorPickerView;

    iget-object v1, p0, Lcom/ficeto/customsettings/ColorPickerPreference;->view:Landroid/view/View;

    const v2, 0x7f090007

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/ficeto/customsettings/ColorPickerPreference;->viewCursor:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/ficeto/customsettings/ColorPickerPreference;->view:Landroid/view/View;

    const v2, 0x7f09000d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/ficeto/customsettings/ColorPickerPreference;->viewOldColor:Landroid/view/View;

    iget-object v1, p0, Lcom/ficeto/customsettings/ColorPickerPreference;->view:Landroid/view/View;

    const v2, 0x7f09000e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/ficeto/customsettings/ColorPickerPreference;->viewNewColor:Landroid/view/View;

    iget-object v1, p0, Lcom/ficeto/customsettings/ColorPickerPreference;->view:Landroid/view/View;

    const v2, 0x7f090008

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/ficeto/customsettings/ColorPickerPreference;->viewTarget:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/ficeto/customsettings/ColorPickerPreference;->view:Landroid/view/View;

    const v2, 0x7f090004

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/ficeto/customsettings/ColorPickerPreference;->viewContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/ficeto/customsettings/ColorPickerPreference;->view:Landroid/view/View;

    const v2, 0x7f09000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/ficeto/customsettings/ColorPickerPreference;->alphaCheck:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/ficeto/customsettings/ColorPickerPreference;->alphaCheck:Landroid/widget/CheckBox;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v1, p0, Lcom/ficeto/customsettings/ColorPickerPreference;->view:Landroid/view/View;

    const v2, 0x7f09000b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/ficeto/customsettings/ColorPickerPreference;->alphaSlider:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/ficeto/customsettings/ColorPickerPreference;->view:Landroid/view/View;

    const v2, 0x7f09000f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/ficeto/customsettings/ColorPickerPreference;->rgbValue:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/ficeto/customsettings/ColorPickerPreference;->rgbValue:Landroid/widget/EditText;

    new-instance v2, Lcom/ficeto/customsettings/ColorPickerPreference$1;

    invoke-direct {v2, p0}, Lcom/ficeto/customsettings/ColorPickerPreference$1;-><init>(Lcom/ficeto/customsettings/ColorPickerPreference;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, p0, Lcom/ficeto/customsettings/ColorPickerPreference;->viewHue:Landroid/view/View;

    new-instance v2, Lcom/ficeto/customsettings/ColorPickerPreference$2;

    invoke-direct {v2, p0}, Lcom/ficeto/customsettings/ColorPickerPreference$2;-><init>(Lcom/ficeto/customsettings/ColorPickerPreference;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/ficeto/customsettings/ColorPickerPreference;->viewSatVal:Lcom/ficeto/customsettings/ColorPickerView;

    new-instance v2, Lcom/ficeto/customsettings/ColorPickerPreference$3;

    invoke-direct {v2, p0}, Lcom/ficeto/customsettings/ColorPickerPreference$3;-><init>(Lcom/ficeto/customsettings/ColorPickerPreference;)V

    invoke-virtual {v1, v2}, Lcom/ficeto/customsettings/ColorPickerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/ficeto/customsettings/ColorPickerPreference;->alphaCheck:Landroid/widget/CheckBox;

    new-instance v2, Lcom/ficeto/customsettings/ColorPickerPreference$4;

    invoke-direct {v2, p0}, Lcom/ficeto/customsettings/ColorPickerPreference$4;-><init>(Lcom/ficeto/customsettings/ColorPickerPreference;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, p0, Lcom/ficeto/customsettings/ColorPickerPreference;->alphaSlider:Landroid/widget/SeekBar;

    new-instance v2, Lcom/ficeto/customsettings/ColorPickerPreference$5;

    invoke-direct {v2, p0}, Lcom/ficeto/customsettings/ColorPickerPreference$5;-><init>(Lcom/ficeto/customsettings/ColorPickerPreference;)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v1, p0, Lcom/ficeto/customsettings/ColorPickerPreference;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/ficeto/customsettings/ColorPickerPreference$6;

    invoke-direct {v1, p0}, Lcom/ficeto/customsettings/ColorPickerPreference$6;-><init>(Lcom/ficeto/customsettings/ColorPickerPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method static synthetic access$0(Lcom/ficeto/customsettings/ColorPickerPreference;I)V
    .locals 0

    iput p1, p0, Lcom/ficeto/customsettings/ColorPickerPreference;->mColor:I

    return-void
.end method

.method static synthetic access$1(Lcom/ficeto/customsettings/ColorPickerPreference;)F
    .locals 1

    invoke-direct {p0}, Lcom/ficeto/customsettings/ColorPickerPreference;->getHue()F

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lcom/ficeto/customsettings/ColorPickerPreference;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ficeto/customsettings/ColorPickerPreference;->setHue(F)V

    return-void
.end method

.method static synthetic access$3(Lcom/ficeto/customsettings/ColorPickerPreference;)I
    .locals 1

    invoke-direct {p0}, Lcom/ficeto/customsettings/ColorPickerPreference;->getColor()I

    move-result v0

    return v0
.end method

.method static synthetic access$4(Lcom/ficeto/customsettings/ColorPickerPreference;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/ficeto/customsettings/ColorPickerPreference;->getRGB(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5(Lcom/ficeto/customsettings/ColorPickerPreference;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ficeto/customsettings/ColorPickerPreference;->setSat(F)V

    return-void
.end method

.method static synthetic access$6(Lcom/ficeto/customsettings/ColorPickerPreference;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ficeto/customsettings/ColorPickerPreference;->setVal(F)V

    return-void
.end method

.method private getColor()I
    .locals 3

    iget-object v1, p0, Lcom/ficeto/customsettings/ColorPickerPreference;->currentColorHsv:[F

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    iget-object v1, p0, Lcom/ficeto/customsettings/ColorPickerPreference;->alphaCheck:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ficeto/customsettings/ColorPickerPreference;->alphaSlider:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    iget-object v2, p0, Lcom/ficeto/customsettings/ColorPickerPreference;->currentColorHsv:[F

    invoke-static {v1, v2}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v0

    :cond_0
    iput v0, p0, Lcom/ficeto/customsettings/ColorPickerPreference;->mColor:I

    iget v1, p0, Lcom/ficeto/customsettings/ColorPickerPreference;->mColor:I

    return v1
.end method

.method private getHue()F
    .locals 2

    iget-object v0, p0, Lcom/ficeto/customsettings/ColorPickerPreference;->currentColorHsv:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method private getRGB(I)Ljava/lang/String;
    .locals 8

    const/16 v7, 0x11

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const-string v3, "#"

    iget-object v5, p0, Lcom/ficeto/customsettings/ColorPickerPreference;->alphaCheck:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-ge v0, v7, :cond_1

    const-string v5, "0"

    :goto_0
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-ge v4, v7, :cond_2

    const-string v5, "0"

    :goto_1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-ge v2, v7, :cond_3

    const-string v5, "0"

    :goto_2
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-ge v1, v7, :cond_4

    const-string v5, "0"

    :goto_3
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_1
    const-string v5, ""

    goto :goto_0

    :cond_2
    const-string v5, ""

    goto :goto_1

    :cond_3
    const-string v5, ""

    goto :goto_2

    :cond_4
    const-string v5, ""

    goto :goto_3
.end method

.method private getSat()F
    .locals 2

    iget-object v0, p0, Lcom/ficeto/customsettings/ColorPickerPreference;->currentColorHsv:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method private getVal()F
    .locals 2

    iget-object v0, p0, Lcom/ficeto/customsettings/ColorPickerPreference;->currentColorHsv:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method private setHue(F)V
    .locals 2

    iget-object v0, p0, Lcom/ficeto/customsettings/ColorPickerPreference;->currentColorHsv:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    return-void
.end method

.method private setSat(F)V
    .locals 2

    iget-object v0, p0, Lcom/ficeto/customsettings/ColorPickerPreference;->currentColorHsv:[F

    const/4 v1, 0x1

    aput p1, v0, v1

    return-void
.end method

.method private setVal(F)V
    .locals 2

    iget-object v0, p0, Lcom/ficeto/customsettings/ColorPickerPreference;->currentColorHsv:[F

    const/4 v1, 0x2

    aput p1, v0, v1

    return-void
.end method


# virtual methods
.method public disableAlpha(Z)V
    .locals 4

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/ficeto/customsettings/ColorPickerPreference;->alphaCheck:Landroid/widget/CheckBox;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v3, p0, Lcom/ficeto/customsettings/ColorPickerPreference;->alphaCheck:Landroid/widget/CheckBox;

    if-eqz p1, :cond_1

    move v0, v2

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v0, p0, Lcom/ficeto/customsettings/ColorPickerPreference;->alphaSlider:Landroid/widget/SeekBar;

    if-eqz p1, :cond_2

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    move v2, v1

    goto :goto_2
.end method

.method protected moveCursor()V
    .locals 6

    iget-object v2, p0, Lcom/ficeto/customsettings/ColorPickerPreference;->viewHue:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {p0}, Lcom/ficeto/customsettings/ColorPickerPreference;->getHue()F

    move-result v3

    iget-object v4, p0, Lcom/ficeto/customsettings/ColorPickerPreference;->viewHue:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    const/high16 v4, 0x43b40000    # 360.0f

    div-float/2addr v3, v4

    sub-float v1, v2, v3

    iget-object v2, p0, Lcom/ficeto/customsettings/ColorPickerPreference;->viewHue:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    iget-object v2, p0, Lcom/ficeto/customsettings/ColorPickerPreference;->viewCursor:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/ficeto/customsettings/ColorPickerPreference;->viewHue:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-double v2, v2

    iget-object v4, p0, Lcom/ficeto/customsettings/ColorPickerPreference;->viewCursor:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    iget-object v4, p0, Lcom/ficeto/customsettings/ColorPickerPreference;->viewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    int-to-double v4, v4

    sub-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v2, p0, Lcom/ficeto/customsettings/ColorPickerPreference;->viewHue:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v1

    float-to-double v2, v2

    iget-object v4, p0, Lcom/ficeto/customsettings/ColorPickerPreference;->viewCursor:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    iget-object v4, p0, Lcom/ficeto/customsettings/ColorPickerPreference;->viewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    int-to-double v4, v4

    sub-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/ficeto/customsettings/ColorPickerPreference;->viewCursor:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected moveTarget()V
    .locals 7

    invoke-direct {p0}, Lcom/ficeto/customsettings/ColorPickerPreference;->getSat()F

    move-result v3

    iget-object v4, p0, Lcom/ficeto/customsettings/ColorPickerPreference;->viewSatVal:Lcom/ficeto/customsettings/ColorPickerView;

    invoke-virtual {v4}, Lcom/ficeto/customsettings/ColorPickerView;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v1, v3, v4

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p0}, Lcom/ficeto/customsettings/ColorPickerPreference;->getVal()F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/ficeto/customsettings/ColorPickerPreference;->viewSatVal:Lcom/ficeto/customsettings/ColorPickerView;

    invoke-virtual {v4}, Lcom/ficeto/customsettings/ColorPickerView;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v2, v3, v4

    iget-object v3, p0, Lcom/ficeto/customsettings/ColorPickerPreference;->viewTarget:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v3, p0, Lcom/ficeto/customsettings/ColorPickerPreference;->viewSatVal:Lcom/ficeto/customsettings/ColorPickerView;

    invoke-virtual {v3}, Lcom/ficeto/customsettings/ColorPickerView;->getLeft()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v1

    float-to-double v3, v3

    iget-object v5, p0, Lcom/ficeto/customsettings/ColorPickerPreference;->viewTarget:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    sub-double/2addr v3, v5

    iget-object v5, p0, Lcom/ficeto/customsettings/ColorPickerPreference;->viewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v5

    int-to-double v5, v5

    sub-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v3, p0, Lcom/ficeto/customsettings/ColorPickerPreference;->viewSatVal:Lcom/ficeto/customsettings/ColorPickerView;

    invoke-virtual {v3}, Lcom/ficeto/customsettings/ColorPickerView;->getTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v2

    float-to-double v3, v3

    iget-object v5, p0, Lcom/ficeto/customsettings/ColorPickerPreference;->viewTarget:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    sub-double/2addr v3, v5

    iget-object v5, p0, Lcom/ficeto/customsettings/ColorPickerPreference;->viewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    int-to-double v5, v5

    sub-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v3, p0, Lcom/ficeto/customsettings/ColorPickerPreference;->viewTarget:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected needInputMethod()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onAddColorPickerToDialogView(Landroid/view/View;Landroid/view/View;)V
    .locals 3

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, p2, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    :cond_0
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/ficeto/customsettings/ColorPickerPreference;->view:Landroid/view/View;

    invoke-direct {p0}, Lcom/ficeto/customsettings/ColorPickerPreference;->getColor()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/ficeto/customsettings/ColorPickerPreference;->setColor(I)V

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p1, :cond_0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindView(Landroid/view/View;)V

    const v1, 0x7f090012

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/ficeto/customsettings/ColorPickerPreference;->mColor:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/ficeto/customsettings/ColorPickerPreference;->view:Landroid/view/View;

    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/ficeto/customsettings/ColorPickerPreference;->getColor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ficeto/customsettings/ColorPickerPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/ficeto/customsettings/ColorPickerPreference;->setColor(I)V

    :cond_0
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/ficeto/customsettings/ColorPickerPreference;->mColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/ficeto/customsettings/ColorPickerPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/ficeto/customsettings/ColorPickerPreference$SavedState;

    invoke-virtual {v0}, Lcom/ficeto/customsettings/ColorPickerPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v1, p0, Lcom/ficeto/customsettings/ColorPickerPreference;->viewOldColor:Landroid/view/View;

    iget v2, v0, Lcom/ficeto/customsettings/ColorPickerPreference$SavedState;->color:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget v1, v0, Lcom/ficeto/customsettings/ColorPickerPreference$SavedState;->color:I

    invoke-virtual {p0, v1}, Lcom/ficeto/customsettings/ColorPickerPreference;->setColor(I)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Landroid/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ficeto/customsettings/ColorPickerPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v1

    :cond_0
    new-instance v0, Lcom/ficeto/customsettings/ColorPickerPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/ficeto/customsettings/ColorPickerPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-direct {p0}, Lcom/ficeto/customsettings/ColorPickerPreference;->getColor()I

    move-result v2

    iput v2, v0, Lcom/ficeto/customsettings/ColorPickerPreference$SavedState;->color:I

    move-object v1, v0

    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 4

    new-instance v2, Ljava/lang/Integer;

    iget v3, p0, Lcom/ficeto/customsettings/ColorPickerPreference;->mColor:I

    invoke-virtual {p0, v3}, Lcom/ficeto/customsettings/ColorPickerPreference;->getPersistedInt(I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_0
    if-eqz p1, :cond_1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/ficeto/customsettings/ColorPickerPreference;->setColor(I)V

    return-void

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method public setColor(I)V
    .locals 2

    iput p1, p0, Lcom/ficeto/customsettings/ColorPickerPreference;->mColor:I

    invoke-virtual {p0, p1}, Lcom/ficeto/customsettings/ColorPickerPreference;->persistInt(I)Z

    iget-object v0, p0, Lcom/ficeto/customsettings/ColorPickerPreference;->alphaSlider:Landroid/widget/SeekBar;

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v0, p0, Lcom/ficeto/customsettings/ColorPickerPreference;->currentColorHsv:[F

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    iget-object v0, p0, Lcom/ficeto/customsettings/ColorPickerPreference;->viewNewColor:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/ficeto/customsettings/ColorPickerPreference;->rgbValue:Landroid/widget/EditText;

    invoke-direct {p0, p1}, Lcom/ficeto/customsettings/ColorPickerPreference;->getRGB(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ficeto/customsettings/ColorPickerPreference;->viewSatVal:Lcom/ficeto/customsettings/ColorPickerView;

    invoke-direct {p0}, Lcom/ficeto/customsettings/ColorPickerPreference;->getHue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ficeto/customsettings/ColorPickerView;->setHue(F)V

    invoke-virtual {p0}, Lcom/ficeto/customsettings/ColorPickerPreference;->moveCursor()V

    invoke-virtual {p0}, Lcom/ficeto/customsettings/ColorPickerPreference;->moveTarget()V

    return-void
.end method

.method public setInitialColor(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ficeto/customsettings/ColorPickerPreference;->setColor(I)V

    iget-object v0, p0, Lcom/ficeto/customsettings/ColorPickerPreference;->viewOldColor:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.class public Lcom/ficeto/customsettings/ColorPickerDialog;
.super Ljava/lang/Object;
.source "ColorPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ficeto/customsettings/ColorPickerDialog$OnColorPickerListener;
    }
.end annotation


# instance fields
.field final currentColorHsv:[F

.field final dialog:Landroid/app/AlertDialog;

.field final listener:Lcom/ficeto/customsettings/ColorPickerDialog$OnColorPickerListener;

.field final viewContainer:Landroid/view/ViewGroup;

.field final viewCursor:Landroid/widget/ImageView;

.field final viewHue:Landroid/view/View;

.field final viewNewColor:Landroid/view/View;

.field final viewOldColor:Landroid/view/View;

.field final viewSatVal:Lcom/ficeto/customsettings/ColorPickerView;

.field final viewTarget:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/ficeto/customsettings/ColorPickerDialog$OnColorPickerListener;)V
    .locals 7

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/ficeto/customsettings/ColorPickerDialog;->currentColorHsv:[F

    iput-object p3, p0, Lcom/ficeto/customsettings/ColorPickerDialog;->listener:Lcom/ficeto/customsettings/ColorPickerDialog$OnColorPickerListener;

    iget-object v0, p0, Lcom/ficeto/customsettings/ColorPickerDialog;->currentColorHsv:[F

    invoke-static {p2, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f030001

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f090006

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ficeto/customsettings/ColorPickerDialog;->viewHue:Landroid/view/View;

    const v0, 0x7f090005

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ficeto/customsettings/ColorPickerView;

    iput-object v0, p0, Lcom/ficeto/customsettings/ColorPickerDialog;->viewSatVal:Lcom/ficeto/customsettings/ColorPickerView;

    const v0, 0x7f090007

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ficeto/customsettings/ColorPickerDialog;->viewCursor:Landroid/widget/ImageView;

    const v0, 0x7f09000d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ficeto/customsettings/ColorPickerDialog;->viewOldColor:Landroid/view/View;

    const v0, 0x7f09000e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ficeto/customsettings/ColorPickerDialog;->viewNewColor:Landroid/view/View;

    const v0, 0x7f090008

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ficeto/customsettings/ColorPickerDialog;->viewTarget:Landroid/widget/ImageView;

    const v0, 0x7f090004

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/ficeto/customsettings/ColorPickerDialog;->viewContainer:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/ficeto/customsettings/ColorPickerDialog;->viewSatVal:Lcom/ficeto/customsettings/ColorPickerView;

    invoke-direct {p0}, Lcom/ficeto/customsettings/ColorPickerDialog;->getHue()F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/ficeto/customsettings/ColorPickerView;->setHue(F)V

    iget-object v0, p0, Lcom/ficeto/customsettings/ColorPickerDialog;->viewOldColor:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/ficeto/customsettings/ColorPickerDialog;->viewNewColor:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/ficeto/customsettings/ColorPickerDialog;->viewHue:Landroid/view/View;

    new-instance v3, Lcom/ficeto/customsettings/ColorPickerDialog$1;

    invoke-direct {v3, p0}, Lcom/ficeto/customsettings/ColorPickerDialog$1;-><init>(Lcom/ficeto/customsettings/ColorPickerDialog;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/ficeto/customsettings/ColorPickerDialog;->viewSatVal:Lcom/ficeto/customsettings/ColorPickerView;

    new-instance v3, Lcom/ficeto/customsettings/ColorPickerDialog$2;

    invoke-direct {v3, p0}, Lcom/ficeto/customsettings/ColorPickerDialog$2;-><init>(Lcom/ficeto/customsettings/ColorPickerDialog;)V

    invoke-virtual {v0, v3}, Lcom/ficeto/customsettings/ColorPickerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x104000a

    new-instance v4, Lcom/ficeto/customsettings/ColorPickerDialog$3;

    invoke-direct {v4, p0}, Lcom/ficeto/customsettings/ColorPickerDialog$3;-><init>(Lcom/ficeto/customsettings/ColorPickerDialog;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v3, 0x1040000

    new-instance v4, Lcom/ficeto/customsettings/ColorPickerDialog$4;

    invoke-direct {v4, p0}, Lcom/ficeto/customsettings/ColorPickerDialog$4;-><init>(Lcom/ficeto/customsettings/ColorPickerDialog;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v3, Lcom/ficeto/customsettings/ColorPickerDialog$5;

    invoke-direct {v3, p0}, Lcom/ficeto/customsettings/ColorPickerDialog$5;-><init>(Lcom/ficeto/customsettings/ColorPickerDialog;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/ficeto/customsettings/ColorPickerDialog;->dialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/ficeto/customsettings/ColorPickerDialog;->dialog:Landroid/app/AlertDialog;

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v6

    new-instance v0, Lcom/ficeto/customsettings/ColorPickerDialog$6;

    invoke-direct {v0, p0, v1}, Lcom/ficeto/customsettings/ColorPickerDialog$6;-><init>(Lcom/ficeto/customsettings/ColorPickerDialog;Landroid/view/View;)V

    invoke-virtual {v6, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method static synthetic access$0(Lcom/ficeto/customsettings/ColorPickerDialog;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ficeto/customsettings/ColorPickerDialog;->setHue(F)V

    return-void
.end method

.method static synthetic access$1(Lcom/ficeto/customsettings/ColorPickerDialog;)F
    .locals 1

    invoke-direct {p0}, Lcom/ficeto/customsettings/ColorPickerDialog;->getHue()F

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lcom/ficeto/customsettings/ColorPickerDialog;)I
    .locals 1

    invoke-direct {p0}, Lcom/ficeto/customsettings/ColorPickerDialog;->getColor()I

    move-result v0

    return v0
.end method

.method static synthetic access$3(Lcom/ficeto/customsettings/ColorPickerDialog;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ficeto/customsettings/ColorPickerDialog;->setSat(F)V

    return-void
.end method

.method static synthetic access$4(Lcom/ficeto/customsettings/ColorPickerDialog;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ficeto/customsettings/ColorPickerDialog;->setVal(F)V

    return-void
.end method

.method private getColor()I
    .locals 1

    iget-object v0, p0, Lcom/ficeto/customsettings/ColorPickerDialog;->currentColorHsv:[F

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    return v0
.end method

.method private getHue()F
    .locals 2

    iget-object v0, p0, Lcom/ficeto/customsettings/ColorPickerDialog;->currentColorHsv:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method private getSat()F
    .locals 2

    iget-object v0, p0, Lcom/ficeto/customsettings/ColorPickerDialog;->currentColorHsv:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method private getVal()F
    .locals 2

    iget-object v0, p0, Lcom/ficeto/customsettings/ColorPickerDialog;->currentColorHsv:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method private setHue(F)V
    .locals 2

    iget-object v0, p0, Lcom/ficeto/customsettings/ColorPickerDialog;->currentColorHsv:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    return-void
.end method

.method private setSat(F)V
    .locals 2

    iget-object v0, p0, Lcom/ficeto/customsettings/ColorPickerDialog;->currentColorHsv:[F

    const/4 v1, 0x1

    aput p1, v0, v1

    return-void
.end method

.method private setVal(F)V
    .locals 2

    iget-object v0, p0, Lcom/ficeto/customsettings/ColorPickerDialog;->currentColorHsv:[F

    const/4 v1, 0x2

    aput p1, v0, v1

    return-void
.end method


# virtual methods
.method public getDialog()Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/ficeto/customsettings/ColorPickerDialog;->dialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method protected moveCursor()V
    .locals 6

    iget-object v2, p0, Lcom/ficeto/customsettings/ColorPickerDialog;->viewHue:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {p0}, Lcom/ficeto/customsettings/ColorPickerDialog;->getHue()F

    move-result v3

    iget-object v4, p0, Lcom/ficeto/customsettings/ColorPickerDialog;->viewHue:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    const/high16 v4, 0x43b40000    # 360.0f

    div-float/2addr v3, v4

    sub-float v1, v2, v3

    iget-object v2, p0, Lcom/ficeto/customsettings/ColorPickerDialog;->viewHue:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    iget-object v2, p0, Lcom/ficeto/customsettings/ColorPickerDialog;->viewCursor:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/ficeto/customsettings/ColorPickerDialog;->viewHue:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-double v2, v2

    iget-object v4, p0, Lcom/ficeto/customsettings/ColorPickerDialog;->viewCursor:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    iget-object v4, p0, Lcom/ficeto/customsettings/ColorPickerDialog;->viewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    int-to-double v4, v4

    sub-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v2, p0, Lcom/ficeto/customsettings/ColorPickerDialog;->viewHue:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v1

    float-to-double v2, v2

    iget-object v4, p0, Lcom/ficeto/customsettings/ColorPickerDialog;->viewCursor:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    iget-object v4, p0, Lcom/ficeto/customsettings/ColorPickerDialog;->viewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    int-to-double v4, v4

    sub-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/ficeto/customsettings/ColorPickerDialog;->viewCursor:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected moveTarget()V
    .locals 7

    invoke-direct {p0}, Lcom/ficeto/customsettings/ColorPickerDialog;->getSat()F

    move-result v3

    iget-object v4, p0, Lcom/ficeto/customsettings/ColorPickerDialog;->viewSatVal:Lcom/ficeto/customsettings/ColorPickerView;

    invoke-virtual {v4}, Lcom/ficeto/customsettings/ColorPickerView;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v1, v3, v4

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p0}, Lcom/ficeto/customsettings/ColorPickerDialog;->getVal()F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/ficeto/customsettings/ColorPickerDialog;->viewSatVal:Lcom/ficeto/customsettings/ColorPickerView;

    invoke-virtual {v4}, Lcom/ficeto/customsettings/ColorPickerView;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v2, v3, v4

    iget-object v3, p0, Lcom/ficeto/customsettings/ColorPickerDialog;->viewTarget:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v3, p0, Lcom/ficeto/customsettings/ColorPickerDialog;->viewSatVal:Lcom/ficeto/customsettings/ColorPickerView;

    invoke-virtual {v3}, Lcom/ficeto/customsettings/ColorPickerView;->getLeft()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v1

    float-to-double v3, v3

    iget-object v5, p0, Lcom/ficeto/customsettings/ColorPickerDialog;->viewTarget:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    sub-double/2addr v3, v5

    iget-object v5, p0, Lcom/ficeto/customsettings/ColorPickerDialog;->viewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v5

    int-to-double v5, v5

    sub-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v3, p0, Lcom/ficeto/customsettings/ColorPickerDialog;->viewSatVal:Lcom/ficeto/customsettings/ColorPickerView;

    invoke-virtual {v3}, Lcom/ficeto/customsettings/ColorPickerView;->getTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v2

    float-to-double v3, v3

    iget-object v5, p0, Lcom/ficeto/customsettings/ColorPickerDialog;->viewTarget:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    sub-double/2addr v3, v5

    iget-object v5, p0, Lcom/ficeto/customsettings/ColorPickerDialog;->viewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    int-to-double v5, v5

    sub-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v3, p0, Lcom/ficeto/customsettings/ColorPickerDialog;->viewTarget:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public show()V
    .locals 1

    iget-object v0, p0, Lcom/ficeto/customsettings/ColorPickerDialog;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

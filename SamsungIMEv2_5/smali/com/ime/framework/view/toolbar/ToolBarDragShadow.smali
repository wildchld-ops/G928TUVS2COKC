.class public Lcom/ime/framework/view/toolbar/ToolBarDragShadow;
.super Landroid/view/View$DragShadowBuilder;
.source "ToolBarDragShadow.java"


# instance fields
.field private mShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private mShadowHeight:I

.field private mShadowTouchOffset_X:I

.field private mShadowTouchOffset_Y:I

.field private mShadowWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/view/View$DragShadowBuilder;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/view/View$DragShadowBuilder;-><init>()V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    instance-of v0, p1, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iput-object p1, p0, Lcom/ime/framework/view/toolbar/ToolBarDragShadow;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    iput v0, p0, Lcom/ime/framework/view/toolbar/ToolBarDragShadow;->mShadowWidth:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    iput v0, p0, Lcom/ime/framework/view/toolbar/ToolBarDragShadow;->mShadowHeight:I

    iget v0, p0, Lcom/ime/framework/view/toolbar/ToolBarDragShadow;->mShadowWidth:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ime/framework/view/toolbar/ToolBarDragShadow;->mShadowTouchOffset_X:I

    iget v0, p0, Lcom/ime/framework/view/toolbar/ToolBarDragShadow;->mShadowHeight:I

    mul-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ime/framework/view/toolbar/ToolBarDragShadow;->mShadowTouchOffset_Y:I

    iget-object v0, p0, Lcom/ime/framework/view/toolbar/ToolBarDragShadow;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/ime/framework/view/toolbar/ToolBarDragShadow;->mShadowWidth:I

    iget v2, p0, Lcom/ime/framework/view/toolbar/ToolBarDragShadow;->mShadowHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public onDrawShadow(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/toolbar/ToolBarDragShadow;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 4

    iget v2, p0, Lcom/ime/framework/view/toolbar/ToolBarDragShadow;->mShadowWidth:I

    iget v3, p0, Lcom/ime/framework/view/toolbar/ToolBarDragShadow;->mShadowHeight:I

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Point;->set(II)V

    iget v2, p0, Lcom/ime/framework/view/toolbar/ToolBarDragShadow;->mShadowWidth:I

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/ime/framework/view/toolbar/ToolBarDragShadow;->mShadowTouchOffset_X:I

    add-int v0, v2, v3

    iget v2, p0, Lcom/ime/framework/view/toolbar/ToolBarDragShadow;->mShadowHeight:I

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/ime/framework/view/toolbar/ToolBarDragShadow;->mShadowTouchOffset_Y:I

    add-int v1, v2, v3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Point;->set(II)V

    return-void
.end method

.class final Lcom/android/incallui/InCallUtils$1;
.super Ljava/lang/Object;
.source "InCallUtils.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/InCallUtils;->setRippleSizeWithViewWidth(Landroid/view/View;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$maxRippleHeight:I

.field final synthetic val$maxRippleWidth:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/InCallUtils$1;->val$view:Landroid/view/View;

    iput p2, p0, Lcom/android/incallui/InCallUtils$1;->val$maxRippleWidth:I

    iput p3, p0, Lcom/android/incallui/InCallUtils$1;->val$maxRippleHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 13

    iget-object v9, p0, Lcom/android/incallui/InCallUtils$1;->val$view:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v9

    invoke-virtual {v9, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v9, p0, Lcom/android/incallui/InCallUtils$1;->val$view:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    iget-object v9, p0, Lcom/android/incallui/InCallUtils$1;->val$view:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget v7, p0, Lcom/android/incallui/InCallUtils$1;->val$maxRippleWidth:I

    iget v6, p0, Lcom/android/incallui/InCallUtils$1;->val$maxRippleHeight:I

    if-lez v8, :cond_0

    if-gtz v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v9, p0, Lcom/android/incallui/InCallUtils$1;->val$maxRippleWidth:I

    if-le v9, v8, :cond_2

    move v7, v8

    move v6, v8

    :cond_2
    div-int/lit8 v1, v8, 0x2

    div-int/lit8 v2, v5, 0x2

    div-int/lit8 v4, v7, 0x2

    div-int/lit8 v3, v6, 0x2

    iget-object v9, p0, Lcom/android/incallui/InCallUtils$1;->val$view:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v9, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v9, :cond_0

    sub-int v9, v1, v4

    sub-int v10, v2, v3

    add-int v11, v1, v4

    add-int v12, v2, v3

    invoke-virtual {v0, v9, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    goto :goto_0
.end method

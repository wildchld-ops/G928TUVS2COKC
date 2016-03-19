.class public final Lcom/myscript/atk/sltw/c/a;
.super Ljava/lang/Object;
.source "ArrowScrollController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/myscript/atk/sltw/c/a$a;
    }
.end annotation


# instance fields
.field public a:Landroid/widget/ImageView;

.field public b:Landroid/widget/ImageView;

.field public c:Lcom/myscript/atk/sltw/c/a$a;

.field private d:[I

.field private e:I

.field private f:I

.field private g:Landroid/os/Handler;

.field private h:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 2

    const/16 v1, 0x8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/myscript/atk/sltw/c/b;

    invoke-direct {v0, p0}, Lcom/myscript/atk/sltw/c/b;-><init>(Lcom/myscript/atk/sltw/c/a;)V

    iput-object v0, p0, Lcom/myscript/atk/sltw/c/a;->h:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/myscript/atk/sltw/c/a;->a:Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/myscript/atk/sltw/c/a;->b:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/a;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/a;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/a;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/a;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/myscript/atk/sltw/c/a;->g:Landroid/os/Handler;

    return-void
.end method

.method private a(I)V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lcom/myscript/atk/sltw/c/a;->f:I

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/a;->c:Lcom/myscript/atk/sltw/c/a$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/a;->c:Lcom/myscript/atk/sltw/c/a$a;

    invoke-interface {v0}, Lcom/myscript/atk/sltw/c/a$a;->q()V

    :cond_0
    sget-object v0, Lcom/myscript/atk/sltw/b/a;->c:[I

    iput-object v0, p0, Lcom/myscript/atk/sltw/c/a;->d:[I

    iput v3, p0, Lcom/myscript/atk/sltw/c/a;->e:I

    iput p1, p0, Lcom/myscript/atk/sltw/c/a;->f:I

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/a;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/myscript/atk/sltw/c/a;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/a;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/myscript/atk/sltw/c/a;->h:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/myscript/atk/sltw/c/a;->d:[I

    aget v2, v2, v3

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/myscript/atk/sltw/c/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/myscript/atk/sltw/c/a;->b()V

    return-void
.end method

.method static synthetic b(Lcom/myscript/atk/sltw/c/a;)I
    .locals 2

    iget v0, p0, Lcom/myscript/atk/sltw/c/a;->e:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/myscript/atk/sltw/c/a;->e:I

    return v0
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/a;->c:Lcom/myscript/atk/sltw/c/a$a;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/myscript/atk/sltw/c/a;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/a;->c:Lcom/myscript/atk/sltw/c/a$a;

    invoke-interface {v0}, Lcom/myscript/atk/sltw/c/a$a;->s()V

    :cond_0
    iget v0, p0, Lcom/myscript/atk/sltw/c/a;->f:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/a;->c:Lcom/myscript/atk/sltw/c/a$a;

    invoke-interface {v0}, Lcom/myscript/atk/sltw/c/a$a;->t()V

    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/myscript/atk/sltw/c/a;)I
    .locals 1

    iget v0, p0, Lcom/myscript/atk/sltw/c/a;->e:I

    return v0
.end method

.method static synthetic d(Lcom/myscript/atk/sltw/c/a;)[I
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/a;->d:[I

    return-object v0
.end method

.method static synthetic e(Lcom/myscript/atk/sltw/c/a;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/a;->g:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/a;->a:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/myscript/atk/sltw/c/a;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/myscript/atk/sltw/c/a;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/a;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/a;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final a(Lcom/myscript/atk/sltw/c/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/myscript/atk/sltw/c/a;->c:Lcom/myscript/atk/sltw/c/a$a;

    return-void
.end method

.method public final a()Z
    .locals 1

    iget v0, p0, Lcom/myscript/atk/sltw/c/a;->f:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(FF)Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/myscript/atk/sltw/c/a;->a:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLeft()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, v1, p1

    if-gtz v1, :cond_1

    iget-object v1, p0, Lcom/myscript/atk/sltw/c/a;->a:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getRight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_1

    iget-object v1, p0, Lcom/myscript/atk/sltw/c/a;->a:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, v1, p2

    if-gtz v1, :cond_1

    iget-object v1, p0, Lcom/myscript/atk/sltw/c/a;->a:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBottom()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, p2, v1

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/myscript/atk/sltw/c/a;->b:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLeft()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, v1, p1

    if-gtz v1, :cond_2

    iget-object v1, p0, Lcom/myscript/atk/sltw/c/a;->b:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getRight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_2

    iget-object v1, p0, Lcom/myscript/atk/sltw/c/a;->b:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, v1, p2

    if-gtz v1, :cond_2

    iget-object v1, p0, Lcom/myscript/atk/sltw/c/a;->b:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBottom()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, p2, v1

    if-lez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/a;->b:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/myscript/atk/sltw/c/a;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/myscript/atk/sltw/c/a;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/a;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/a;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-nez v3, :cond_1

    iget-object v2, p0, Lcom/myscript/atk/sltw/c/a;->c:Lcom/myscript/atk/sltw/c/a$a;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/myscript/atk/sltw/c/a;->c:Lcom/myscript/atk/sltw/c/a$a;

    invoke-interface {v2}, Lcom/myscript/atk/sltw/c/a$a;->u()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    :goto_0
    if-nez v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v0

    goto :goto_0

    :cond_1
    packed-switch v3, :pswitch_data_0

    :goto_2
    move v0, v1

    goto :goto_1

    :pswitch_0
    iget v0, p0, Lcom/myscript/atk/sltw/c/a;->f:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/a;->a:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_2

    invoke-direct {p0, v1}, Lcom/myscript/atk/sltw/c/a;->a(I)V

    :cond_2
    iget-object v0, p0, Lcom/myscript/atk/sltw/c/a;->b:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_3

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/myscript/atk/sltw/c/a;->a(I)V

    :cond_3
    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    goto :goto_2

    :pswitch_1
    iget v2, p0, Lcom/myscript/atk/sltw/c/a;->f:I

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/myscript/atk/sltw/c/a;->f:I

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/myscript/atk/sltw/c/a;->e:I

    if-nez v2, :cond_4

    invoke-direct {p0}, Lcom/myscript/atk/sltw/c/a;->b()V

    :cond_4
    iget-object v2, p0, Lcom/myscript/atk/sltw/c/a;->c:Lcom/myscript/atk/sltw/c/a$a;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/myscript/atk/sltw/c/a;->c:Lcom/myscript/atk/sltw/c/a$a;

    invoke-interface {v2}, Lcom/myscript/atk/sltw/c/a$a;->r()V

    :cond_5
    iput v0, p0, Lcom/myscript/atk/sltw/c/a;->e:I

    iput v0, p0, Lcom/myscript/atk/sltw/c/a;->f:I

    iget-object v2, p0, Lcom/myscript/atk/sltw/c/a;->g:Landroid/os/Handler;

    iget-object v3, p0, Lcom/myscript/atk/sltw/c/a;->h:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_6
    iget-object v2, p0, Lcom/myscript/atk/sltw/c/a;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    iget-object v2, p0, Lcom/myscript/atk/sltw/c/a;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

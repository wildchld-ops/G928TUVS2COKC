.class public final Lcom/myscript/atk/sltw/c/k;
.super Ljava/lang/Object;
.source "HandleViewController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Lcom/myscript/atk/sltw/c/o$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/myscript/atk/sltw/c/k$c;,
        Lcom/myscript/atk/sltw/c/k$b;,
        Lcom/myscript/atk/sltw/c/k$a;
    }
.end annotation


# instance fields
.field private A:Ljava/lang/Runnable;

.field private B:Ljava/lang/Runnable;

.field private C:Ljava/lang/Runnable;

.field private a:Ljava/lang/String;

.field private b:Landroid/widget/ImageView;

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:I

.field private i:F

.field private j:Z

.field private k:I

.field private l:Landroid/view/animation/Animation;

.field private m:[I

.field private n:I

.field private o:I

.field private p:Landroid/os/Handler;

.field private q:I

.field private r:F

.field private s:F

.field private t:F

.field private u:Z

.field private v:Z

.field private w:I

.field private x:Lcom/myscript/atk/sltw/c/k$a;

.field private y:Lcom/myscript/atk/sltw/c/k$b;

.field private z:Lcom/myscript/atk/sltw/c/k$c;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v4, p0, Lcom/myscript/atk/sltw/c/k;->v:Z

    iput v4, p0, Lcom/myscript/atk/sltw/c/k;->w:I

    new-instance v0, Lcom/myscript/atk/sltw/c/l;

    invoke-direct {v0, p0}, Lcom/myscript/atk/sltw/c/l;-><init>(Lcom/myscript/atk/sltw/c/k;)V

    iput-object v0, p0, Lcom/myscript/atk/sltw/c/k;->A:Ljava/lang/Runnable;

    new-instance v0, Lcom/myscript/atk/sltw/c/m;

    invoke-direct {v0, p0}, Lcom/myscript/atk/sltw/c/m;-><init>(Lcom/myscript/atk/sltw/c/k;)V

    iput-object v0, p0, Lcom/myscript/atk/sltw/c/k;->B:Ljava/lang/Runnable;

    new-instance v0, Lcom/myscript/atk/sltw/c/n;

    invoke-direct {v0, p0}, Lcom/myscript/atk/sltw/c/n;-><init>(Lcom/myscript/atk/sltw/c/k;)V

    iput-object v0, p0, Lcom/myscript/atk/sltw/c/k;->C:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/myscript/atk/sltw/c/k;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/myscript/atk/sltw/c/k;->b:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v1, v0}, Lcom/myscript/atk/sltw/b/a;->a(FLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/myscript/atk/sltw/c/k;->e:F

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/16 v0, 0xfa0

    iput v0, p0, Lcom/myscript/atk/sltw/c/k;->k:I

    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10a0001

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/myscript/atk/sltw/c/k;->l:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/k;->l:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/k;->l:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/k;->l:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/myscript/atk/sltw/c/k;->p:Landroid/os/Handler;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-le v0, v1, :cond_0

    invoke-direct {p0}, Lcom/myscript/atk/sltw/c/k;->g()Z

    move-result v0

    iput-boolean v0, p0, Lcom/myscript/atk/sltw/c/k;->v:Z

    invoke-virtual {p2}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    iput v0, p0, Lcom/myscript/atk/sltw/c/k;->w:I

    :cond_0
    invoke-direct {p0, v4}, Lcom/myscript/atk/sltw/c/k;->d(I)V

    return-void
.end method

.method static synthetic a(Lcom/myscript/atk/sltw/c/k;)I
    .locals 1

    iget v0, p0, Lcom/myscript/atk/sltw/c/k;->q:I

    return v0
.end method

.method static synthetic a(Lcom/myscript/atk/sltw/c/k;F)V
    .locals 1

    iput p1, p0, Lcom/myscript/atk/sltw/c/k;->s:F

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/k;->y:Lcom/myscript/atk/sltw/c/k$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/k;->y:Lcom/myscript/atk/sltw/c/k$b;

    invoke-interface {v0, p0, p1}, Lcom/myscript/atk/sltw/c/k$b;->b(Lcom/myscript/atk/sltw/c/k;F)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/myscript/atk/sltw/c/k;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/myscript/atk/sltw/c/k;->d(I)V

    return-void
.end method

.method static synthetic b(Lcom/myscript/atk/sltw/c/k;)I
    .locals 1

    iget v0, p0, Lcom/myscript/atk/sltw/c/k;->o:I

    return v0
.end method

.method static synthetic b(Lcom/myscript/atk/sltw/c/k;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/myscript/atk/sltw/c/k;->f(F)V

    return-void
.end method

.method static synthetic c(Lcom/myscript/atk/sltw/c/k;)Z
    .locals 1

    invoke-direct {p0}, Lcom/myscript/atk/sltw/c/k;->j()Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/myscript/atk/sltw/c/k;)F
    .locals 1

    iget v0, p0, Lcom/myscript/atk/sltw/c/k;->s:F

    return v0
.end method

.method private d(F)V
    .locals 4

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/k;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/myscript/atk/sltw/c/k;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-le v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/myscript/atk/sltw/c/k;->v:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/myscript/atk/sltw/c/k;->w:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/myscript/atk/sltw/c/k;->i:F

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v1, p1

    sub-float v1, v2, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    :goto_1
    iget-object v1, p0, Lcom/myscript/atk/sltw/c/k;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/myscript/atk/sltw/c/k;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    move v1, v0

    goto :goto_0

    :cond_1
    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    goto :goto_1

    :cond_2
    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_1
.end method

.method private d(I)V
    .locals 4

    packed-switch p1, :pswitch_data_0

    :goto_0
    iput p1, p0, Lcom/myscript/atk/sltw/c/k;->q:I

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/myscript/atk/sltw/c/k;->p:Landroid/os/Handler;

    iget-object v1, p0, Lcom/myscript/atk/sltw/c/k;->A:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/myscript/atk/sltw/c/k;->h()V

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/k;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/k;->b:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    iget-boolean v0, p0, Lcom/myscript/atk/sltw/c/k;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/k;->p:Landroid/os/Handler;

    iget-object v1, p0, Lcom/myscript/atk/sltw/c/k;->A:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/k;->p:Landroid/os/Handler;

    iget-object v1, p0, Lcom/myscript/atk/sltw/c/k;->A:Ljava/lang/Runnable;

    iget v2, p0, Lcom/myscript/atk/sltw/c/k;->k:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    invoke-direct {p0}, Lcom/myscript/atk/sltw/c/k;->h()V

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/k;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/k;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/myscript/atk/sltw/c/k;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/myscript/atk/sltw/c/k;->l:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/myscript/atk/sltw/c/k;->p:Landroid/os/Handler;

    iget-object v1, p0, Lcom/myscript/atk/sltw/c/k;->B:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/k;->p:Landroid/os/Handler;

    iget-object v1, p0, Lcom/myscript/atk/sltw/c/k;->B:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private e(F)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/myscript/atk/sltw/c/k;->u:Z

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/k;->y:Lcom/myscript/atk/sltw/c/k$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/k;->y:Lcom/myscript/atk/sltw/c/k$b;

    invoke-interface {v0, p0}, Lcom/myscript/atk/sltw/c/k$b;->a(Lcom/myscript/atk/sltw/c/k;)V

    :cond_0
    return-void
.end method

.method private e(I)V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lcom/myscript/atk/sltw/c/k;->o:I

    if-eq v0, p1, :cond_0

    sget-object v0, Lcom/myscript/atk/sltw/b/a;->b:[I

    iput-object v0, p0, Lcom/myscript/atk/sltw/c/k;->m:[I

    iput v3, p0, Lcom/myscript/atk/sltw/c/k;->n:I

    iput p1, p0, Lcom/myscript/atk/sltw/c/k;->o:I

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/k;->p:Landroid/os/Handler;

    iget-object v1, p0, Lcom/myscript/atk/sltw/c/k;->C:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/k;->p:Landroid/os/Handler;

    iget-object v1, p0, Lcom/myscript/atk/sltw/c/k;->C:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/myscript/atk/sltw/c/k;->m:[I

    aget v2, v2, v3

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/myscript/atk/sltw/c/k;)Z
    .locals 1

    invoke-direct {p0}, Lcom/myscript/atk/sltw/c/k;->k()Z

    move-result v0

    return v0
.end method

.method private f()I
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/k;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/myscript/atk/sltw/c/k;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    goto :goto_0
.end method

.method static synthetic f(Lcom/myscript/atk/sltw/c/k;)I
    .locals 2

    iget v0, p0, Lcom/myscript/atk/sltw/c/k;->n:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/myscript/atk/sltw/c/k;->n:I

    return v0
.end method

.method private f(F)V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput p1, p0, Lcom/myscript/atk/sltw/c/k;->s:F

    iget-object v2, p0, Lcom/myscript/atk/sltw/c/k;->y:Lcom/myscript/atk/sltw/c/k$b;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/myscript/atk/sltw/c/k;->f:F

    cmpg-float v2, p1, v2

    if-gez v2, :cond_1

    move v2, v0

    :goto_0
    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/myscript/atk/sltw/c/k;->j()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, p1}, Lcom/myscript/atk/sltw/c/k;->d(F)V

    invoke-direct {p0, v0}, Lcom/myscript/atk/sltw/c/k;->e(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/myscript/atk/sltw/c/k;->g:F

    cmpl-float v2, p1, v2

    if-lez v2, :cond_3

    :goto_2
    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/myscript/atk/sltw/c/k;->k()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p1}, Lcom/myscript/atk/sltw/c/k;->d(F)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/myscript/atk/sltw/c/k;->e(I)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    invoke-direct {p0, p1}, Lcom/myscript/atk/sltw/c/k;->d(F)V

    invoke-direct {p0}, Lcom/myscript/atk/sltw/c/k;->i()V

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/k;->y:Lcom/myscript/atk/sltw/c/k$b;

    invoke-interface {v0, p0, p1}, Lcom/myscript/atk/sltw/c/k$b;->a(Lcom/myscript/atk/sltw/c/k;F)V

    goto :goto_1
.end method

.method static synthetic g(Lcom/myscript/atk/sltw/c/k;)I
    .locals 1

    iget v0, p0, Lcom/myscript/atk/sltw/c/k;->n:I

    return v0
.end method

.method private g()Z
    .locals 5

    const/high16 v4, 0x400000

    const/4 v0, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-le v1, v2, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/myscript/atk/sltw/c/k;->b:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/myscript/atk/sltw/c/k;->b:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v1, "HandleViewController"

    const-string v2, "Geting getApplicationInfo for mIsSupportRTLSet is failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private h()V
    .locals 2

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/k;->p:Landroid/os/Handler;

    iget-object v1, p0, Lcom/myscript/atk/sltw/c/k;->B:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic h(Lcom/myscript/atk/sltw/c/k;)[I
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/k;->m:[I

    return-object v0
.end method

.method static synthetic i(Lcom/myscript/atk/sltw/c/k;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/k;->p:Landroid/os/Handler;

    return-object v0
.end method

.method private i()V
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/myscript/atk/sltw/c/k;->o:I

    if-eqz v0, :cond_0

    iput v1, p0, Lcom/myscript/atk/sltw/c/k;->n:I

    iput v1, p0, Lcom/myscript/atk/sltw/c/k;->o:I

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/k;->p:Landroid/os/Handler;

    iget-object v1, p0, Lcom/myscript/atk/sltw/c/k;->C:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private j()Z
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/k;->z:Lcom/myscript/atk/sltw/c/k$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/k;->z:Lcom/myscript/atk/sltw/c/k$c;

    invoke-interface {v0}, Lcom/myscript/atk/sltw/c/k$c;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private k()Z
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/k;->z:Lcom/myscript/atk/sltw/c/k$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/k;->z:Lcom/myscript/atk/sltw/c/k$c;

    invoke-interface {v0}, Lcom/myscript/atk/sltw/c/k$c;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 2

    invoke-direct {p0}, Lcom/myscript/atk/sltw/c/k;->f()I

    move-result v1

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/k;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final a(F)V
    .locals 1

    iput p1, p0, Lcom/myscript/atk/sltw/c/k;->i:F

    iget v0, p0, Lcom/myscript/atk/sltw/c/k;->c:F

    iput v0, p0, Lcom/myscript/atk/sltw/c/k;->f:F

    iget v0, p0, Lcom/myscript/atk/sltw/c/k;->d:F

    sub-float v0, p1, v0

    iput v0, p0, Lcom/myscript/atk/sltw/c/k;->g:F

    return-void
.end method

.method public final a(FF)V
    .locals 0

    iput p1, p0, Lcom/myscript/atk/sltw/c/k;->c:F

    iput p2, p0, Lcom/myscript/atk/sltw/c/k;->d:F

    return-void
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/myscript/atk/sltw/c/k;->h:I

    return-void
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/k;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final a(Lcom/myscript/atk/sltw/c/k$a;)V
    .locals 0

    iput-object p1, p0, Lcom/myscript/atk/sltw/c/k;->x:Lcom/myscript/atk/sltw/c/k$a;

    return-void
.end method

.method public final a(Lcom/myscript/atk/sltw/c/k$b;)V
    .locals 0

    iput-object p1, p0, Lcom/myscript/atk/sltw/c/k;->y:Lcom/myscript/atk/sltw/c/k$b;

    return-void
.end method

.method public final a(Lcom/myscript/atk/sltw/c/k$c;)V
    .locals 0

    iput-object p1, p0, Lcom/myscript/atk/sltw/c/k;->z:Lcom/myscript/atk/sltw/c/k$c;

    return-void
.end method

.method public final a(Z)V
    .locals 2

    const/4 v1, 0x2

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/myscript/atk/sltw/c/k;->q:I

    if-eq v0, v1, :cond_0

    invoke-direct {p0, v1}, Lcom/myscript/atk/sltw/c/k;->d(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/myscript/atk/sltw/c/k;->q:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/myscript/atk/sltw/c/k;->d(I)V

    goto :goto_0
.end method

.method public final b()F
    .locals 1

    iget v0, p0, Lcom/myscript/atk/sltw/c/k;->r:F

    return v0
.end method

.method public final b(F)V
    .locals 1

    iput p1, p0, Lcom/myscript/atk/sltw/c/k;->r:F

    iget-boolean v0, p0, Lcom/myscript/atk/sltw/c/k;->u:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/myscript/atk/sltw/c/k;->d(F)V

    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 2

    invoke-direct {p0}, Lcom/myscript/atk/sltw/c/k;->f()I

    move-result v0

    iget v1, p0, Lcom/myscript/atk/sltw/c/k;->h:I

    sub-int/2addr v1, v0

    if-le p1, v1, :cond_0

    iget v1, p0, Lcom/myscript/atk/sltw/c/k;->h:I

    sub-int p1, v1, v0

    :cond_0
    iget-object v0, p0, Lcom/myscript/atk/sltw/c/k;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/myscript/atk/sltw/c/k;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/myscript/atk/sltw/c/k;->j:Z

    return-void
.end method

.method public final c()V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lcom/myscript/atk/sltw/c/k;->r:F

    invoke-direct {p0, v0}, Lcom/myscript/atk/sltw/c/k;->d(F)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/k;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/myscript/atk/sltw/c/k;->b:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getRight()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget v2, p0, Lcom/myscript/atk/sltw/c/k;->r:F

    sub-float/2addr v0, v2

    invoke-direct {v1, v0, v3, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v1, v0}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/k;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/k;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public final c(F)V
    .locals 2

    iget v0, p0, Lcom/myscript/atk/sltw/c/k;->r:F

    sub-float v0, p1, v0

    iput p1, p0, Lcom/myscript/atk/sltw/c/k;->r:F

    iget-boolean v1, p0, Lcom/myscript/atk/sltw/c/k;->u:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/myscript/atk/sltw/c/k;->b:Landroid/widget/ImageView;

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->offsetLeftAndRight(I)V

    :cond_0
    return-void
.end method

.method public final c(I)V
    .locals 4

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/k;->l:Landroid/view/animation/Animation;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    return-void
.end method

.method public final d()Z
    .locals 1

    iget v0, p0, Lcom/myscript/atk/sltw/c/k;->o:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/myscript/atk/sltw/c/k;->u:Z

    return v0
.end method

.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget v0, p0, Lcom/myscript/atk/sltw/c/k;->q:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/myscript/atk/sltw/c/k;->d(I)V

    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return v3

    :pswitch_0
    iget-object v0, p0, Lcom/myscript/atk/sltw/c/k;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    add-float/2addr v0, v1

    invoke-direct {p0, v4}, Lcom/myscript/atk/sltw/c/k;->d(I)V

    iget-object v1, p0, Lcom/myscript/atk/sltw/c/k;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setPressed(Z)V

    iget-object v1, p0, Lcom/myscript/atk/sltw/c/k;->x:Lcom/myscript/atk/sltw/c/k$a;

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lcom/myscript/atk/sltw/c/k;->e(F)V

    goto :goto_0

    :cond_1
    iput v0, p0, Lcom/myscript/atk/sltw/c/k;->t:F

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/myscript/atk/sltw/c/k;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    add-float/2addr v0, v1

    iget-boolean v1, p0, Lcom/myscript/atk/sltw/c/k;->u:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/myscript/atk/sltw/c/k;->t:F

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/myscript/atk/sltw/c/k;->e:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    invoke-direct {p0, v0}, Lcom/myscript/atk/sltw/c/k;->e(F)V

    :cond_2
    iget-boolean v1, p0, Lcom/myscript/atk/sltw/c/k;->u:Z

    if-eqz v1, :cond_3

    invoke-direct {p0, v0}, Lcom/myscript/atk/sltw/c/k;->f(F)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v0}, Lcom/myscript/atk/sltw/c/k;->d(F)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/myscript/atk/sltw/c/k;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    add-float/2addr v0, v1

    invoke-direct {p0, v4}, Lcom/myscript/atk/sltw/c/k;->d(I)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/k;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setPressed(Z)V

    iget-boolean v0, p0, Lcom/myscript/atk/sltw/c/k;->u:Z

    if-eqz v0, :cond_4

    iput-boolean v2, p0, Lcom/myscript/atk/sltw/c/k;->u:Z

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/k;->y:Lcom/myscript/atk/sltw/c/k$b;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/myscript/atk/sltw/c/k;->i()V

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/k;->y:Lcom/myscript/atk/sltw/c/k$b;

    invoke-interface {v0, p0}, Lcom/myscript/atk/sltw/c/k$b;->b(Lcom/myscript/atk/sltw/c/k;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/myscript/atk/sltw/c/k;->x:Lcom/myscript/atk/sltw/c/k$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/k;->x:Lcom/myscript/atk/sltw/c/k$a;

    invoke-interface {v0, p0}, Lcom/myscript/atk/sltw/c/k$a;->c(Lcom/myscript/atk/sltw/c/k;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

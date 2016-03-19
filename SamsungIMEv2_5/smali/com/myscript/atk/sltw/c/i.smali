.class final Lcom/myscript/atk/sltw/c/i;
.super Ljava/lang/Object;
.source "CursorViewController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/myscript/atk/sltw/c/h;


# direct methods
.method constructor <init>(Lcom/myscript/atk/sltw/c/h;)V
    .locals 0

    iput-object p1, p0, Lcom/myscript/atk/sltw/c/i;->a:Lcom/myscript/atk/sltw/c/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/i;->a:Lcom/myscript/atk/sltw/c/h;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/c/h;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/i;->a:Lcom/myscript/atk/sltw/c/h;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/c/h;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/i;->a:Lcom/myscript/atk/sltw/c/h;

    invoke-static {v0}, Lcom/myscript/atk/sltw/c/h;->b(Lcom/myscript/atk/sltw/c/h;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/myscript/atk/sltw/c/i;->a:Lcom/myscript/atk/sltw/c/h;

    invoke-static {v1}, Lcom/myscript/atk/sltw/c/h;->a(Lcom/myscript/atk/sltw/c/h;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

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

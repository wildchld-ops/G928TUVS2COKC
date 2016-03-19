.class public final Lcom/myscript/atk/sltw/a/a;
.super Landroid/view/animation/Animation;
.source "InsertWindowAnimation.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/myscript/atk/sltw/a/a$a;
    }
.end annotation


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private e:Lcom/myscript/atk/sltw/a/a$a;


# direct methods
.method public constructor <init>(Lcom/myscript/atk/sltw/a/a$a;FFFF)V
    .locals 0

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    iput-object p1, p0, Lcom/myscript/atk/sltw/a/a;->e:Lcom/myscript/atk/sltw/a/a$a;

    iput p2, p0, Lcom/myscript/atk/sltw/a/a;->a:F

    iput p4, p0, Lcom/myscript/atk/sltw/a/a;->b:F

    iput p3, p0, Lcom/myscript/atk/sltw/a/a;->c:F

    iput p5, p0, Lcom/myscript/atk/sltw/a/a;->d:F

    invoke-virtual {p0, p0}, Lcom/myscript/atk/sltw/a/a;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method


# virtual methods
.method protected final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    iget v0, p0, Lcom/myscript/atk/sltw/a/a;->c:F

    iget v1, p0, Lcom/myscript/atk/sltw/a/a;->a:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/myscript/atk/sltw/a/a;->a:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/myscript/atk/sltw/a/a;->d:F

    iget v2, p0, Lcom/myscript/atk/sltw/a/a;->b:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/myscript/atk/sltw/a/a;->b:F

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/myscript/atk/sltw/a/a;->e:Lcom/myscript/atk/sltw/a/a$a;

    invoke-interface {v2, v0, v1}, Lcom/myscript/atk/sltw/a/a$a;->a(FF)V

    return-void
.end method

.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    iget-object v0, p0, Lcom/myscript/atk/sltw/a/a;->e:Lcom/myscript/atk/sltw/a/a$a;

    iget v1, p0, Lcom/myscript/atk/sltw/a/a;->c:F

    iget v2, p0, Lcom/myscript/atk/sltw/a/a;->d:F

    invoke-interface {v0, v1, v2}, Lcom/myscript/atk/sltw/a/a$a;->c(FF)V

    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 3

    iget-object v0, p0, Lcom/myscript/atk/sltw/a/a;->e:Lcom/myscript/atk/sltw/a/a$a;

    iget v1, p0, Lcom/myscript/atk/sltw/a/a;->a:F

    iget v2, p0, Lcom/myscript/atk/sltw/a/a;->b:F

    invoke-interface {v0, v1, v2}, Lcom/myscript/atk/sltw/a/a$a;->b(FF)V

    return-void
.end method

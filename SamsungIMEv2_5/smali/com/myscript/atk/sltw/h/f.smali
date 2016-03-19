.class public final Lcom/myscript/atk/sltw/h/f;
.super Landroid/widget/FrameLayout;
.source "VOModelView.java"

# interfaces
.implements Lcom/myscript/atk/sltw/f/b$a;


# instance fields
.field private a:Lcom/myscript/atk/sltw/h/i;

.field private b:Lcom/myscript/atk/sltw/h/g;

.field private c:Lcom/myscript/atk/sltw/h/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/myscript/atk/sltw/h/i;

    invoke-direct {v0, p1}, Lcom/myscript/atk/sltw/h/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/myscript/atk/sltw/h/f;->a:Lcom/myscript/atk/sltw/h/i;

    new-instance v0, Lcom/myscript/atk/sltw/h/g;

    invoke-direct {v0, p1}, Lcom/myscript/atk/sltw/h/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/myscript/atk/sltw/h/f;->b:Lcom/myscript/atk/sltw/h/g;

    new-instance v0, Lcom/myscript/atk/sltw/h/e;

    invoke-direct {v0, p1}, Lcom/myscript/atk/sltw/h/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/myscript/atk/sltw/h/f;->c:Lcom/myscript/atk/sltw/h/e;

    iget-object v0, p0, Lcom/myscript/atk/sltw/h/f;->c:Lcom/myscript/atk/sltw/h/e;

    invoke-virtual {p0, v0, v1, v1}, Lcom/myscript/atk/sltw/h/f;->addView(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/h/f;->a:Lcom/myscript/atk/sltw/h/i;

    invoke-virtual {p0, v0, v1, v1}, Lcom/myscript/atk/sltw/h/f;->addView(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/h/f;->b:Lcom/myscript/atk/sltw/h/g;

    invoke-virtual {p0, v0, v1, v1}, Lcom/myscript/atk/sltw/h/f;->addView(Landroid/view/View;II)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/h/f;->c:Lcom/myscript/atk/sltw/h/e;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/h/e;->a()V

    return-void
.end method

.method public final a(F)V
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/h/f;->a:Lcom/myscript/atk/sltw/h/i;

    invoke-virtual {v0, p1}, Lcom/myscript/atk/sltw/h/i;->a(F)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/h/f;->b:Lcom/myscript/atk/sltw/h/g;

    invoke-virtual {v0, p1}, Lcom/myscript/atk/sltw/h/g;->a(F)V

    return-void
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/h/f;->c:Lcom/myscript/atk/sltw/h/e;

    invoke-virtual {v0, p1}, Lcom/myscript/atk/sltw/h/e;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final a(Lcom/myscript/atk/sltw/f/c;)V
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/h/f;->b:Lcom/myscript/atk/sltw/h/g;

    invoke-virtual {v0, p1}, Lcom/myscript/atk/sltw/h/g;->b(Lcom/myscript/atk/sltw/f/c;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/h/f;->b:Lcom/myscript/atk/sltw/h/g;

    invoke-virtual {v0, p1}, Lcom/myscript/atk/sltw/h/g;->c(Lcom/myscript/atk/sltw/f/c;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/myscript/atk/sltw/f/d;)V
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/h/f;->a:Lcom/myscript/atk/sltw/h/i;

    invoke-virtual {v0, p1}, Lcom/myscript/atk/sltw/h/i;->c(Lcom/myscript/atk/sltw/f/d;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/h/f;->a:Lcom/myscript/atk/sltw/h/i;

    invoke-virtual {v0, p1}, Lcom/myscript/atk/sltw/h/i;->d(Lcom/myscript/atk/sltw/f/d;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/sltw/f/a;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/h/f;->c:Lcom/myscript/atk/sltw/h/e;

    invoke-virtual {v0, p1}, Lcom/myscript/atk/sltw/h/e;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final b(Lcom/myscript/atk/sltw/f/c;)V
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/h/f;->b:Lcom/myscript/atk/sltw/h/g;

    invoke-virtual {v0, p1}, Lcom/myscript/atk/sltw/h/g;->b(Lcom/myscript/atk/sltw/f/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/h/f;->b:Lcom/myscript/atk/sltw/h/g;

    invoke-virtual {v0, p1}, Lcom/myscript/atk/sltw/h/g;->d(Lcom/myscript/atk/sltw/f/c;)V

    :cond_0
    return-void
.end method

.method public final b(Lcom/myscript/atk/sltw/f/d;)V
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/h/f;->a:Lcom/myscript/atk/sltw/h/i;

    invoke-virtual {v0, p1}, Lcom/myscript/atk/sltw/h/i;->c(Lcom/myscript/atk/sltw/f/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/h/f;->a:Lcom/myscript/atk/sltw/h/i;

    invoke-virtual {v0, p1}, Lcom/myscript/atk/sltw/h/i;->e(Lcom/myscript/atk/sltw/f/d;)V

    :cond_0
    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/sltw/f/a;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/h/f;->c:Lcom/myscript/atk/sltw/h/e;

    invoke-virtual {v0, p1}, Lcom/myscript/atk/sltw/h/e;->b(Ljava/util/List;)V

    :cond_0
    return-void
.end method

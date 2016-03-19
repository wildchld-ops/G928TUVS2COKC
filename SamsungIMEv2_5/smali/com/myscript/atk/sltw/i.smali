.class final Lcom/myscript/atk/sltw/i;
.super Ljava/lang/Object;
.source "SingleLineTextWidget.java"

# interfaces
.implements Lcom/myscript/atk/sltw/g/b$a;


# instance fields
.field final synthetic a:Lcom/myscript/atk/sltw/SingleLineTextWidget;


# direct methods
.method constructor <init>(Lcom/myscript/atk/sltw/SingleLineTextWidget;)V
    .locals 0

    iput-object p1, p0, Lcom/myscript/atk/sltw/i;->a:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/myscript/atk/sltw/g/b;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/myscript/atk/sltw/i;->a:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->n(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Lcom/myscript/atk/sltw/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/e/b;->k()[Lcom/myscript/atk/sltw/f/d;

    move-result-object v0

    array-length v3, v0

    if-nez v3, :cond_2

    const/4 v0, 0x0

    move-object v3, v0

    :goto_0
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/myscript/atk/sltw/f/d;->B()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    move v1, v2

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/myscript/atk/sltw/i;->a:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->w(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Lcom/myscript/atk/sltw/c/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/c/k;->e()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/myscript/atk/sltw/i;->a:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v0, v2}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->i(Lcom/myscript/atk/sltw/SingleLineTextWidget;Z)Z

    :goto_2
    iget-object v0, p0, Lcom/myscript/atk/sltw/i;->a:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->y(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/myscript/atk/sltw/i;->a:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->n(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Lcom/myscript/atk/sltw/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/e/b;->g()F

    move-result v0

    iget-object v1, p0, Lcom/myscript/atk/sltw/i;->a:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v1}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->f(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Lcom/myscript/atk/sltw/h/a;

    move-result-object v1

    iget-object v3, p0, Lcom/myscript/atk/sltw/i;->a:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v3}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->z(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Lcom/myscript/atk/sltw/e/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/myscript/atk/sltw/e/a;->f()F

    move-result v3

    add-float/2addr v3, v0

    invoke-virtual {v1, v0, v3}, Lcom/myscript/atk/sltw/h/a;->a(FF)V

    :goto_3
    iget-object v0, p0, Lcom/myscript/atk/sltw/i;->a:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v0, v2}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->j(Lcom/myscript/atk/sltw/SingleLineTextWidget;Z)Z

    return-void

    :cond_2
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-object v0, v0, v3

    move-object v3, v0

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Lcom/myscript/atk/sltw/f/d;->v()Z

    move-result v0

    iget-object v4, p0, Lcom/myscript/atk/sltw/i;->a:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v4}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->n(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Lcom/myscript/atk/sltw/e/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/myscript/atk/sltw/e/b;->f()Z

    move-result v4

    if-ne v0, v4, :cond_6

    move v0, v1

    :goto_4
    invoke-virtual {v3}, Lcom/myscript/atk/sltw/f/d;->t()Lcom/myscript/atk/styluscore/Char;

    move-result-object v4

    iget-object v5, p0, Lcom/myscript/atk/sltw/i;->a:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v5}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->v(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Lcom/myscript/atk/sltw/f/d;->B()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v4}, Lcom/myscript/atk/styluscore/Char;->isCJCharacter()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v4}, Lcom/myscript/atk/styluscore/Char;->isCJKPunctuation()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v4}, Lcom/myscript/atk/styluscore/Char;->isThaiDigit()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v4}, Lcom/myscript/atk/styluscore/Char;->isThaiLetter()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v4}, Lcom/myscript/atk/styluscore/Char;->isThaiPunctuation()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v4}, Lcom/myscript/atk/styluscore/Char;->isDigit()Z

    move-result v3

    if-nez v3, :cond_4

    if-nez v0, :cond_1

    :cond_4
    iget-object v3, p0, Lcom/myscript/atk/sltw/i;->a:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v3}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->v(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz v0, :cond_1

    :cond_5
    move v1, v2

    goto/16 :goto_1

    :cond_6
    move v0, v2

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/myscript/atk/sltw/i;->a:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->n(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Lcom/myscript/atk/sltw/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/e/b;->f()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/myscript/atk/sltw/i;->a:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v0, v2}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->i(Lcom/myscript/atk/sltw/SingleLineTextWidget;Z)Z

    goto/16 :goto_2

    :cond_8
    iget-object v0, p0, Lcom/myscript/atk/sltw/i;->a:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->d(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Lcom/myscript/atk/sltw/f/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/a/b;->g()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/myscript/atk/sltw/i;->a:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    iget-object v1, p0, Lcom/myscript/atk/sltw/i;->a:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v1}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->x(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->i(Lcom/myscript/atk/sltw/SingleLineTextWidget;Z)Z

    goto/16 :goto_2

    :cond_9
    iget-object v0, p0, Lcom/myscript/atk/sltw/i;->a:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->isIsolatedMode()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/myscript/atk/sltw/i;->a:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v0, v2}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->i(Lcom/myscript/atk/sltw/SingleLineTextWidget;Z)Z

    goto/16 :goto_2

    :cond_a
    iget-object v0, p0, Lcom/myscript/atk/sltw/i;->a:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->isInsertionMode()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/myscript/atk/sltw/i;->a:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v0, v1}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->i(Lcom/myscript/atk/sltw/SingleLineTextWidget;Z)Z

    goto/16 :goto_2

    :cond_b
    iget-object v0, p0, Lcom/myscript/atk/sltw/i;->a:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v0, v2}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->i(Lcom/myscript/atk/sltw/SingleLineTextWidget;Z)Z

    goto/16 :goto_2

    :cond_c
    iget-object v0, p0, Lcom/myscript/atk/sltw/i;->a:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->f(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Lcom/myscript/atk/sltw/h/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/h/a;->a()V

    goto/16 :goto_3
.end method

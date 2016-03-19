.class final Lcom/myscript/atk/sltw/g;
.super Ljava/lang/Object;
.source "SingleLineTextWidget.java"

# interfaces
.implements Lcom/myscript/atk/sltw/g/b$a;


# instance fields
.field final synthetic a:Lcom/myscript/atk/sltw/SingleLineTextWidget;


# direct methods
.method constructor <init>(Lcom/myscript/atk/sltw/SingleLineTextWidget;)V
    .locals 0

    iput-object p1, p0, Lcom/myscript/atk/sltw/g;->a:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/myscript/atk/sltw/g/b;)V
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/myscript/atk/sltw/g;->a:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->l(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Lcom/myscript/atk/sltw/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/d/b;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/myscript/atk/sltw/g/b;->a()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/myscript/atk/sltw/g;->a:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->isIsolatedMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/myscript/atk/sltw/g;->a:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->c(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "TextWidget"

    const-string v1, "Isolated mode, canceling auto-typeset event"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/myscript/atk/sltw/g/b;->a()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/myscript/atk/sltw/g;->a:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->l(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Lcom/myscript/atk/sltw/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/d/b;->j()Z

    move-result v3

    if-nez v3, :cond_11

    iget-object v0, p0, Lcom/myscript/atk/sltw/g;->a:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->m(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/myscript/atk/sltw/g;->a:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->n(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Lcom/myscript/atk/sltw/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/e/b;->l()Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_2
    iget-object v0, p0, Lcom/myscript/atk/sltw/g;->a:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->isInsertionMode()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/myscript/atk/sltw/g;->a:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->h(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Lcom/myscript/atk/sltw/g/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/g/b;->f()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/myscript/atk/sltw/g;->a:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->n(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Lcom/myscript/atk/sltw/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/e/b;->m()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_3
    move v0, v2

    :goto_1
    iget-object v4, p0, Lcom/myscript/atk/sltw/g;->a:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v4}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->o(Lcom/myscript/atk/sltw/SingleLineTextWidget;)V

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/myscript/atk/sltw/g;->a:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->p(Lcom/myscript/atk/sltw/SingleLineTextWidget;)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/g;->a:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->q(Lcom/myscript/atk/sltw/SingleLineTextWidget;)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/g;->a:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->n(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Lcom/myscript/atk/sltw/e/b;

    move-result-object v0

    iget-object v4, p0, Lcom/myscript/atk/sltw/g;->a:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v4}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->m(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/myscript/atk/sltw/e/b;->b(Z)V

    :goto_2
    iget-object v0, p0, Lcom/myscript/atk/sltw/g;->a:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v0, v1}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->g(Lcom/myscript/atk/sltw/SingleLineTextWidget;Z)V

    move v0, v2

    :goto_3
    if-nez v3, :cond_10

    iget-object v3, p0, Lcom/myscript/atk/sltw/g;->a:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v3}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->m(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/myscript/atk/sltw/g;->a:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v3}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->r(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Lcom/myscript/atk/sltw/e/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/myscript/atk/sltw/e/b;->l()Z

    move-result v3

    if-eqz v3, :cond_10

    :cond_4
    iget-object v0, p0, Lcom/myscript/atk/sltw/g;->a:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->h(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Lcom/myscript/atk/sltw/g/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/g/b;->f()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/myscript/atk/sltw/g;->a:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->r(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Lcom/myscript/atk/sltw/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/e/b;->m()Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v2

    :goto_4
    iget-object v3, p0, Lcom/myscript/atk/sltw/g;->a:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v3}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->o(Lcom/myscript/atk/sltw/SingleLineTextWidget;)V

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/myscript/atk/sltw/g;->a:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->c(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/myscript/atk/sltw/g;->a:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->r(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Lcom/myscript/atk/sltw/e/b;

    move-result-object v3

    iget-object v0, p0, Lcom/myscript/atk/sltw/g;->a:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->m(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/myscript/atk/sltw/g;->a:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->s(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_5
    move v0, v2

    :goto_5
    invoke-virtual {v3, v0}, Lcom/myscript/atk/sltw/e/b;->b(Z)V

    move v0, v2

    :goto_6
    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/myscript/atk/sltw/g;->a:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->isInsertionMode()Z

    move-result v2

    if-nez v2, :cond_e

    iget-object v2, p0, Lcom/myscript/atk/sltw/g;->a:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v2}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->a(Lcom/myscript/atk/sltw/SingleLineTextWidget;)V

    :cond_6
    :goto_7
    iget-object v2, p0, Lcom/myscript/atk/sltw/g;->a:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v2, v1}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->f(Lcom/myscript/atk/sltw/SingleLineTextWidget;Z)Z

    iget-object v2, p0, Lcom/myscript/atk/sltw/g;->a:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v2}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->f(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Lcom/myscript/atk/sltw/h/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/h/a;->b()V

    iget-object v2, p0, Lcom/myscript/atk/sltw/g;->a:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v2}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->k(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Lcom/myscript/atk/sltw/g/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/g/b;->b()V

    iget-object v2, p0, Lcom/myscript/atk/sltw/g;->a:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v2, v1}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->d(Lcom/myscript/atk/sltw/SingleLineTextWidget;Z)Z

    iget-object v2, p0, Lcom/myscript/atk/sltw/g;->a:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v2, v1}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->e(Lcom/myscript/atk/sltw/SingleLineTextWidget;Z)Z

    :cond_7
    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/myscript/atk/sltw/g;->a:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v0, v1}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->h(Lcom/myscript/atk/sltw/SingleLineTextWidget;Z)Z

    :cond_8
    invoke-virtual {p1}, Lcom/myscript/atk/sltw/g/b;->e()V

    goto/16 :goto_0

    :cond_9
    move v0, v1

    goto/16 :goto_1

    :cond_a
    iget-object v0, p0, Lcom/myscript/atk/sltw/g;->a:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->p(Lcom/myscript/atk/sltw/SingleLineTextWidget;)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/g;->a:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->n(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Lcom/myscript/atk/sltw/e/b;

    move-result-object v0

    iget-object v4, p0, Lcom/myscript/atk/sltw/g;->a:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v4}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->m(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/myscript/atk/sltw/e/b;->a(Z)V

    goto/16 :goto_2

    :cond_b
    move v0, v1

    goto :goto_4

    :cond_c
    move v0, v1

    goto :goto_5

    :cond_d
    iget-object v0, p0, Lcom/myscript/atk/sltw/g;->a:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->r(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Lcom/myscript/atk/sltw/e/b;

    move-result-object v0

    iget-object v3, p0, Lcom/myscript/atk/sltw/g;->a:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v3}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->m(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/myscript/atk/sltw/e/b;->a(Z)V

    move v0, v1

    goto :goto_6

    :cond_e
    iget-object v2, p0, Lcom/myscript/atk/sltw/g;->a:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v2}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->t(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Lcom/myscript/atk/sltw/g/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/g/b;->d()Z

    move-result v2

    if-nez v2, :cond_f

    iget-object v2, p0, Lcom/myscript/atk/sltw/g;->a:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v2}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->c(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Z

    move-result v2

    if-nez v2, :cond_f

    iget-object v2, p0, Lcom/myscript/atk/sltw/g;->a:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v2}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->t(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Lcom/myscript/atk/sltw/g/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/g/b;->b()V

    goto :goto_7

    :cond_f
    iget-object v2, p0, Lcom/myscript/atk/sltw/g;->a:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v2}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->c(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/myscript/atk/sltw/g;->a:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v2}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->u(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Lcom/myscript/atk/sltw/c/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/c/c;->a()F

    move-result v2

    iget-object v3, p0, Lcom/myscript/atk/sltw/g;->a:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v3}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->t(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Lcom/myscript/atk/sltw/g/b;

    move-result-object v3

    iget-object v4, p0, Lcom/myscript/atk/sltw/g;->a:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v4, v2}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->a(Lcom/myscript/atk/sltw/SingleLineTextWidget;F)I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/myscript/atk/sltw/g/b;->b(I)V

    goto/16 :goto_7

    :cond_10
    move v2, v0

    move v0, v1

    goto/16 :goto_6

    :cond_11
    move v0, v1

    goto/16 :goto_3
.end method

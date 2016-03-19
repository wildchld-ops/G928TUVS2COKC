.class final Lcom/myscript/atk/sltw/k;
.super Ljava/lang/Object;
.source "SingleLineTextWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/myscript/atk/styluscore/InkField;

.field final synthetic b:Z

.field final synthetic c:Lcom/myscript/atk/sltw/SingleLineTextWidget;


# direct methods
.method constructor <init>(Lcom/myscript/atk/sltw/SingleLineTextWidget;Lcom/myscript/atk/styluscore/InkField;Z)V
    .locals 0

    iput-object p1, p0, Lcom/myscript/atk/sltw/k;->c:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    iput-object p2, p0, Lcom/myscript/atk/sltw/k;->a:Lcom/myscript/atk/styluscore/InkField;

    iput-boolean p3, p0, Lcom/myscript/atk/sltw/k;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/myscript/atk/sltw/k;->c:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->d(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Lcom/myscript/atk/sltw/f/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/a/b;->i()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    :goto_0
    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/myscript/atk/sltw/k;->a:Lcom/myscript/atk/styluscore/InkField;

    invoke-virtual {v3}, Lcom/myscript/atk/styluscore/InkField;->items()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/styluscore/InkItem;

    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Lcom/myscript/atk/styluscore/InkItem;->is(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    :goto_1
    if-eqz v0, :cond_4

    :cond_1
    :goto_2
    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    invoke-static {v3}, Lcom/myscript/atk/sltw/d/a/e;->c(Lcom/myscript/atk/styluscore/InkField;)Z

    move-result v0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/myscript/atk/sltw/k;->a:Lcom/myscript/atk/styluscore/InkField;

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/InkField;->items()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/styluscore/InkItem;

    invoke-virtual {v0, v2}, Lcom/myscript/atk/styluscore/InkItem;->is(I)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    :goto_3
    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/myscript/atk/sltw/k;->c:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->isIsolatedMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_6
    iget-object v0, p0, Lcom/myscript/atk/sltw/k;->c:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->B(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/myscript/atk/sltw/k;->c:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->C(Lcom/myscript/atk/sltw/SingleLineTextWidget;)I

    iget-object v0, p0, Lcom/myscript/atk/sltw/k;->c:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->D(Lcom/myscript/atk/sltw/SingleLineTextWidget;)I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Too many desynchronization between SC and Widget"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    move v0, v1

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/myscript/atk/sltw/k;->c:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v0, v1}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->a(Lcom/myscript/atk/sltw/SingleLineTextWidget;I)I

    iget-object v0, p0, Lcom/myscript/atk/sltw/k;->a:Lcom/myscript/atk/styluscore/InkField;

    iget-boolean v3, p0, Lcom/myscript/atk/sltw/k;->b:Z

    if-nez v3, :cond_9

    iget-object v0, p0, Lcom/myscript/atk/sltw/k;->c:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->E(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Lcom/myscript/atk/sltw/f/a/a;

    move-result-object v0

    iget-object v3, p0, Lcom/myscript/atk/sltw/k;->a:Lcom/myscript/atk/styluscore/InkField;

    invoke-virtual {v0, v3}, Lcom/myscript/atk/sltw/f/a/a;->a(Lcom/myscript/atk/styluscore/InkField;)Lcom/myscript/atk/styluscore/InkField;

    move-result-object v0

    :cond_9
    iget-object v3, p0, Lcom/myscript/atk/sltw/k;->c:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v3}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->F(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Lcom/myscript/atk/sltw/d/a/e;

    move-result-object v3

    iget-boolean v4, p0, Lcom/myscript/atk/sltw/k;->b:Z

    invoke-virtual {v3, v0, v4}, Lcom/myscript/atk/sltw/d/a/e;->a(Lcom/myscript/atk/styluscore/InkField;Z)Z

    move-result v3

    iget-object v4, p0, Lcom/myscript/atk/sltw/k;->c:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v4}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->n(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Lcom/myscript/atk/sltw/e/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/myscript/atk/sltw/e/b;->j()V

    iget-object v4, p0, Lcom/myscript/atk/sltw/k;->c:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v4}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->n(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Lcom/myscript/atk/sltw/e/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/myscript/atk/sltw/e/b;->h()V

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/myscript/atk/sltw/k;->c:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v3}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->G(Lcom/myscript/atk/sltw/SingleLineTextWidget;)V

    :cond_a
    iget-boolean v3, p0, Lcom/myscript/atk/sltw/k;->b:Z

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/myscript/atk/sltw/k;->c:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v3}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->d(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Lcom/myscript/atk/sltw/f/a/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/myscript/atk/sltw/f/a/b;->e()Z

    :cond_b
    invoke-static {v0}, Lcom/myscript/atk/sltw/d/a/e;->c(Lcom/myscript/atk/styluscore/InkField;)Z

    move-result v3

    iget-object v0, p0, Lcom/myscript/atk/sltw/k;->c:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->isIsolatedMode()Z

    move-result v0

    if-eqz v0, :cond_14

    if-nez v3, :cond_c

    iget-object v0, p0, Lcom/myscript/atk/sltw/k;->c:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->d(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Lcom/myscript/atk/sltw/f/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/a/b;->n()Z

    move-result v0

    if-nez v0, :cond_13

    :cond_c
    move v0, v2

    :goto_4
    if-nez v0, :cond_d

    iget-object v2, p0, Lcom/myscript/atk/sltw/k;->c:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v2}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H(Lcom/myscript/atk/sltw/SingleLineTextWidget;)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_d

    iget-object v2, p0, Lcom/myscript/atk/sltw/k;->c:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v2}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->d(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Lcom/myscript/atk/sltw/f/a/b;

    move-result-object v2

    iget-object v4, p0, Lcom/myscript/atk/sltw/k;->c:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v4}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H(Lcom/myscript/atk/sltw/SingleLineTextWidget;)I

    move-result v4

    iget-object v5, p0, Lcom/myscript/atk/sltw/k;->c:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v5}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->I(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Lcom/myscript/atk/sltw/f/b/a;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/myscript/atk/sltw/f/a/b;->a(ILcom/myscript/atk/sltw/f/b/a;)V

    :cond_d
    iget-object v2, p0, Lcom/myscript/atk/sltw/k;->c:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v2, v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->k(Lcom/myscript/atk/sltw/SingleLineTextWidget;Z)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/k;->c:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->c(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/myscript/atk/sltw/k;->c:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->d(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Lcom/myscript/atk/sltw/f/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/a/b;->e()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/myscript/atk/sltw/k;->c:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->d(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Lcom/myscript/atk/sltw/f/a/b;

    move-result-object v0

    iget-object v2, p0, Lcom/myscript/atk/sltw/k;->c:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v2}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->J(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Lcom/myscript/atk/sltw/c/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/c/e;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/myscript/atk/sltw/f/a/b;->g(I)V

    :cond_e
    :goto_5
    if-nez v3, :cond_1

    iget-object v0, p0, Lcom/myscript/atk/sltw/k;->c:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->K(Lcom/myscript/atk/sltw/SingleLineTextWidget;)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/k;->c:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->d(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Lcom/myscript/atk/sltw/f/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/a/b;->g()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/myscript/atk/sltw/k;->c:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->L(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Lcom/myscript/atk/sltw/f/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/a/b;->g()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/myscript/atk/sltw/k;->c:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->M(Lcom/myscript/atk/sltw/SingleLineTextWidget;)V

    :cond_f
    iget-object v0, p0, Lcom/myscript/atk/sltw/k;->c:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->g(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Lcom/myscript/atk/sltw/g/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/g/b;->f()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/myscript/atk/sltw/k;->c:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->g(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Lcom/myscript/atk/sltw/g/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/g/b;->b()V

    :cond_10
    iget-object v0, p0, Lcom/myscript/atk/sltw/k;->c:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->h(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Lcom/myscript/atk/sltw/g/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/g/b;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/myscript/atk/sltw/k;->c:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->N(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/myscript/atk/sltw/k;->c:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v0, v1}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->g(Lcom/myscript/atk/sltw/SingleLineTextWidget;Z)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/k;->c:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->f(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Lcom/myscript/atk/sltw/h/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/h/a;->b()V

    iget-object v0, p0, Lcom/myscript/atk/sltw/k;->c:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->k(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Lcom/myscript/atk/sltw/g/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/g/b;->b()V

    iget-object v0, p0, Lcom/myscript/atk/sltw/k;->c:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->isIsolatedMode()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/myscript/atk/sltw/k;->c:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->isInsertionMode()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/myscript/atk/sltw/k;->c:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->O(Lcom/myscript/atk/sltw/SingleLineTextWidget;)V

    :cond_11
    :goto_6
    iget-object v0, p0, Lcom/myscript/atk/sltw/k;->c:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v0, v1}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->l(Lcom/myscript/atk/sltw/SingleLineTextWidget;Z)Z

    :cond_12
    iget-object v0, p0, Lcom/myscript/atk/sltw/k;->c:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->h(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Lcom/myscript/atk/sltw/g/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/g/b;->b()V

    goto/16 :goto_2

    :cond_13
    move v0, v1

    goto/16 :goto_4

    :cond_14
    if-nez v3, :cond_15

    iget-object v0, p0, Lcom/myscript/atk/sltw/k;->c:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->d(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Lcom/myscript/atk/sltw/f/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/a/b;->m()Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_15
    :goto_7
    move v0, v2

    goto/16 :goto_4

    :cond_16
    move v2, v1

    goto :goto_7

    :cond_17
    iget-object v0, p0, Lcom/myscript/atk/sltw/k;->c:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->d(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Lcom/myscript/atk/sltw/f/a/b;

    move-result-object v0

    iget-object v2, p0, Lcom/myscript/atk/sltw/k;->c:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v2}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->J(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Lcom/myscript/atk/sltw/c/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/c/e;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/myscript/atk/sltw/f/a/b;->h(I)V

    goto/16 :goto_5

    :cond_18
    iget-object v0, p0, Lcom/myscript/atk/sltw/k;->c:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->a(Lcom/myscript/atk/sltw/SingleLineTextWidget;)V

    goto :goto_6
.end method

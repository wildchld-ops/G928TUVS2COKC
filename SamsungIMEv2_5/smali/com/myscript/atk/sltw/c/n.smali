.class final Lcom/myscript/atk/sltw/c/n;
.super Ljava/lang/Object;
.source "HandleViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/myscript/atk/sltw/c/k;


# direct methods
.method constructor <init>(Lcom/myscript/atk/sltw/c/k;)V
    .locals 0

    iput-object p1, p0, Lcom/myscript/atk/sltw/c/n;->a:Lcom/myscript/atk/sltw/c/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/n;->a:Lcom/myscript/atk/sltw/c/k;

    invoke-static {v0}, Lcom/myscript/atk/sltw/c/k;->b(Lcom/myscript/atk/sltw/c/k;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/n;->a:Lcom/myscript/atk/sltw/c/k;

    invoke-static {v0}, Lcom/myscript/atk/sltw/c/k;->c(Lcom/myscript/atk/sltw/c/k;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/n;->a:Lcom/myscript/atk/sltw/c/k;

    iget-object v1, p0, Lcom/myscript/atk/sltw/c/n;->a:Lcom/myscript/atk/sltw/c/k;

    invoke-static {v1}, Lcom/myscript/atk/sltw/c/k;->d(Lcom/myscript/atk/sltw/c/k;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/myscript/atk/sltw/c/k;->a(Lcom/myscript/atk/sltw/c/k;F)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/myscript/atk/sltw/c/n;->a:Lcom/myscript/atk/sltw/c/k;

    invoke-static {v0}, Lcom/myscript/atk/sltw/c/k;->b(Lcom/myscript/atk/sltw/c/k;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/n;->a:Lcom/myscript/atk/sltw/c/k;

    invoke-static {v0}, Lcom/myscript/atk/sltw/c/k;->e(Lcom/myscript/atk/sltw/c/k;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/n;->a:Lcom/myscript/atk/sltw/c/k;

    iget-object v1, p0, Lcom/myscript/atk/sltw/c/n;->a:Lcom/myscript/atk/sltw/c/k;

    invoke-static {v1}, Lcom/myscript/atk/sltw/c/k;->d(Lcom/myscript/atk/sltw/c/k;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/myscript/atk/sltw/c/k;->a(Lcom/myscript/atk/sltw/c/k;F)V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/myscript/atk/sltw/c/n;->a:Lcom/myscript/atk/sltw/c/k;

    invoke-static {v0}, Lcom/myscript/atk/sltw/c/k;->b(Lcom/myscript/atk/sltw/c/k;)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/n;->a:Lcom/myscript/atk/sltw/c/k;

    invoke-static {v0}, Lcom/myscript/atk/sltw/c/k;->f(Lcom/myscript/atk/sltw/c/k;)I

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/n;->a:Lcom/myscript/atk/sltw/c/k;

    invoke-static {v0}, Lcom/myscript/atk/sltw/c/k;->g(Lcom/myscript/atk/sltw/c/k;)I

    move-result v0

    iget-object v1, p0, Lcom/myscript/atk/sltw/c/n;->a:Lcom/myscript/atk/sltw/c/k;

    invoke-static {v1}, Lcom/myscript/atk/sltw/c/k;->h(Lcom/myscript/atk/sltw/c/k;)[I

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_5

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/n;->a:Lcom/myscript/atk/sltw/c/k;

    invoke-static {v0}, Lcom/myscript/atk/sltw/c/k;->h(Lcom/myscript/atk/sltw/c/k;)[I

    move-result-object v0

    iget-object v1, p0, Lcom/myscript/atk/sltw/c/n;->a:Lcom/myscript/atk/sltw/c/k;

    invoke-static {v1}, Lcom/myscript/atk/sltw/c/k;->g(Lcom/myscript/atk/sltw/c/k;)I

    move-result v1

    aget v0, v0, v1

    :goto_2
    iget-object v1, p0, Lcom/myscript/atk/sltw/c/n;->a:Lcom/myscript/atk/sltw/c/k;

    invoke-static {v1}, Lcom/myscript/atk/sltw/c/k;->i(Lcom/myscript/atk/sltw/c/k;)Landroid/os/Handler;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/myscript/atk/sltw/c/n;->a:Lcom/myscript/atk/sltw/c/k;

    iget-object v1, p0, Lcom/myscript/atk/sltw/c/n;->a:Lcom/myscript/atk/sltw/c/k;

    invoke-static {v1}, Lcom/myscript/atk/sltw/c/k;->d(Lcom/myscript/atk/sltw/c/k;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/myscript/atk/sltw/c/k;->b(Lcom/myscript/atk/sltw/c/k;F)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/myscript/atk/sltw/c/n;->a:Lcom/myscript/atk/sltw/c/k;

    iget-object v1, p0, Lcom/myscript/atk/sltw/c/n;->a:Lcom/myscript/atk/sltw/c/k;

    invoke-static {v1}, Lcom/myscript/atk/sltw/c/k;->d(Lcom/myscript/atk/sltw/c/k;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/myscript/atk/sltw/c/k;->b(Lcom/myscript/atk/sltw/c/k;F)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/myscript/atk/sltw/c/n;->a:Lcom/myscript/atk/sltw/c/k;

    invoke-static {v0}, Lcom/myscript/atk/sltw/c/k;->h(Lcom/myscript/atk/sltw/c/k;)[I

    move-result-object v0

    iget-object v1, p0, Lcom/myscript/atk/sltw/c/n;->a:Lcom/myscript/atk/sltw/c/k;

    invoke-static {v1}, Lcom/myscript/atk/sltw/c/k;->h(Lcom/myscript/atk/sltw/c/k;)[I

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    goto :goto_2
.end method

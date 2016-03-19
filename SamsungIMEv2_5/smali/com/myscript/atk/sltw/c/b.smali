.class final Lcom/myscript/atk/sltw/c/b;
.super Ljava/lang/Object;
.source "ArrowScrollController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/myscript/atk/sltw/c/a;


# direct methods
.method constructor <init>(Lcom/myscript/atk/sltw/c/a;)V
    .locals 0

    iput-object p1, p0, Lcom/myscript/atk/sltw/c/b;->a:Lcom/myscript/atk/sltw/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/b;->a:Lcom/myscript/atk/sltw/c/a;

    invoke-static {v0}, Lcom/myscript/atk/sltw/c/a;->a(Lcom/myscript/atk/sltw/c/a;)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/b;->a:Lcom/myscript/atk/sltw/c/a;

    invoke-static {v0}, Lcom/myscript/atk/sltw/c/a;->b(Lcom/myscript/atk/sltw/c/a;)I

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/b;->a:Lcom/myscript/atk/sltw/c/a;

    invoke-static {v0}, Lcom/myscript/atk/sltw/c/a;->c(Lcom/myscript/atk/sltw/c/a;)I

    move-result v0

    iget-object v1, p0, Lcom/myscript/atk/sltw/c/b;->a:Lcom/myscript/atk/sltw/c/a;

    invoke-static {v1}, Lcom/myscript/atk/sltw/c/a;->d(Lcom/myscript/atk/sltw/c/a;)[I

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/b;->a:Lcom/myscript/atk/sltw/c/a;

    invoke-static {v0}, Lcom/myscript/atk/sltw/c/a;->d(Lcom/myscript/atk/sltw/c/a;)[I

    move-result-object v0

    iget-object v1, p0, Lcom/myscript/atk/sltw/c/b;->a:Lcom/myscript/atk/sltw/c/a;

    invoke-static {v1}, Lcom/myscript/atk/sltw/c/a;->c(Lcom/myscript/atk/sltw/c/a;)I

    move-result v1

    aget v0, v0, v1

    :goto_0
    iget-object v1, p0, Lcom/myscript/atk/sltw/c/b;->a:Lcom/myscript/atk/sltw/c/a;

    invoke-static {v1}, Lcom/myscript/atk/sltw/c/a;->e(Lcom/myscript/atk/sltw/c/a;)Landroid/os/Handler;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/myscript/atk/sltw/c/b;->a:Lcom/myscript/atk/sltw/c/a;

    invoke-static {v0}, Lcom/myscript/atk/sltw/c/a;->d(Lcom/myscript/atk/sltw/c/a;)[I

    move-result-object v0

    iget-object v1, p0, Lcom/myscript/atk/sltw/c/b;->a:Lcom/myscript/atk/sltw/c/a;

    invoke-static {v1}, Lcom/myscript/atk/sltw/c/a;->d(Lcom/myscript/atk/sltw/c/a;)[I

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    goto :goto_0
.end method

.class final Lcom/myscript/atk/sltw/c/l;
.super Ljava/lang/Object;
.source "HandleViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/myscript/atk/sltw/c/k;


# direct methods
.method constructor <init>(Lcom/myscript/atk/sltw/c/k;)V
    .locals 0

    iput-object p1, p0, Lcom/myscript/atk/sltw/c/l;->a:Lcom/myscript/atk/sltw/c/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/l;->a:Lcom/myscript/atk/sltw/c/k;

    invoke-static {v0}, Lcom/myscript/atk/sltw/c/k;->a(Lcom/myscript/atk/sltw/c/k;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/l;->a:Lcom/myscript/atk/sltw/c/k;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/myscript/atk/sltw/c/k;->a(Lcom/myscript/atk/sltw/c/k;I)V

    :cond_0
    return-void
.end method

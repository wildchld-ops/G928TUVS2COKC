.class final Lcom/myscript/atk/sltw/g/e;
.super Lcom/myscript/atk/sltw/g/d$a;
.source "SafeHandler.java"


# instance fields
.field final synthetic a:Lcom/myscript/atk/sltw/g/d$b;


# direct methods
.method constructor <init>(Lcom/myscript/atk/sltw/g/d$b;)V
    .locals 1

    iput-object p1, p0, Lcom/myscript/atk/sltw/g/e;->a:Lcom/myscript/atk/sltw/g/d$b;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/myscript/atk/sltw/g/d$a;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/g/e;->a:Lcom/myscript/atk/sltw/g/d$b;

    invoke-interface {v0, p1}, Lcom/myscript/atk/sltw/g/d$b;->a(Landroid/os/Message;)V

    return-void
.end method

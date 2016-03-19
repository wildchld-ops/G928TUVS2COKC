.class final Lcom/myscript/atk/sltw/j;
.super Ljava/lang/Object;
.source "SingleLineTextWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/myscript/atk/sltw/SingleLineTextWidget;


# direct methods
.method constructor <init>(Lcom/myscript/atk/sltw/SingleLineTextWidget;I)V
    .locals 0

    iput-object p1, p0, Lcom/myscript/atk/sltw/j;->b:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    iput p2, p0, Lcom/myscript/atk/sltw/j;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/myscript/atk/sltw/j;->b:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->A(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    iget v1, p0, Lcom/myscript/atk/sltw/j;->a:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

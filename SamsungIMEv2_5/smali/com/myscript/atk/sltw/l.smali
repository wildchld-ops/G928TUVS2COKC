.class final Lcom/myscript/atk/sltw/l;
.super Ljava/lang/Object;
.source "SingleLineTextWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Z

.field final synthetic c:Lcom/myscript/atk/sltw/SingleLineTextWidget;


# direct methods
.method constructor <init>(Lcom/myscript/atk/sltw/SingleLineTextWidget;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/myscript/atk/sltw/l;->c:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    iput p2, p0, Lcom/myscript/atk/sltw/l;->a:I

    iput-boolean p3, p0, Lcom/myscript/atk/sltw/l;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/myscript/atk/sltw/l;->c:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    iget v1, p0, Lcom/myscript/atk/sltw/l;->a:I

    iget-boolean v2, p0, Lcom/myscript/atk/sltw/l;->b:Z

    invoke-static {v0, v1, v2}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->a(Lcom/myscript/atk/sltw/SingleLineTextWidget;IZ)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/l;->c:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->b(Lcom/myscript/atk/sltw/SingleLineTextWidget;Z)Z

    return-void
.end method

.class final Lcom/myscript/atk/sltw/f;
.super Ljava/lang/Object;
.source "SingleLineTextWidget.java"

# interfaces
.implements Lcom/myscript/atk/sltw/g/b$a;


# instance fields
.field final synthetic a:Lcom/myscript/atk/sltw/SingleLineTextWidget;


# direct methods
.method constructor <init>(Lcom/myscript/atk/sltw/SingleLineTextWidget;)V
    .locals 0

    iput-object p1, p0, Lcom/myscript/atk/sltw/f;->a:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/myscript/atk/sltw/g/b;)V
    .locals 2

    iget-object v0, p0, Lcom/myscript/atk/sltw/f;->a:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->isIsolatedMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/f;->a:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->c(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/myscript/atk/sltw/g/b;->a()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/myscript/atk/sltw/f;->a:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->i(Lcom/myscript/atk/sltw/SingleLineTextWidget;)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/f;->a:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->j(Lcom/myscript/atk/sltw/SingleLineTextWidget;)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/f;->a:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->k(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Lcom/myscript/atk/sltw/g/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/g/b;->b()V

    iget-object v0, p0, Lcom/myscript/atk/sltw/f;->a:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->d(Lcom/myscript/atk/sltw/SingleLineTextWidget;Z)Z

    goto :goto_0
.end method

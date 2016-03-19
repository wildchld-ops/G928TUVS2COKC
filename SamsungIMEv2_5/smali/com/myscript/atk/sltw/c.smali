.class final Lcom/myscript/atk/sltw/c;
.super Ljava/lang/Object;
.source "SingleLineTextWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/myscript/atk/sltw/SingleLineTextWidget;


# direct methods
.method constructor <init>(Lcom/myscript/atk/sltw/SingleLineTextWidget;)V
    .locals 0

    iput-object p1, p0, Lcom/myscript/atk/sltw/c;->a:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/myscript/atk/sltw/c;->a:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->e(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Lcom/myscript/atk/sltw/SingleLineTextWidget$OnDataTrackingListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/c;->a:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->e(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Lcom/myscript/atk/sltw/SingleLineTextWidget$OnDataTrackingListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget$OnDataTrackingListener;->onDataTrackingOverwriteGesture()V

    :cond_0
    iget-object v0, p0, Lcom/myscript/atk/sltw/c;->a:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->f(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Lcom/myscript/atk/sltw/h/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/h/a;->b()V

    iget-object v0, p0, Lcom/myscript/atk/sltw/c;->a:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->g(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Lcom/myscript/atk/sltw/g/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/g/b;->e()V

    iget-object v0, p0, Lcom/myscript/atk/sltw/c;->a:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v0, v1}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->d(Lcom/myscript/atk/sltw/SingleLineTextWidget;Z)Z

    iget-object v0, p0, Lcom/myscript/atk/sltw/c;->a:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v0, v1}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->e(Lcom/myscript/atk/sltw/SingleLineTextWidget;Z)Z

    return-void
.end method

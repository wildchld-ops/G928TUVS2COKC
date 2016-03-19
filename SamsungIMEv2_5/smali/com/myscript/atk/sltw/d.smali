.class final Lcom/myscript/atk/sltw/d;
.super Ljava/lang/Object;
.source "SingleLineTextWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:F

.field final synthetic b:Lcom/myscript/atk/sltw/SingleLineTextWidget;


# direct methods
.method constructor <init>(Lcom/myscript/atk/sltw/SingleLineTextWidget;F)V
    .locals 0

    iput-object p1, p0, Lcom/myscript/atk/sltw/d;->b:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    iput p2, p0, Lcom/myscript/atk/sltw/d;->a:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/myscript/atk/sltw/d;->b:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->b(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnGestureListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/d;->b:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->d(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Lcom/myscript/atk/sltw/f/a/b;

    move-result-object v0

    iget v1, p0, Lcom/myscript/atk/sltw/d;->a:F

    invoke-virtual {v0, v1, v3}, Lcom/myscript/atk/sltw/f/a/b;->a(FZ)Lcom/myscript/atk/sltw/f/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/myscript/atk/sltw/d;->b:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v1}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->d(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Lcom/myscript/atk/sltw/f/a/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/myscript/atk/sltw/f/a/b;->d(Lcom/myscript/atk/sltw/f/d;)I

    move-result v1

    iget-object v2, p0, Lcom/myscript/atk/sltw/d;->b:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v2}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->d(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Lcom/myscript/atk/sltw/f/a/b;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/myscript/atk/sltw/f/a/b;->e(Lcom/myscript/atk/sltw/f/d;)I

    move-result v0

    iget-object v2, p0, Lcom/myscript/atk/sltw/d;->b:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v2}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->b(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnGestureListener;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnGestureListener;->onSelectionGesture(II)V

    :cond_0
    iget-object v0, p0, Lcom/myscript/atk/sltw/d;->b:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v0, v3}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->d(Lcom/myscript/atk/sltw/SingleLineTextWidget;Z)Z

    iget-object v0, p0, Lcom/myscript/atk/sltw/d;->b:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v0, v3}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->e(Lcom/myscript/atk/sltw/SingleLineTextWidget;Z)Z

    return-void
.end method

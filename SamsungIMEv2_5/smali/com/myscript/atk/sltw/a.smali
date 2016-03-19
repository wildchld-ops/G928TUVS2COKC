.class final Lcom/myscript/atk/sltw/a;
.super Ljava/lang/Object;
.source "SingleLineTextWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/myscript/atk/sltw/SingleLineTextWidget;


# direct methods
.method constructor <init>(Lcom/myscript/atk/sltw/SingleLineTextWidget;Z)V
    .locals 0

    iput-object p1, p0, Lcom/myscript/atk/sltw/a;->b:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    iput-boolean p2, p0, Lcom/myscript/atk/sltw/a;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/myscript/atk/sltw/a;->b:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    iget-boolean v1, p0, Lcom/myscript/atk/sltw/a;->a:Z

    invoke-static {v0, v1}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->a(Lcom/myscript/atk/sltw/SingleLineTextWidget;Z)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/a;->b:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->b(Lcom/myscript/atk/sltw/SingleLineTextWidget;Z)Z

    return-void
.end method

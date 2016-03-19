.class final Lcom/myscript/atk/sltw/m;
.super Ljava/lang/Object;
.source "SingleLineTextWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/myscript/atk/sltw/f/c;

.field final synthetic b:Lcom/myscript/atk/sltw/SingleLineTextWidget;


# direct methods
.method constructor <init>(Lcom/myscript/atk/sltw/SingleLineTextWidget;Lcom/myscript/atk/sltw/f/c;)V
    .locals 0

    iput-object p1, p0, Lcom/myscript/atk/sltw/m;->b:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    iput-object p2, p0, Lcom/myscript/atk/sltw/m;->a:Lcom/myscript/atk/sltw/f/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/myscript/atk/sltw/m;->b:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->d(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Lcom/myscript/atk/sltw/f/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/myscript/atk/sltw/m;->a:Lcom/myscript/atk/sltw/f/c;

    invoke-virtual {v0, v1}, Lcom/myscript/atk/sltw/f/a/b;->a(Lcom/myscript/atk/sltw/f/c;)V

    return-void
.end method

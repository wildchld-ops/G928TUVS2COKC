.class public final Lcom/myscript/atk/sltw/h/h;
.super Ljava/lang/Object;
.source "VOStrokeView.java"


# instance fields
.field private a:Lcom/myscript/atk/sltw/f/c;

.field private b:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/myscript/atk/sltw/f/c;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/myscript/atk/sltw/h/h;->b:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/myscript/atk/sltw/h/h;->a:Lcom/myscript/atk/sltw/f/c;

    iget-object v0, p0, Lcom/myscript/atk/sltw/h/h;->a:Lcom/myscript/atk/sltw/f/c;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/c;->b()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/myscript/atk/sltw/h/h;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/h/h;->b:Landroid/graphics/Rect;

    return-object v0
.end method

.method public final a(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/h/h;->a:Lcom/myscript/atk/sltw/f/c;

    invoke-virtual {v0, p1}, Lcom/myscript/atk/sltw/f/c;->a(Landroid/graphics/Canvas;)V

    return-void
.end method

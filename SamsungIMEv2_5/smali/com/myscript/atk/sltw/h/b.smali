.class final Lcom/myscript/atk/sltw/h/b;
.super Ljava/lang/Object;
.source "BaselineView.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/myscript/atk/sltw/h/a;


# direct methods
.method constructor <init>(Lcom/myscript/atk/sltw/h/a;)V
    .locals 0

    iput-object p1, p0, Lcom/myscript/atk/sltw/h/b;->a:Lcom/myscript/atk/sltw/h/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    const/4 v1, 0x1

    const/4 v0, -0x1

    check-cast p1, Landroid/graphics/PointF;

    check-cast p2, Landroid/graphics/PointF;

    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget v3, p2, Landroid/graphics/PointF;->x:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/myscript/atk/sltw/h/b;->a:Lcom/myscript/atk/sltw/h/a;

    invoke-static {v2}, Lcom/myscript/atk/sltw/h/a;->a(Lcom/myscript/atk/sltw/h/a;)Lcom/myscript/atk/sltw/e/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/e/b;->f()Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget v3, p2, Landroid/graphics/PointF;->x:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget v3, p2, Landroid/graphics/PointF;->x:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    goto :goto_0
.end method

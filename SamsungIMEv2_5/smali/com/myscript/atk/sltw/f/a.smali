.class public final Lcom/myscript/atk/sltw/f/a;
.super Ljava/lang/Object;
.source "VOGuideBox.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/myscript/atk/sltw/f/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/graphics/RectF;

.field private b:Lcom/myscript/atk/styluscore/InkItem;

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/graphics/RectF;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/myscript/atk/sltw/f/a;->a:Landroid/graphics/RectF;

    iput-boolean p2, p0, Lcom/myscript/atk/sltw/f/a;->d:Z

    return-void
.end method

.method public constructor <init>(Lcom/myscript/atk/styluscore/InkItem;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/myscript/atk/styluscore/InkItem;->boundingRect()Lcom/myscript/atk/styluscore/Rect;

    move-result-object v0

    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/Rect;->getLeft()F

    move-result v2

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/Rect;->getTop()F

    move-result v3

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/Rect;->getRight()F

    move-result v4

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/Rect;->getBottom()F

    move-result v0

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/myscript/atk/sltw/f/a;->a:Landroid/graphics/RectF;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/myscript/atk/sltw/f/a;->d:Z

    iput-object p1, p0, Lcom/myscript/atk/sltw/f/a;->b:Lcom/myscript/atk/styluscore/InkItem;

    return-void
.end method

.method private e()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "frame ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/myscript/atk/sltw/f/a;->a:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/myscript/atk/sltw/f/a;->a:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/myscript/atk/sltw/f/a;->a:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/myscript/atk/sltw/f/a;->a:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/myscript/atk/sltw/f/a;->c:Z

    return-void
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/myscript/atk/sltw/f/a;->d:Z

    return v0
.end method

.method public final a(F)Z
    .locals 2

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/a;->a:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/myscript/atk/sltw/f/a;->a:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    return v0
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/myscript/atk/sltw/f/a;->c:Z

    return v0
.end method

.method public final c()Lcom/myscript/atk/styluscore/InkItem;
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/a;->b:Lcom/myscript/atk/styluscore/InkItem;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/a;->a:Landroid/graphics/RectF;

    invoke-static {v0}, Lcom/myscript/atk/sltw/d/a/c;->a(Landroid/graphics/RectF;)Lcom/myscript/atk/styluscore/Rect;

    move-result-object v0

    invoke-static {v0}, Lcom/myscript/atk/styluscore/InkItem;->createGuideBox(Lcom/myscript/atk/styluscore/Rect;)Lcom/myscript/atk/styluscore/InkItem;

    move-result-object v0

    iput-object v0, p0, Lcom/myscript/atk/sltw/f/a;->b:Lcom/myscript/atk/styluscore/InkItem;

    :cond_0
    iget-object v0, p0, Lcom/myscript/atk/sltw/f/a;->b:Lcom/myscript/atk/styluscore/InkItem;

    return-object v0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/myscript/atk/sltw/f/a;

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/a;->a:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p1, Lcom/myscript/atk/sltw/f/a;->a:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/a;->a:Landroid/graphics/RectF;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/myscript/atk/sltw/f/a;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/myscript/atk/sltw/f/a;

    invoke-direct {p1}, Lcom/myscript/atk/sltw/f/a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/myscript/atk/sltw/f/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    invoke-direct {p0}, Lcom/myscript/atk/sltw/f/a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "has view: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/myscript/atk/sltw/f/a;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", has hidden mask: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/myscript/atk/sltw/f/a;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", frame ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/myscript/atk/sltw/f/a;->a:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/myscript/atk/sltw/f/a;->a:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/myscript/atk/sltw/f/a;->a:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/myscript/atk/sltw/f/a;->a:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

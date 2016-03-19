.class public final Lcom/myscript/atk/sltw/f/c;
.super Ljava/lang/Object;
.source "VOStroke.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/myscript/atk/sltw/f/c$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/myscript/atk/styluscore/InkItem;

.field private final b:[Lcom/myscript/atk/inw/InkPoint;

.field private final c:Landroid/graphics/RectF;

.field private final d:Landroid/graphics/Path;

.field private final e:Lcom/myscript/atk/inw/renderer/Renderer;

.field private final f:Z

.field private final g:Landroid/graphics/Bitmap;

.field private final h:Landroid/graphics/Bitmap;

.field private final i:Landroid/graphics/Matrix;

.field private final j:Landroid/graphics/Matrix;

.field private k:Z

.field private l:Z

.field private m:Lcom/myscript/atk/sltw/f/c$a;


# direct methods
.method public constructor <init>(Lcom/myscript/atk/sltw/f/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/myscript/atk/sltw/f/c;->a:Lcom/myscript/atk/styluscore/InkItem;

    iput-object v0, p0, Lcom/myscript/atk/sltw/f/c;->a:Lcom/myscript/atk/styluscore/InkItem;

    iget-object v0, p1, Lcom/myscript/atk/sltw/f/c;->b:[Lcom/myscript/atk/inw/InkPoint;

    iput-object v0, p0, Lcom/myscript/atk/sltw/f/c;->b:[Lcom/myscript/atk/inw/InkPoint;

    iget-object v0, p1, Lcom/myscript/atk/sltw/f/c;->c:Landroid/graphics/RectF;

    iput-object v0, p0, Lcom/myscript/atk/sltw/f/c;->c:Landroid/graphics/RectF;

    iget-object v0, p1, Lcom/myscript/atk/sltw/f/c;->d:Landroid/graphics/Path;

    iput-object v0, p0, Lcom/myscript/atk/sltw/f/c;->d:Landroid/graphics/Path;

    iget-boolean v0, p1, Lcom/myscript/atk/sltw/f/c;->f:Z

    iput-boolean v0, p0, Lcom/myscript/atk/sltw/f/c;->f:Z

    iget-object v0, p1, Lcom/myscript/atk/sltw/f/c;->g:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/myscript/atk/sltw/f/c;->g:Landroid/graphics/Bitmap;

    iget-object v0, p1, Lcom/myscript/atk/sltw/f/c;->h:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/myscript/atk/sltw/f/c;->h:Landroid/graphics/Bitmap;

    iget-object v0, p1, Lcom/myscript/atk/sltw/f/c;->e:Lcom/myscript/atk/inw/renderer/Renderer;

    iput-object v0, p0, Lcom/myscript/atk/sltw/f/c;->e:Lcom/myscript/atk/inw/renderer/Renderer;

    iget-object v0, p1, Lcom/myscript/atk/sltw/f/c;->i:Landroid/graphics/Matrix;

    iput-object v0, p0, Lcom/myscript/atk/sltw/f/c;->i:Landroid/graphics/Matrix;

    iget-object v0, p1, Lcom/myscript/atk/sltw/f/c;->j:Landroid/graphics/Matrix;

    iput-object v0, p0, Lcom/myscript/atk/sltw/f/c;->j:Landroid/graphics/Matrix;

    iget-boolean v0, p1, Lcom/myscript/atk/sltw/f/c;->k:Z

    iput-boolean v0, p0, Lcom/myscript/atk/sltw/f/c;->k:Z

    iget-boolean v0, p1, Lcom/myscript/atk/sltw/f/c;->l:Z

    iput-boolean v0, p0, Lcom/myscript/atk/sltw/f/c;->l:Z

    return-void
.end method

.method public constructor <init>(Lcom/myscript/atk/styluscore/InkItem;[Lcom/myscript/atk/inw/InkPoint;Landroid/graphics/RectF;Landroid/graphics/Path;ZLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lcom/myscript/atk/inw/renderer/Renderer;Landroid/graphics/Matrix;Landroid/graphics/Matrix;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/myscript/atk/sltw/f/c;->a:Lcom/myscript/atk/styluscore/InkItem;

    iput-object p2, p0, Lcom/myscript/atk/sltw/f/c;->b:[Lcom/myscript/atk/inw/InkPoint;

    iput-object p3, p0, Lcom/myscript/atk/sltw/f/c;->c:Landroid/graphics/RectF;

    iput-object p4, p0, Lcom/myscript/atk/sltw/f/c;->d:Landroid/graphics/Path;

    iput-boolean p5, p0, Lcom/myscript/atk/sltw/f/c;->f:Z

    iput-object p6, p0, Lcom/myscript/atk/sltw/f/c;->g:Landroid/graphics/Bitmap;

    iput-object p7, p0, Lcom/myscript/atk/sltw/f/c;->h:Landroid/graphics/Bitmap;

    iput-object p8, p0, Lcom/myscript/atk/sltw/f/c;->e:Lcom/myscript/atk/inw/renderer/Renderer;

    iput-object p9, p0, Lcom/myscript/atk/sltw/f/c;->i:Landroid/graphics/Matrix;

    iput-object p10, p0, Lcom/myscript/atk/sltw/f/c;->j:Landroid/graphics/Matrix;

    iput-boolean p11, p0, Lcom/myscript/atk/sltw/f/c;->k:Z

    return-void
.end method


# virtual methods
.method public final a()Lcom/myscript/atk/styluscore/InkItem;
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/c;->a:Lcom/myscript/atk/styluscore/InkItem;

    return-object v0
.end method

.method public final a(Landroid/graphics/Canvas;)V
    .locals 8

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/c;->e:Lcom/myscript/atk/inw/renderer/Renderer;

    instance-of v0, v0, Lcom/myscript/atk/inw/renderer/MarkerRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/c;->e:Lcom/myscript/atk/inw/renderer/Renderer;

    check-cast v0, Lcom/myscript/atk/inw/renderer/MarkerRenderer;

    iget-object v2, p0, Lcom/myscript/atk/sltw/f/c;->d:Landroid/graphics/Path;

    iget-boolean v3, p0, Lcom/myscript/atk/sltw/f/c;->f:Z

    iget-object v4, p0, Lcom/myscript/atk/sltw/f/c;->g:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/myscript/atk/sltw/f/c;->h:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/myscript/atk/sltw/f/c;->i:Landroid/graphics/Matrix;

    iget-object v7, p0, Lcom/myscript/atk/sltw/f/c;->j:Landroid/graphics/Matrix;

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/myscript/atk/inw/renderer/MarkerRenderer;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;ZLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Matrix;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/myscript/atk/sltw/f/c;->e:Lcom/myscript/atk/inw/renderer/Renderer;

    iget-object v1, p0, Lcom/myscript/atk/sltw/f/c;->d:Landroid/graphics/Path;

    iget-boolean v2, p0, Lcom/myscript/atk/sltw/f/c;->f:Z

    invoke-interface {v0, p1, v1, v2}, Lcom/myscript/atk/inw/renderer/Renderer;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Z)V

    goto :goto_0
.end method

.method public final a(Lcom/myscript/atk/sltw/f/c$a;)V
    .locals 0

    iput-object p1, p0, Lcom/myscript/atk/sltw/f/c;->m:Lcom/myscript/atk/sltw/f/c$a;

    return-void
.end method

.method public final a(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/myscript/atk/sltw/f/c;->k:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/myscript/atk/sltw/f/c;->k:Z

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/c;->m:Lcom/myscript/atk/sltw/f/c$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/c;->m:Lcom/myscript/atk/sltw/f/c$a;

    invoke-interface {v0, p0}, Lcom/myscript/atk/sltw/f/c$a;->a(Lcom/myscript/atk/sltw/f/c;)V

    :cond_0
    return-void
.end method

.method public final b()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/c;->c:Landroid/graphics/RectF;

    return-object v0
.end method

.method public final b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/myscript/atk/sltw/f/c;->l:Z

    return-void
.end method

.class public final Lcom/myscript/atk/sltw/f/b;
.super Ljava/lang/Object;
.source "VOModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/myscript/atk/sltw/f/b$a;
    }
.end annotation


# instance fields
.field private a:Lcom/myscript/atk/sltw/f/b$a;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/sltw/f/c;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/sltw/f/d;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/sltw/f/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/myscript/atk/sltw/f/b;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/myscript/atk/sltw/f/b;->c:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/myscript/atk/sltw/f/b;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/myscript/atk/sltw/f/c;
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/sltw/f/c;

    return-object v0
.end method

.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/sltw/f/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/b;->d:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/myscript/atk/sltw/f/b$a;)V
    .locals 0

    iput-object p1, p0, Lcom/myscript/atk/sltw/f/b;->a:Lcom/myscript/atk/sltw/f/b$a;

    return-void
.end method

.method public final a(Lcom/myscript/atk/sltw/f/c;)V
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/b;->a:Lcom/myscript/atk/sltw/f/b$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/b;->a:Lcom/myscript/atk/sltw/f/b$a;

    invoke-interface {v0, p1}, Lcom/myscript/atk/sltw/f/b$a;->a(Lcom/myscript/atk/sltw/f/c;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/myscript/atk/sltw/f/d;)V
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/b;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/b;->a:Lcom/myscript/atk/sltw/f/b$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/b;->a:Lcom/myscript/atk/sltw/f/b$a;

    invoke-interface {v0, p1}, Lcom/myscript/atk/sltw/f/b$a;->a(Lcom/myscript/atk/sltw/f/d;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/myscript/atk/sltw/f/d;I)V
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/b;->c:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/b;->a:Lcom/myscript/atk/sltw/f/b$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/b;->a:Lcom/myscript/atk/sltw/f/b$a;

    invoke-interface {v0, p1}, Lcom/myscript/atk/sltw/f/b$a;->a(Lcom/myscript/atk/sltw/f/d;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/sltw/f/a;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/b;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/b;->d:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/b;->a:Lcom/myscript/atk/sltw/f/b$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/b;->a:Lcom/myscript/atk/sltw/f/b$a;

    invoke-interface {v0, p1}, Lcom/myscript/atk/sltw/f/b$a;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final b(I)Lcom/myscript/atk/sltw/f/d;
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/b;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/sltw/f/d;

    return-object v0
.end method

.method public final b(Lcom/myscript/atk/sltw/f/c;)V
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/b;->a:Lcom/myscript/atk/sltw/f/b$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/b;->a:Lcom/myscript/atk/sltw/f/b$a;

    invoke-interface {v0, p1}, Lcom/myscript/atk/sltw/f/b$a;->b(Lcom/myscript/atk/sltw/f/c;)V

    :cond_0
    return-void
.end method

.method public final b(Lcom/myscript/atk/sltw/f/d;)V
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/b;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/b;->a:Lcom/myscript/atk/sltw/f/b$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/b;->a:Lcom/myscript/atk/sltw/f/b$a;

    invoke-interface {v0, p1}, Lcom/myscript/atk/sltw/f/b$a;->b(Lcom/myscript/atk/sltw/f/d;)V

    :cond_0
    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/sltw/f/a;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/b;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/b;->d:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/b;->a:Lcom/myscript/atk/sltw/f/b$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/b;->a:Lcom/myscript/atk/sltw/f/b$a;

    invoke-interface {v0, p1}, Lcom/myscript/atk/sltw/f/b$a;->b(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final c(Lcom/myscript/atk/sltw/f/d;)I
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/b;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/b;->a:Lcom/myscript/atk/sltw/f/b$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/b;->a:Lcom/myscript/atk/sltw/f/b$a;

    invoke-interface {v0}, Lcom/myscript/atk/sltw/f/b$a;->a()V

    :cond_0
    return-void
.end method

.method public final d()I
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final e()I
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/sltw/f/d;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/d;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const-string v2, "\"%s\" (%d strokes, %d words, %d boxes)"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x1

    iget-object v4, p0, Lcom/myscript/atk/sltw/f/b;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    iget-object v4, p0, Lcom/myscript/atk/sltw/f/b;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x3

    iget-object v4, p0, Lcom/myscript/atk/sltw/f/b;->d:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

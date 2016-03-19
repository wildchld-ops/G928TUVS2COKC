.class final Lcom/myscript/atk/sltw/d/c;
.super Ljava/lang/Object;
.source "RecognizerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:[Ljava/lang/String;

.field final synthetic d:[Ljava/lang/String;

.field final synthetic e:[B

.field final synthetic f:I

.field final synthetic g:Z

.field final synthetic h:Landroid/content/Context;

.field final synthetic i:Lcom/myscript/atk/sltw/d/b;


# direct methods
.method constructor <init>(Lcom/myscript/atk/sltw/d/b;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[BIZLandroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/myscript/atk/sltw/d/c;->i:Lcom/myscript/atk/sltw/d/b;

    iput p2, p0, Lcom/myscript/atk/sltw/d/c;->a:I

    iput-object p3, p0, Lcom/myscript/atk/sltw/d/c;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/myscript/atk/sltw/d/c;->c:[Ljava/lang/String;

    iput-object p5, p0, Lcom/myscript/atk/sltw/d/c;->d:[Ljava/lang/String;

    iput-object p6, p0, Lcom/myscript/atk/sltw/d/c;->e:[B

    iput p7, p0, Lcom/myscript/atk/sltw/d/c;->f:I

    iput-boolean p8, p0, Lcom/myscript/atk/sltw/d/c;->g:Z

    iput-object p9, p0, Lcom/myscript/atk/sltw/d/c;->h:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/myscript/atk/sltw/d/c;->i:Lcom/myscript/atk/sltw/d/b;

    iget v1, p0, Lcom/myscript/atk/sltw/d/c;->a:I

    iget-object v2, p0, Lcom/myscript/atk/sltw/d/c;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/myscript/atk/sltw/d/c;->c:[Ljava/lang/String;

    iget-object v4, p0, Lcom/myscript/atk/sltw/d/c;->d:[Ljava/lang/String;

    iget-object v5, p0, Lcom/myscript/atk/sltw/d/c;->e:[B

    iget v6, p0, Lcom/myscript/atk/sltw/d/c;->f:I

    iget-boolean v7, p0, Lcom/myscript/atk/sltw/d/c;->g:Z

    iget-object v8, p0, Lcom/myscript/atk/sltw/d/c;->h:Landroid/content/Context;

    invoke-static/range {v0 .. v8}, Lcom/myscript/atk/sltw/d/b;->a(Lcom/myscript/atk/sltw/d/b;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[BIZLandroid/content/Context;)V

    return-void
.end method

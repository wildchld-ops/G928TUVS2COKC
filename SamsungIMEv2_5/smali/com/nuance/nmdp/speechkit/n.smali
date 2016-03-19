.class abstract Lcom/nuance/nmdp/speechkit/n;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/nuance/nmdp/speechkit/an;

.field private final b:Z

.field private final c:Z

.field private final d:Ljava/lang/String;

.field private final e:Lcom/nuance/nmdp/speechkit/bd;

.field private final f:Lcom/nuance/nmdp/speechkit/bb;

.field private g:Lcom/nuance/nmdp/speechkit/ba;

.field private h:Lcom/nuance/nmdp/speechkit/cg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/nmdp/speechkit/cg",
            "<TResultType;>;"
        }
    .end annotation
.end field

.field private i:Z

.field private j:Lcom/nuance/nmdp/speechkit/Prompt;

.field private k:Lcom/nuance/nmdp/speechkit/Prompt;

.field private l:Lcom/nuance/nmdp/speechkit/Prompt;

.field private m:Lcom/nuance/nmdp/speechkit/Prompt;

.field private n:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/an;ZZLjava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/bd;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/n;->a:Lcom/nuance/nmdp/speechkit/an;

    iput-boolean p2, p0, Lcom/nuance/nmdp/speechkit/n;->b:Z

    iput-boolean p3, p0, Lcom/nuance/nmdp/speechkit/n;->c:Z

    iput-object p4, p0, Lcom/nuance/nmdp/speechkit/n;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/nuance/nmdp/speechkit/n;->e:Lcom/nuance/nmdp/speechkit/bd;

    new-instance v0, Lcom/nuance/nmdp/speechkit/n$1;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/n$1;-><init>(Lcom/nuance/nmdp/speechkit/n;)V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/n;->f:Lcom/nuance/nmdp/speechkit/bb;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/n;->i:Z

    iput-object p5, p0, Lcom/nuance/nmdp/speechkit/n;->n:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/nuance/nmdp/speechkit/n;)Lcom/nuance/nmdp/speechkit/ba;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/n;->g:Lcom/nuance/nmdp/speechkit/ba;

    return-object v0
.end method

.method static synthetic b(Lcom/nuance/nmdp/speechkit/n;)Lcom/nuance/nmdp/speechkit/ba;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/n;->g:Lcom/nuance/nmdp/speechkit/ba;

    return-object v0
.end method

.method static synthetic c(Lcom/nuance/nmdp/speechkit/n;)Lcom/nuance/nmdp/speechkit/cg;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/n;->h:Lcom/nuance/nmdp/speechkit/cg;

    return-object v0
.end method


# virtual methods
.method protected abstract a(Lcom/nuance/nmdp/speechkit/an;ZZLjava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/bd;Lcom/nuance/nmdp/speechkit/cb;Lcom/nuance/nmdp/speechkit/cb;Lcom/nuance/nmdp/speechkit/cb;Lcom/nuance/nmdp/speechkit/cb;Lcom/nuance/nmdp/speechkit/cg;Lcom/nuance/nmdp/speechkit/bb;)Lcom/nuance/nmdp/speechkit/ba;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/nmdp/speechkit/an;",
            "ZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/nuance/nmdp/speechkit/bd;",
            "Lcom/nuance/nmdp/speechkit/cb;",
            "Lcom/nuance/nmdp/speechkit/cb;",
            "Lcom/nuance/nmdp/speechkit/cb;",
            "Lcom/nuance/nmdp/speechkit/cb;",
            "Lcom/nuance/nmdp/speechkit/cg",
            "<TResultType;>;",
            "Lcom/nuance/nmdp/speechkit/bb;",
            ")",
            "Lcom/nuance/nmdp/speechkit/ba;"
        }
    .end annotation
.end method

.method protected abstract a()Lcom/nuance/nmdp/speechkit/cg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nuance/nmdp/speechkit/cg",
            "<TResultType;>;"
        }
    .end annotation
.end method

.method public final a(ILcom/nuance/nmdp/speechkit/Prompt;)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/n;->j:Lcom/nuance/nmdp/speechkit/Prompt;

    goto :goto_0

    :pswitch_1
    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/n;->k:Lcom/nuance/nmdp/speechkit/Prompt;

    goto :goto_0

    :pswitch_2
    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/n;->l:Lcom/nuance/nmdp/speechkit/Prompt;

    goto :goto_0

    :pswitch_3
    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/n;->m:Lcom/nuance/nmdp/speechkit/Prompt;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected abstract a(Lcom/nuance/nmdp/speechkit/SpeechError;)V
.end method

.method protected abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultType;)V"
        }
    .end annotation
.end method

.method protected abstract b()V
.end method

.method protected abstract c()V
.end method

.method public final d()V
    .locals 15

    const/4 v14, 0x0

    const/4 v13, 0x0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/n;->a:Lcom/nuance/nmdp/speechkit/an;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/an;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/n;->i:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/n;->j:Lcom/nuance/nmdp/speechkit/Prompt;

    if-nez v0, :cond_1

    move-object v7, v13

    :goto_1
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/n;->k:Lcom/nuance/nmdp/speechkit/Prompt;

    if-nez v0, :cond_2

    move-object v8, v13

    :goto_2
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/n;->l:Lcom/nuance/nmdp/speechkit/Prompt;

    if-nez v0, :cond_3

    move-object v9, v13

    :goto_3
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/n;->m:Lcom/nuance/nmdp/speechkit/Prompt;

    if-nez v0, :cond_4

    move-object v10, v13

    :goto_4
    invoke-virtual {p0}, Lcom/nuance/nmdp/speechkit/n;->a()Lcom/nuance/nmdp/speechkit/cg;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/n;->h:Lcom/nuance/nmdp/speechkit/cg;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/n;->a:Lcom/nuance/nmdp/speechkit/an;

    iget-boolean v2, p0, Lcom/nuance/nmdp/speechkit/n;->b:Z

    iget-boolean v3, p0, Lcom/nuance/nmdp/speechkit/n;->c:Z

    iget-object v4, p0, Lcom/nuance/nmdp/speechkit/n;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/nuance/nmdp/speechkit/n;->n:Ljava/lang/String;

    iget-object v6, p0, Lcom/nuance/nmdp/speechkit/n;->e:Lcom/nuance/nmdp/speechkit/bd;

    iget-object v11, p0, Lcom/nuance/nmdp/speechkit/n;->h:Lcom/nuance/nmdp/speechkit/cg;

    iget-object v12, p0, Lcom/nuance/nmdp/speechkit/n;->f:Lcom/nuance/nmdp/speechkit/bb;

    move-object v0, p0

    invoke-virtual/range {v0 .. v12}, Lcom/nuance/nmdp/speechkit/n;->a(Lcom/nuance/nmdp/speechkit/an;ZZLjava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/bd;Lcom/nuance/nmdp/speechkit/cb;Lcom/nuance/nmdp/speechkit/cb;Lcom/nuance/nmdp/speechkit/cb;Lcom/nuance/nmdp/speechkit/cb;Lcom/nuance/nmdp/speechkit/cg;Lcom/nuance/nmdp/speechkit/bb;)Lcom/nuance/nmdp/speechkit/ba;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/n;->g:Lcom/nuance/nmdp/speechkit/ba;

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/n;->g:Lcom/nuance/nmdp/speechkit/ba;

    if-nez v0, :cond_5

    const-string v0, "Unable to create recognition transaction"

    invoke-static {p0, v0}, Lcom/nuance/nmdp/speechkit/ab;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/nuance/nmdp/speechkit/t;

    invoke-direct {v0, v14, v13, v13}, Lcom/nuance/nmdp/speechkit/t;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/nuance/nmdp/speechkit/n;->a(Lcom/nuance/nmdp/speechkit/SpeechError;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/n;->j:Lcom/nuance/nmdp/speechkit/Prompt;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/Prompt;->a()Lcom/nuance/nmdp/speechkit/cb;

    move-result-object v7

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/n;->k:Lcom/nuance/nmdp/speechkit/Prompt;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/Prompt;->a()Lcom/nuance/nmdp/speechkit/cb;

    move-result-object v8

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/n;->l:Lcom/nuance/nmdp/speechkit/Prompt;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/Prompt;->a()Lcom/nuance/nmdp/speechkit/cb;

    move-result-object v9

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/n;->m:Lcom/nuance/nmdp/speechkit/Prompt;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/Prompt;->a()Lcom/nuance/nmdp/speechkit/cb;

    move-result-object v10

    goto :goto_4

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/n;->i:Z

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/n;->g:Lcom/nuance/nmdp/speechkit/ba;

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/ba;->a()V

    goto :goto_0

    :cond_6
    const-string v0, "Unable to create recognition transaction. Transaction runner is invalid."

    invoke-static {p0, v0}, Lcom/nuance/nmdp/speechkit/ab;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/nuance/nmdp/speechkit/t;

    invoke-direct {v0, v14, v13, v13}, Lcom/nuance/nmdp/speechkit/t;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/nuance/nmdp/speechkit/n;->a(Lcom/nuance/nmdp/speechkit/SpeechError;)V

    goto :goto_0
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/n;->g:Lcom/nuance/nmdp/speechkit/ba;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/n;->g:Lcom/nuance/nmdp/speechkit/ba;

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/ba;->a_()V

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/n;->g:Lcom/nuance/nmdp/speechkit/ba;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/n;->g:Lcom/nuance/nmdp/speechkit/ba;

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/ba;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/n;->g:Lcom/nuance/nmdp/speechkit/ba;

    :cond_0
    return-void
.end method

.class final Lcom/myscript/atk/sltw/d/a$a;
.super Ljava/lang/Object;
.source "RecognizerPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/myscript/atk/sltw/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:Lcom/myscript/atk/styluscore/InputMethod;

.field public c:Lcom/myscript/atk/styluscore/InputMethodListener;

.field public d:Z

.field final synthetic e:Lcom/myscript/atk/sltw/d/a;


# direct methods
.method public constructor <init>(Lcom/myscript/atk/sltw/d/a;ILcom/myscript/atk/styluscore/InputMethod;Z)V
    .locals 1

    iput-object p1, p0, Lcom/myscript/atk/sltw/d/a$a;->e:Lcom/myscript/atk/sltw/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/myscript/atk/sltw/d/a$a;->a:I

    iput-object p3, p0, Lcom/myscript/atk/sltw/d/a$a;->b:Lcom/myscript/atk/styluscore/InputMethod;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/myscript/atk/sltw/d/a$a;->c:Lcom/myscript/atk/styluscore/InputMethodListener;

    iput-boolean p4, p0, Lcom/myscript/atk/sltw/d/a$a;->d:Z

    return-void
.end method

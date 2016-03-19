.class public Lcom/myscript/atk/sltw/SingleLineTextWidget;
.super Landroid/widget/FrameLayout;
.source "SingleLineTextWidget.java"

# interfaces
.implements Lcom/myscript/atk/inw/InkWidgetApi$OnStrokeDrawListener;
.implements Lcom/myscript/atk/sltw/SingleLineTextWidgetApi;
.implements Lcom/myscript/atk/sltw/a/a$a;
.implements Lcom/myscript/atk/sltw/c/a$a;
.implements Lcom/myscript/atk/sltw/c/k$a;
.implements Lcom/myscript/atk/sltw/c/k$b;
.implements Lcom/myscript/atk/sltw/c/k$c;
.implements Lcom/myscript/atk/sltw/c/o$b;
.implements Lcom/myscript/atk/sltw/c/o$c;
.implements Lcom/myscript/atk/sltw/c/o$d;
.implements Lcom/myscript/atk/sltw/d/b$b;
.implements Lcom/myscript/atk/sltw/d/b$d;
.implements Lcom/myscript/atk/sltw/d/b$e;
.implements Lcom/myscript/atk/sltw/d/b$f;
.implements Lcom/myscript/atk/sltw/f/a/b$a;
.implements Lcom/myscript/atk/sltw/g/c$a;
.implements Lcom/myscript/atk/sltw/h/k$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/myscript/atk/sltw/SingleLineTextWidget$a;,
        Lcom/myscript/atk/sltw/SingleLineTextWidget$OnDataTrackingListener;
    }
.end annotation


# instance fields
.field private A:Lcom/myscript/atk/sltw/d/a/e;

.field private B:[F

.field private C:[I

.field private D:[I

.field private E:Lcom/myscript/atk/sltw/c/c;

.field private F:Lcom/myscript/atk/sltw/h/a;

.field private G:Lcom/myscript/atk/inw/InkWidget;

.field private H:Lcom/myscript/atk/sltw/c/o;

.field private I:Lcom/myscript/atk/sltw/c/h;

.field private J:Lcom/myscript/atk/sltw/c/k;

.field private K:Lcom/myscript/atk/sltw/c/k;

.field private L:Lcom/myscript/atk/sltw/c/e;

.field private M:Lcom/myscript/atk/sltw/c/a;

.field private N:Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnTextChangedListener;

.field private O:Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnCursorHandleDragListener;

.field private P:Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnInsertHandleDragListener;

.field private Q:Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnInsertHandleClickedListener;

.field private R:Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnSelectionChangedListener;

.field private S:Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnConfigureListener;

.field private T:Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnRecognitionListener;

.field private U:Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnGestureListener;

.field private V:Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnUserScrollListener;

.field private W:Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnInsertionWindowListener;

.field private a:I

.field private aA:Lcom/myscript/atk/sltw/g/b;

.field private aB:Lcom/myscript/atk/sltw/g/b;

.field private aC:Z

.field private aD:I

.field private aE:I

.field private aF:Lcom/myscript/atk/sltw/SingleLineTextWidget$OnDataTrackingListener;

.field private aG:Lcom/myscript/atk/sltw/SingleLineTextWidget$a;

.field private aa:Ljava/lang/String;

.field private ab:Z

.field private ac:I

.field private ad:I

.field private ae:I

.field private af:[Ljava/lang/String;

.field private ag:I

.field private ah:F

.field private ai:F

.field private aj:F

.field private ak:F

.field private al:F

.field private am:F

.field private an:F

.field private ao:I

.field private ap:Ljava/util/concurrent/atomic/AtomicInteger;

.field private aq:Ljava/util/concurrent/atomic/AtomicInteger;

.field private ar:Ljava/lang/Runnable;

.field private as:Ljava/lang/Runnable;

.field private at:Z

.field private au:Z

.field private av:Z

.field private aw:Z

.field private ax:Landroid/os/Handler;

.field private ay:Lcom/myscript/atk/sltw/g/b;

.field private az:Lcom/myscript/atk/sltw/g/b;

.field private b:I

.field private c:Lcom/myscript/atk/styluscore/VoTimeStamp;

.field private d:Lcom/myscript/atk/styluscore/VoTimeStamp;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:I

.field private i:Z

.field private j:Lcom/myscript/atk/sltw/f/a/a;

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Lcom/myscript/atk/sltw/f/a;

.field private q:Lcom/myscript/atk/sltw/e/a;

.field private r:Lcom/myscript/atk/sltw/f/b/a;

.field private s:Lcom/myscript/atk/sltw/f/a/b;

.field private t:Lcom/myscript/atk/sltw/f/a/b;

.field private u:Lcom/myscript/atk/sltw/e/b;

.field private v:Lcom/myscript/atk/sltw/e/b;

.field private w:Z

.field private x:Z

.field private y:Lcom/myscript/atk/sltw/d/b;

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->ap:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->aq:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Lcom/myscript/atk/sltw/g/b;

    const-string v1, "auto scroll"

    new-instance v2, Lcom/myscript/atk/sltw/f;

    invoke-direct {v2, p0}, Lcom/myscript/atk/sltw/f;-><init>(Lcom/myscript/atk/sltw/SingleLineTextWidget;)V

    invoke-direct {v0, v1, v2}, Lcom/myscript/atk/sltw/g/b;-><init>(Ljava/lang/String;Lcom/myscript/atk/sltw/g/b$a;)V

    iput-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->ay:Lcom/myscript/atk/sltw/g/b;

    new-instance v0, Lcom/myscript/atk/sltw/g/b;

    const-string v1, "auto typeset"

    new-instance v2, Lcom/myscript/atk/sltw/g;

    invoke-direct {v2, p0}, Lcom/myscript/atk/sltw/g;-><init>(Lcom/myscript/atk/sltw/SingleLineTextWidget;)V

    invoke-direct {v0, v1, v2}, Lcom/myscript/atk/sltw/g/b;-><init>(Ljava/lang/String;Lcom/myscript/atk/sltw/g/b$a;)V

    iput-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->az:Lcom/myscript/atk/sltw/g/b;

    new-instance v0, Lcom/myscript/atk/sltw/g/b;

    const-string v1, "auto layout"

    new-instance v2, Lcom/myscript/atk/sltw/h;

    invoke-direct {v2, p0}, Lcom/myscript/atk/sltw/h;-><init>(Lcom/myscript/atk/sltw/SingleLineTextWidget;)V

    invoke-direct {v0, v1, v2}, Lcom/myscript/atk/sltw/g/b;-><init>(Ljava/lang/String;Lcom/myscript/atk/sltw/g/b$a;)V

    iput-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->aA:Lcom/myscript/atk/sltw/g/b;

    new-instance v0, Lcom/myscript/atk/sltw/g/b;

    const-string v1, "transient space reset"

    new-instance v2, Lcom/myscript/atk/sltw/i;

    invoke-direct {v2, p0}, Lcom/myscript/atk/sltw/i;-><init>(Lcom/myscript/atk/sltw/SingleLineTextWidget;)V

    invoke-direct {v0, v1, v2}, Lcom/myscript/atk/sltw/g/b;-><init>(Ljava/lang/String;Lcom/myscript/atk/sltw/g/b$a;)V

    iput-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->aB:Lcom/myscript/atk/sltw/g/b;

    invoke-direct {p0, p1}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->ap:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->aq:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Lcom/myscript/atk/sltw/g/b;

    const-string v1, "auto scroll"

    new-instance v2, Lcom/myscript/atk/sltw/f;

    invoke-direct {v2, p0}, Lcom/myscript/atk/sltw/f;-><init>(Lcom/myscript/atk/sltw/SingleLineTextWidget;)V

    invoke-direct {v0, v1, v2}, Lcom/myscript/atk/sltw/g/b;-><init>(Ljava/lang/String;Lcom/myscript/atk/sltw/g/b$a;)V

    iput-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->ay:Lcom/myscript/atk/sltw/g/b;

    new-instance v0, Lcom/myscript/atk/sltw/g/b;

    const-string v1, "auto typeset"

    new-instance v2, Lcom/myscript/atk/sltw/g;

    invoke-direct {v2, p0}, Lcom/myscript/atk/sltw/g;-><init>(Lcom/myscript/atk/sltw/SingleLineTextWidget;)V

    invoke-direct {v0, v1, v2}, Lcom/myscript/atk/sltw/g/b;-><init>(Ljava/lang/String;Lcom/myscript/atk/sltw/g/b$a;)V

    iput-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->az:Lcom/myscript/atk/sltw/g/b;

    new-instance v0, Lcom/myscript/atk/sltw/g/b;

    const-string v1, "auto layout"

    new-instance v2, Lcom/myscript/atk/sltw/h;

    invoke-direct {v2, p0}, Lcom/myscript/atk/sltw/h;-><init>(Lcom/myscript/atk/sltw/SingleLineTextWidget;)V

    invoke-direct {v0, v1, v2}, Lcom/myscript/atk/sltw/g/b;-><init>(Ljava/lang/String;Lcom/myscript/atk/sltw/g/b$a;)V

    iput-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->aA:Lcom/myscript/atk/sltw/g/b;

    new-instance v0, Lcom/myscript/atk/sltw/g/b;

    const-string v1, "transient space reset"

    new-instance v2, Lcom/myscript/atk/sltw/i;

    invoke-direct {v2, p0}, Lcom/myscript/atk/sltw/i;-><init>(Lcom/myscript/atk/sltw/SingleLineTextWidget;)V

    invoke-direct {v0, v1, v2}, Lcom/myscript/atk/sltw/g/b;-><init>(Ljava/lang/String;Lcom/myscript/atk/sltw/g/b$a;)V

    iput-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->aB:Lcom/myscript/atk/sltw/g/b;

    invoke-direct {p0, p1}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->ap:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->aq:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Lcom/myscript/atk/sltw/g/b;

    const-string v1, "auto scroll"

    new-instance v2, Lcom/myscript/atk/sltw/f;

    invoke-direct {v2, p0}, Lcom/myscript/atk/sltw/f;-><init>(Lcom/myscript/atk/sltw/SingleLineTextWidget;)V

    invoke-direct {v0, v1, v2}, Lcom/myscript/atk/sltw/g/b;-><init>(Ljava/lang/String;Lcom/myscript/atk/sltw/g/b$a;)V

    iput-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->ay:Lcom/myscript/atk/sltw/g/b;

    new-instance v0, Lcom/myscript/atk/sltw/g/b;

    const-string v1, "auto typeset"

    new-instance v2, Lcom/myscript/atk/sltw/g;

    invoke-direct {v2, p0}, Lcom/myscript/atk/sltw/g;-><init>(Lcom/myscript/atk/sltw/SingleLineTextWidget;)V

    invoke-direct {v0, v1, v2}, Lcom/myscript/atk/sltw/g/b;-><init>(Ljava/lang/String;Lcom/myscript/atk/sltw/g/b$a;)V

    iput-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->az:Lcom/myscript/atk/sltw/g/b;

    new-instance v0, Lcom/myscript/atk/sltw/g/b;

    const-string v1, "auto layout"

    new-instance v2, Lcom/myscript/atk/sltw/h;

    invoke-direct {v2, p0}, Lcom/myscript/atk/sltw/h;-><init>(Lcom/myscript/atk/sltw/SingleLineTextWidget;)V

    invoke-direct {v0, v1, v2}, Lcom/myscript/atk/sltw/g/b;-><init>(Ljava/lang/String;Lcom/myscript/atk/sltw/g/b$a;)V

    iput-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->aA:Lcom/myscript/atk/sltw/g/b;

    new-instance v0, Lcom/myscript/atk/sltw/g/b;

    const-string v1, "transient space reset"

    new-instance v2, Lcom/myscript/atk/sltw/i;

    invoke-direct {v2, p0}, Lcom/myscript/atk/sltw/i;-><init>(Lcom/myscript/atk/sltw/SingleLineTextWidget;)V

    invoke-direct {v0, v1, v2}, Lcom/myscript/atk/sltw/g/b;-><init>(Ljava/lang/String;Lcom/myscript/atk/sltw/g/b$a;)V

    iput-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->aB:Lcom/myscript/atk/sltw/g/b;

    invoke-direct {p0, p1}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic A(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->aq:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method private A()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->I:Lcom/myscript/atk/sltw/c/h;

    invoke-virtual {v0, v1}, Lcom/myscript/atk/sltw/c/h;->b(Z)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->K:Lcom/myscript/atk/sltw/c/k;

    invoke-virtual {v0, v1}, Lcom/myscript/atk/sltw/c/k;->a(Z)V

    return-void
.end method

.method private B()V
    .locals 3

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->q:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/e/a;->g()F

    move-result v0

    iget-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->q:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v1}, Lcom/myscript/atk/sltw/e/a;->j()F

    move-result v1

    iget-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->I:Lcom/myscript/atk/sltw/c/h;

    invoke-virtual {v2, v0, v1}, Lcom/myscript/atk/sltw/c/h;->b(FF)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->K:Lcom/myscript/atk/sltw/c/k;

    iget-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->I:Lcom/myscript/atk/sltw/c/h;

    invoke-virtual {v1}, Lcom/myscript/atk/sltw/c/h;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/myscript/atk/sltw/c/k;->b(I)V

    return-void
.end method

.method static synthetic B(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Z
    .locals 2

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->aq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->ap:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->ap:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->aq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic C(Lcom/myscript/atk/sltw/SingleLineTextWidget;)I
    .locals 2

    iget v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->ao:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->ao:I

    return v0
.end method

.method private C()Z
    .locals 1

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->b()V

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/c/o;->p()Z

    move-result v0

    return v0
.end method

.method static synthetic D(Lcom/myscript/atk/sltw/SingleLineTextWidget;)I
    .locals 1

    iget v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->ao:I

    return v0
.end method

.method private D()Z
    .locals 1

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->b()V

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/c/o;->q()Z

    move-result v0

    return v0
.end method

.method static synthetic E(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Lcom/myscript/atk/sltw/f/a/a;
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->j:Lcom/myscript/atk/sltw/f/a/a;

    return-object v0
.end method

.method private E()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->I:Lcom/myscript/atk/sltw/c/h;

    invoke-virtual {v2, v0}, Lcom/myscript/atk/sltw/c/h;->a(Z)V

    iget-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->L:Lcom/myscript/atk/sltw/c/e;

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/c/e;->a()I

    move-result v2

    iget-boolean v3, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->o:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->s:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v3, v2}, Lcom/myscript/atk/sltw/f/a/b;->g(I)V

    :goto_0
    iget-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/c/o;->g()F

    move-result v2

    iget-object v3, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->u:Lcom/myscript/atk/sltw/e/b;

    invoke-virtual {v3}, Lcom/myscript/atk/sltw/e/b;->c()F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_5

    move v0, v1

    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->V:Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnUserScrollListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->V:Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnUserScrollListener;

    invoke-interface {v2, v0}, Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnUserScrollListener;->onUserScrollEnd(Z)V

    :cond_1
    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->aF:Lcom/myscript/atk/sltw/SingleLineTextWidget$OnDataTrackingListener;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->n:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->aF:Lcom/myscript/atk/sltw/SingleLineTextWidget$OnDataTrackingListener;

    invoke-interface {v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget$OnDataTrackingListener;->onDataTrackingScrollArrowUsed()V

    :cond_2
    :goto_2
    iput-boolean v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->n:Z

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->isInsertionMode()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->z()V

    :cond_3
    return-void

    :cond_4
    iget-object v3, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->s:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v3, v2}, Lcom/myscript/atk/sltw/f/a/b;->h(I)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->isInsertionMode()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->b()V

    iget-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/c/o;->j()F

    move-result v2

    iget-object v3, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v3}, Lcom/myscript/atk/sltw/c/o;->i()F

    move-result v3

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_1

    :cond_6
    iget v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->am:F

    invoke-direct {p0, v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->g(F)Z

    move-result v0

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->aF:Lcom/myscript/atk/sltw/SingleLineTextWidget$OnDataTrackingListener;

    invoke-interface {v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget$OnDataTrackingListener;->onDataTrackingScrollbarUsed()V

    goto :goto_2
.end method

.method static synthetic F(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Lcom/myscript/atk/sltw/d/a/e;
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->A:Lcom/myscript/atk/sltw/d/a/e;

    return-object v0
.end method

.method private F()V
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->V:Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnUserScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->V:Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnUserScrollListener;

    invoke-interface {v0}, Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnUserScrollListener;->onUserScroll()V

    :cond_0
    return-void
.end method

.method private G()V
    .locals 1

    iget-boolean v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->z:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->z:Z

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->T:Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnRecognitionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->T:Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnRecognitionListener;

    invoke-interface {v0}, Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnRecognitionListener;->onRecognitionEnd()V

    :cond_0
    return-void
.end method

.method static synthetic G(Lcom/myscript/atk/sltw/SingleLineTextWidget;)V
    .locals 0

    invoke-direct {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->O()V

    return-void
.end method

.method static synthetic H(Lcom/myscript/atk/sltw/SingleLineTextWidget;)I
    .locals 1

    iget v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->h:I

    return v0
.end method

.method private H()V
    .locals 2

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->q:Lcom/myscript/atk/sltw/e/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/myscript/atk/sltw/e/a;->b(Z)V

    return-void
.end method

.method static synthetic I(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Lcom/myscript/atk/sltw/f/b/a;
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->r:Lcom/myscript/atk/sltw/f/b/a;

    return-object v0
.end method

.method private I()V
    .locals 5

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->q:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/e/a;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->o:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->q:Lcom/myscript/atk/sltw/e/a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/myscript/atk/sltw/e/a;->a(I)V

    :cond_0
    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->q:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/e/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->B()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->s:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/a/b;->j()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->q:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/e/a;->b()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->s:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v2, v0}, Lcom/myscript/atk/sltw/f/a/b;->c(I)Lcom/myscript/atk/sltw/f/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/f/d;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/f/d;->r()F

    move-result v2

    iget-object v4, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->q:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v4, v3, v2}, Lcom/myscript/atk/sltw/e/a;->a(Ljava/lang/String;F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic J(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Lcom/myscript/atk/sltw/c/e;
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->L:Lcom/myscript/atk/sltw/c/e;

    return-object v0
.end method

.method private J()V
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->ar:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->at:Z

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->ar:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->as:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->ar:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->ar:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method private K()V
    .locals 2

    invoke-direct {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->L()V

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->isIsolatedMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->p:Lcom/myscript/atk/sltw/f/a;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->p:Lcom/myscript/atk/sltw/f/a;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->s:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v1, v0}, Lcom/myscript/atk/sltw/f/a/b;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->ap:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iget-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->y:Lcom/myscript/atk/sltw/d/b;

    invoke-virtual {v1, v0}, Lcom/myscript/atk/sltw/d/b;->a(I)V

    :cond_0
    invoke-direct {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->O()V

    return-void
.end method

.method static synthetic K(Lcom/myscript/atk/sltw/SingleLineTextWidget;)V
    .locals 0

    invoke-direct {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->G()V

    return-void
.end method

.method static synthetic L(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Lcom/myscript/atk/sltw/f/a/b;
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->t:Lcom/myscript/atk/sltw/f/a/b;

    return-object v0
.end method

.method private L()V
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->s:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/a/b;->f()V

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->t:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/a/b;->f()V

    return-void
.end method

.method private M()V
    .locals 4

    const/16 v3, 0x32

    new-instance v0, Landroid/util/TimingLogger;

    const-string v1, "TextWidget"

    const-string v2, "installBoxMode timer"

    invoke-direct {v0, v1, v2}, Landroid/util/TimingLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->s:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/a/b;->c()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->s:Lcom/myscript/atk/sltw/f/a/b;

    iget-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->r:Lcom/myscript/atk/sltw/f/b/a;

    invoke-virtual {v1, v3}, Lcom/myscript/atk/sltw/f/b/a;->h(I)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->r:Lcom/myscript/atk/sltw/f/b/a;

    invoke-virtual {v0, v1, v2}, Lcom/myscript/atk/sltw/f/a/b;->a(Ljava/util/List;Lcom/myscript/atk/sltw/f/b/a;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->ap:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    iget-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->y:Lcom/myscript/atk/sltw/d/b;

    invoke-virtual {v2, v1}, Lcom/myscript/atk/sltw/d/b;->a(I)V

    :cond_0
    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->O()V

    :cond_1
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->L()V

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->s:Lcom/myscript/atk/sltw/f/a/b;

    iget-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->r:Lcom/myscript/atk/sltw/f/b/a;

    invoke-virtual {v1, v3}, Lcom/myscript/atk/sltw/f/b/a;->h(I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/myscript/atk/sltw/f/a/b;->a(Ljava/util/List;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic M(Lcom/myscript/atk/sltw/SingleLineTextWidget;)V
    .locals 0

    invoke-direct {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H()V

    return-void
.end method

.method private N()V
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->aC:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->aC:Z

    iget-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->s:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v1}, Lcom/myscript/atk/sltw/f/a/b;->l()I

    move-result v1

    iput v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->aE:I

    iget-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->aF:Lcom/myscript/atk/sltw/SingleLineTextWidget$OnDataTrackingListener;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->aE:I

    iget v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->aD:I

    sub-int/2addr v1, v2

    if-gez v1, :cond_1

    :goto_0
    iget-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->aF:Lcom/myscript/atk/sltw/SingleLineTextWidget$OnDataTrackingListener;

    invoke-interface {v1, v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget$OnDataTrackingListener;->onDataTrackingInsertWindowClose(I)V

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method static synthetic N(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->au:Z

    return v0
.end method

.method private O()V
    .locals 8

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    iget-boolean v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->o:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->s:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/a/b;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->s:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v0, v6}, Lcom/myscript/atk/sltw/f/a/b;->a(I)Lcom/myscript/atk/sltw/f/a;

    move-result-object v0

    iget-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->s:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v1, v5}, Lcom/myscript/atk/sltw/f/a/b;->a(I)Lcom/myscript/atk/sltw/f/a;

    move-result-object v1

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/a;->d()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/a;->d()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v1}, Lcom/myscript/atk/sltw/f/a;->d()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/a;->d()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    sub-float v4, v1, v0

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->F:Lcom/myscript/atk/sltw/h/a;

    iget-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->r:Lcom/myscript/atk/sltw/f/b/a;

    invoke-virtual {v1}, Lcom/myscript/atk/sltw/f/b/a;->a()F

    move-result v1

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->r:Lcom/myscript/atk/sltw/f/b/a;

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/f/b/a;->a()F

    move-result v2

    mul-float/2addr v2, v7

    sub-float v2, v3, v2

    iget-object v3, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->r:Lcom/myscript/atk/sltw/f/b/a;

    invoke-virtual {v3}, Lcom/myscript/atk/sltw/f/b/a;->a()F

    move-result v3

    mul-float/2addr v3, v7

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->s:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v4}, Lcom/myscript/atk/sltw/f/a/b;->c()I

    move-result v4

    iget-boolean v7, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->o:Z

    if-nez v7, :cond_0

    :goto_0
    invoke-virtual/range {v0 .. v5}, Lcom/myscript/atk/sltw/h/a;->a(FFFIZ)V

    :goto_1
    return-void

    :cond_0
    move v5, v6

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->F:Lcom/myscript/atk/sltw/h/a;

    iget-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->r:Lcom/myscript/atk/sltw/f/b/a;

    invoke-virtual {v1}, Lcom/myscript/atk/sltw/f/b/a;->f()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->r:Lcom/myscript/atk/sltw/f/b/a;

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/f/b/a;->a()F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->r:Lcom/myscript/atk/sltw/f/b/a;

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/f/b/a;->c()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->r:Lcom/myscript/atk/sltw/f/b/a;

    invoke-virtual {v3}, Lcom/myscript/atk/sltw/f/b/a;->a()F

    move-result v3

    mul-float/2addr v3, v7

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->r:Lcom/myscript/atk/sltw/f/b/a;

    invoke-virtual {v3}, Lcom/myscript/atk/sltw/f/b/a;->b()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->r:Lcom/myscript/atk/sltw/f/b/a;

    invoke-virtual {v4}, Lcom/myscript/atk/sltw/f/b/a;->a()F

    move-result v4

    mul-float/2addr v4, v7

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->s:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v4}, Lcom/myscript/atk/sltw/f/a/b;->c()I

    move-result v4

    iget-boolean v7, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->o:Z

    if-nez v7, :cond_2

    :goto_2
    invoke-virtual/range {v0 .. v5}, Lcom/myscript/atk/sltw/h/a;->a(FFFIZ)V

    goto :goto_1

    :cond_2
    move v5, v6

    goto :goto_2
.end method

.method static synthetic O(Lcom/myscript/atk/sltw/SingleLineTextWidget;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->e(Z)V

    return-void
.end method

.method static synthetic a(Lcom/myscript/atk/sltw/SingleLineTextWidget;F)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->h(F)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/myscript/atk/sltw/SingleLineTextWidget;I)I
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->ao:I

    return v0
.end method

.method private a(FZ)V
    .locals 7

    const/4 v6, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->t:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/a/b;->g()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->q:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/e/a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/c/o;->h()F

    move-result v0

    iget v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->ai:F

    add-float/2addr v0, v2

    :goto_0
    sub-float v2, p1, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->ah:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    move p2, v1

    :cond_0
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    iget-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->J:Lcom/myscript/atk/sltw/c/k;

    invoke-virtual {v0, v1}, Lcom/myscript/atk/sltw/c/o;->a(Lcom/myscript/atk/sltw/c/o$a;)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/c/o;->h()F

    move-result v0

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->ai:F

    new-instance v0, Lcom/myscript/atk/sltw/a/a;

    move-object v1, p0

    move v2, p1

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/myscript/atk/sltw/a/a;-><init>(Lcom/myscript/atk/sltw/a/a$a;FFFF)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iput v6, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->b:I

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->clearAnimation()V

    invoke-virtual {p0, v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_1
    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->J:Lcom/myscript/atk/sltw/c/k;

    invoke-virtual {v0, v6}, Lcom/myscript/atk/sltw/c/k;->a(Z)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v0, v6}, Lcom/myscript/atk/sltw/c/o;->b(Z)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v0, v6}, Lcom/myscript/atk/sltw/c/o;->a(Z)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->v:Lcom/myscript/atk/sltw/e/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/e/b;->h()V

    :goto_2
    return-void

    :cond_1
    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/c/o;->h()F

    move-result v0

    iget v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->ai:F

    sub-float/2addr v0, v2

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->x()V

    iget-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->J:Lcom/myscript/atk/sltw/c/k;

    iget-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/c/o;->i()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/myscript/atk/sltw/c/k;->b(F)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    iget v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->ai:F

    invoke-virtual {v0, p1, v1}, Lcom/myscript/atk/sltw/c/o;->a(FF)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->J:Lcom/myscript/atk/sltw/c/k;

    invoke-virtual {v0, v1}, Lcom/myscript/atk/sltw/c/k;->a(Z)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v0, v1}, Lcom/myscript/atk/sltw/c/o;->b(Z)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v0, v1}, Lcom/myscript/atk/sltw/c/o;->a(Z)V

    goto :goto_2
.end method

.method private a(IZ)V
    .locals 3

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->isIsolatedMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->o:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->isUserScrolling()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->aw:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/c/o;->f()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->y()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    new-instance v0, Lcom/myscript/atk/sltw/l;

    invoke-direct {v0, p0, p1, p2}, Lcom/myscript/atk/sltw/l;-><init>(Lcom/myscript/atk/sltw/SingleLineTextWidget;IZ)V

    iput-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->ar:Ljava/lang/Runnable;

    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->at:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->as:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->at:Z

    :cond_4
    iget-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->s:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v1, p1}, Lcom/myscript/atk/sltw/f/a/b;->f(I)F

    move-result v1

    iget-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->u:Lcom/myscript/atk/sltw/e/b;

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/e/b;->f()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/c/o;->e()F

    move-result v2

    sub-float/2addr v0, v2

    sub-float v0, v1, v0

    :goto_1
    invoke-direct {p0, v0, p2}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->b(FZ)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/c/o;->e()F

    move-result v0

    sub-float v0, v1, v0

    goto :goto_1
.end method

.method private a(Landroid/content/Context;)V
    .locals 12

    const/4 v4, 0x2

    const/high16 v5, 0x42480000    # 50.0f

    const/4 v7, 0x1

    const/4 v11, -0x2

    const/4 v10, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    new-array v2, v4, [F

    iput-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->B:[F

    iget-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->B:[F

    const v3, 0x3e4ccccd    # 0.2f

    aput v3, v2, v10

    iget-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->B:[F

    const v3, 0x3f4ccccd    # 0.8f

    aput v3, v2, v7

    new-array v2, v4, [I

    iput-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->C:[I

    iget-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->C:[I

    const/16 v3, 0xc80

    aput v3, v2, v10

    iget-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->C:[I

    const/16 v3, 0x258

    aput v3, v2, v7

    new-array v2, v4, [I

    iput-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->D:[I

    iget-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->D:[I

    const/16 v3, 0x3e8

    aput v3, v2, v10

    iget-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->D:[I

    const/16 v3, 0xe10

    aput v3, v2, v7

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2, v0}, Lcom/myscript/atk/sltw/b/a;->a(FLandroid/util/DisplayMetrics;)F

    move-result v2

    iput v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->ah:F

    const v2, 0x3e4ccccd    # 0.2f

    int-to-float v3, v1

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->ai:F

    invoke-static {v5, v0}, Lcom/myscript/atk/sltw/b/a;->a(FLandroid/util/DisplayMetrics;)F

    move-result v2

    iput v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->aj:F

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-static {v2, v0}, Lcom/myscript/atk/sltw/b/a;->a(FLandroid/util/DisplayMetrics;)F

    move-result v2

    iput v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->ak:F

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-static {v2, v0}, Lcom/myscript/atk/sltw/b/a;->a(FLandroid/util/DisplayMetrics;)F

    move-result v2

    iput v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->al:F

    const/high16 v2, 0x3f000000    # 0.5f

    int-to-float v3, v1

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->am:F

    const/high16 v2, 0x3f000000    # 0.5f

    int-to-float v1, v1

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->an:F

    iget-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->aA:Lcom/myscript/atk/sltw/g/b;

    const/16 v2, 0xbb8

    invoke-virtual {v1, v2}, Lcom/myscript/atk/sltw/g/b;->a(I)V

    iput-boolean v10, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->o:Z

    new-instance v1, Lcom/myscript/atk/sltw/h/k;

    invoke-direct {v1, p1}, Lcom/myscript/atk/sltw/h/k;-><init>(Landroid/content/Context;)V

    const/high16 v2, 0x42200000    # 40.0f

    invoke-static {v2, v0}, Lcom/myscript/atk/sltw/b/a;->a(FLandroid/util/DisplayMetrics;)F

    move-result v2

    new-instance v3, Lcom/myscript/atk/sltw/c/o;

    invoke-direct {v3, v1}, Lcom/myscript/atk/sltw/c/o;-><init>(Lcom/myscript/atk/sltw/h/k;)V

    iput-object v3, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    iget-object v3, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v3, p0}, Lcom/myscript/atk/sltw/c/o;->a(Lcom/myscript/atk/sltw/h/k$a;)V

    iget-object v3, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v3, p0}, Lcom/myscript/atk/sltw/c/o;->a(Lcom/myscript/atk/sltw/c/o$c;)V

    iget-object v3, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v3, p0}, Lcom/myscript/atk/sltw/c/o;->a(Lcom/myscript/atk/sltw/c/o$d;)V

    iget-object v3, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v3, v2}, Lcom/myscript/atk/sltw/c/o;->f(F)V

    iget-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v2, p0}, Lcom/myscript/atk/sltw/c/o;->a(Lcom/myscript/atk/sltw/c/o$b;)V

    iget-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v2, v10}, Lcom/myscript/atk/sltw/c/o;->a(Z)V

    iget-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-static {v5, v0}, Lcom/myscript/atk/sltw/b/a;->a(FLandroid/util/DisplayMetrics;)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/myscript/atk/sltw/c/o;->c(F)V

    new-instance v2, Lcom/myscript/atk/sltw/e/a;

    invoke-direct {v2, v0}, Lcom/myscript/atk/sltw/e/a;-><init>(Landroid/util/DisplayMetrics;)V

    iput-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->q:Lcom/myscript/atk/sltw/e/a;

    new-instance v2, Lcom/myscript/atk/sltw/f/b/a;

    iget-object v3, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->q:Lcom/myscript/atk/sltw/e/a;

    invoke-static {}, Lcom/myscript/atk/sltw/h/k;->i()I

    move-result v4

    invoke-direct {v2, v3, v0, v4}, Lcom/myscript/atk/sltw/f/b/a;-><init>(Lcom/myscript/atk/sltw/e/a;Landroid/util/DisplayMetrics;I)V

    iput-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->r:Lcom/myscript/atk/sltw/f/b/a;

    new-instance v2, Lcom/myscript/atk/sltw/f/a/b;

    new-instance v3, Lcom/myscript/atk/sltw/f/b;

    invoke-direct {v3}, Lcom/myscript/atk/sltw/f/b;-><init>()V

    invoke-direct {v2, v3, v0}, Lcom/myscript/atk/sltw/f/a/b;-><init>(Lcom/myscript/atk/sltw/f/b;Landroid/util/DisplayMetrics;)V

    iput-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->s:Lcom/myscript/atk/sltw/f/a/b;

    iget-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->s:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v2, p0}, Lcom/myscript/atk/sltw/f/a/b;->a(Lcom/myscript/atk/sltw/f/a/b$a;)V

    iget-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->s:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v1}, Lcom/myscript/atk/sltw/h/k;->b()Lcom/myscript/atk/sltw/h/f;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/myscript/atk/sltw/f/a/b;->a(Lcom/myscript/atk/sltw/f/b$a;)V

    invoke-static {v5, v0}, Lcom/myscript/atk/sltw/b/a;->a(FLandroid/util/DisplayMetrics;)F

    move-result v2

    new-instance v3, Lcom/myscript/atk/sltw/e/b;

    iget-object v4, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->q:Lcom/myscript/atk/sltw/e/a;

    iget-object v5, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->r:Lcom/myscript/atk/sltw/f/b/a;

    iget-object v6, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->s:Lcom/myscript/atk/sltw/f/a/b;

    invoke-direct {v3, v4, v5, v6}, Lcom/myscript/atk/sltw/e/b;-><init>(Lcom/myscript/atk/sltw/e/a;Lcom/myscript/atk/sltw/f/b/a;Lcom/myscript/atk/sltw/f/a/b;)V

    iput-object v3, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->u:Lcom/myscript/atk/sltw/e/b;

    iget-object v3, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->u:Lcom/myscript/atk/sltw/e/b;

    invoke-virtual {v3, v2}, Lcom/myscript/atk/sltw/e/b;->b(F)V

    iget-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->u:Lcom/myscript/atk/sltw/e/b;

    invoke-static {}, Lcom/myscript/atk/sltw/h/k;->i()I

    const/high16 v3, 0x47000000    # 32768.0f

    invoke-virtual {v2, v3}, Lcom/myscript/atk/sltw/e/b;->a(F)V

    iget-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->u:Lcom/myscript/atk/sltw/e/b;

    iget-object v3, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v2, v3}, Lcom/myscript/atk/sltw/e/b;->a(Lcom/myscript/atk/sltw/c/o;)V

    new-instance v2, Lcom/myscript/atk/sltw/c/c;

    iget-object v3, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->u:Lcom/myscript/atk/sltw/e/b;

    invoke-direct {v2, v3}, Lcom/myscript/atk/sltw/c/c;-><init>(Lcom/myscript/atk/sltw/e/b;)V

    iput-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->E:Lcom/myscript/atk/sltw/c/c;

    new-instance v2, Lcom/myscript/atk/sltw/f/a/b;

    new-instance v3, Lcom/myscript/atk/sltw/f/b;

    invoke-direct {v3}, Lcom/myscript/atk/sltw/f/b;-><init>()V

    invoke-direct {v2, v3, v0}, Lcom/myscript/atk/sltw/f/a/b;-><init>(Lcom/myscript/atk/sltw/f/b;Landroid/util/DisplayMetrics;)V

    iput-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->t:Lcom/myscript/atk/sltw/f/a/b;

    iget-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->t:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v1}, Lcom/myscript/atk/sltw/h/k;->c()Lcom/myscript/atk/sltw/h/f;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/myscript/atk/sltw/f/a/b;->a(Lcom/myscript/atk/sltw/f/b$a;)V

    new-instance v2, Lcom/myscript/atk/sltw/e/b;

    iget-object v3, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->q:Lcom/myscript/atk/sltw/e/a;

    iget-object v4, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->r:Lcom/myscript/atk/sltw/f/b/a;

    iget-object v5, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->t:Lcom/myscript/atk/sltw/f/a/b;

    invoke-direct {v2, v3, v4, v5}, Lcom/myscript/atk/sltw/e/b;-><init>(Lcom/myscript/atk/sltw/e/a;Lcom/myscript/atk/sltw/f/b/a;Lcom/myscript/atk/sltw/f/a/b;)V

    iput-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->v:Lcom/myscript/atk/sltw/e/b;

    iget-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->v:Lcom/myscript/atk/sltw/e/b;

    invoke-static {}, Lcom/myscript/atk/sltw/h/k;->i()I

    const/high16 v3, 0x47000000    # 32768.0f

    invoke-virtual {v2, v3}, Lcom/myscript/atk/sltw/e/b;->a(F)V

    invoke-virtual {v1}, Lcom/myscript/atk/sltw/h/k;->a()Lcom/myscript/atk/sltw/h/a;

    move-result-object v2

    iput-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->F:Lcom/myscript/atk/sltw/h/a;

    iget-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->F:Lcom/myscript/atk/sltw/h/a;

    iget-object v3, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->u:Lcom/myscript/atk/sltw/e/b;

    invoke-virtual {v2, v3}, Lcom/myscript/atk/sltw/h/a;->a(Lcom/myscript/atk/sltw/e/b;)V

    iget-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->F:Lcom/myscript/atk/sltw/h/a;

    iget-object v3, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->v:Lcom/myscript/atk/sltw/e/b;

    invoke-virtual {v2, v3}, Lcom/myscript/atk/sltw/h/a;->b(Lcom/myscript/atk/sltw/e/b;)V

    new-instance v2, Lcom/myscript/atk/sltw/c/h;

    invoke-virtual {v1}, Lcom/myscript/atk/sltw/h/k;->d()Landroid/widget/ImageView;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/myscript/atk/sltw/c/h;-><init>(Landroid/widget/ImageView;)V

    iput-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->I:Lcom/myscript/atk/sltw/c/h;

    new-instance v2, Lcom/myscript/atk/sltw/c/e;

    iget-object v3, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->u:Lcom/myscript/atk/sltw/e/b;

    invoke-direct {v2, v3}, Lcom/myscript/atk/sltw/c/e;-><init>(Lcom/myscript/atk/sltw/e/b;)V

    iput-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->L:Lcom/myscript/atk/sltw/c/e;

    invoke-virtual {v1}, Lcom/myscript/atk/sltw/h/k;->e()Lcom/myscript/atk/inw/InkWidget;

    move-result-object v2

    iput-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->G:Lcom/myscript/atk/inw/InkWidget;

    iget-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->r:Lcom/myscript/atk/sltw/f/b/a;

    iget-object v3, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->G:Lcom/myscript/atk/inw/InkWidget;

    invoke-virtual {v2, v3}, Lcom/myscript/atk/sltw/f/b/a;->b(Lcom/myscript/atk/inw/InkWidget;)V

    iget-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->G:Lcom/myscript/atk/inw/InkWidget;

    invoke-virtual {v2, p0}, Lcom/myscript/atk/inw/InkWidget;->setOnStrokeDrawListener(Lcom/myscript/atk/inw/InkWidgetApi$OnStrokeDrawListener;)V

    iget-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->r:Lcom/myscript/atk/sltw/f/b/a;

    iget-object v3, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->G:Lcom/myscript/atk/inw/InkWidget;

    invoke-virtual {v2, v3}, Lcom/myscript/atk/sltw/f/b/a;->a(Lcom/myscript/atk/inw/InkWidget;)V

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v3, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v3, Lcom/myscript/atk/sltw/c/k;

    const-string v4, "insert"

    invoke-direct {v3, v4, v2}, Lcom/myscript/atk/sltw/c/k;-><init>(Ljava/lang/String;Landroid/widget/ImageView;)V

    iput-object v3, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->J:Lcom/myscript/atk/sltw/c/k;

    iget-object v3, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->J:Lcom/myscript/atk/sltw/c/k;

    invoke-virtual {v3, v10}, Lcom/myscript/atk/sltw/c/k;->b(Z)V

    iget-object v3, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->J:Lcom/myscript/atk/sltw/c/k;

    invoke-virtual {v3, v10}, Lcom/myscript/atk/sltw/c/k;->a(Z)V

    iget-object v3, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->J:Lcom/myscript/atk/sltw/c/k;

    invoke-virtual {v3, p0}, Lcom/myscript/atk/sltw/c/k;->a(Lcom/myscript/atk/sltw/c/k$b;)V

    iget-object v3, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->J:Lcom/myscript/atk/sltw/c/k;

    invoke-virtual {v3, p0}, Lcom/myscript/atk/sltw/c/k;->a(Lcom/myscript/atk/sltw/c/k$a;)V

    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v4, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v4, Lcom/myscript/atk/sltw/c/k;

    const-string v5, "cursor"

    invoke-direct {v4, v5, v3}, Lcom/myscript/atk/sltw/c/k;-><init>(Ljava/lang/String;Landroid/widget/ImageView;)V

    iput-object v4, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->K:Lcom/myscript/atk/sltw/c/k;

    iget-object v4, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->K:Lcom/myscript/atk/sltw/c/k;

    iget v5, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->ak:F

    iget v6, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->al:F

    invoke-virtual {v4, v5, v6}, Lcom/myscript/atk/sltw/c/k;->a(FF)V

    iget-object v4, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->K:Lcom/myscript/atk/sltw/c/k;

    invoke-virtual {v4, v7}, Lcom/myscript/atk/sltw/c/k;->b(Z)V

    iget-object v4, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->K:Lcom/myscript/atk/sltw/c/k;

    invoke-virtual {v4, v10}, Lcom/myscript/atk/sltw/c/k;->a(Z)V

    iget-object v4, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->K:Lcom/myscript/atk/sltw/c/k;

    invoke-virtual {v4, p0}, Lcom/myscript/atk/sltw/c/k;->a(Lcom/myscript/atk/sltw/c/k$b;)V

    iget-object v4, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->K:Lcom/myscript/atk/sltw/c/k;

    invoke-virtual {v4, p0}, Lcom/myscript/atk/sltw/c/k;->a(Lcom/myscript/atk/sltw/c/k$c;)V

    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v7, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v8, 0x800053

    iput v8, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const v8, 0x800055

    iput v8, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    new-instance v8, Lcom/myscript/atk/sltw/c/a;

    invoke-direct {v8, v4, v5}, Lcom/myscript/atk/sltw/c/a;-><init>(Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    iput-object v8, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->M:Lcom/myscript/atk/sltw/c/a;

    iget-object v8, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->M:Lcom/myscript/atk/sltw/c/a;

    invoke-virtual {v8, p0}, Lcom/myscript/atk/sltw/c/a;->a(Lcom/myscript/atk/sltw/c/a$a;)V

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-virtual {p0, v1, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    invoke-virtual {p0, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v2, v11, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    invoke-virtual {p0, v3, v11, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    iget v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->ap:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->aq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    new-instance v1, Lcom/myscript/atk/sltw/d/b;

    iget-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->q:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/e/a;->g()F

    move-result v2

    invoke-direct {v1, v2, v0}, Lcom/myscript/atk/sltw/d/b;-><init>(FF)V

    iput-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->y:Lcom/myscript/atk/sltw/d/b;

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->y:Lcom/myscript/atk/sltw/d/b;

    invoke-virtual {v0, p0}, Lcom/myscript/atk/sltw/d/b;->a(Lcom/myscript/atk/sltw/d/b$b;)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->y:Lcom/myscript/atk/sltw/d/b;

    invoke-virtual {v0, p0}, Lcom/myscript/atk/sltw/d/b;->a(Lcom/myscript/atk/sltw/d/b$d;)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->y:Lcom/myscript/atk/sltw/d/b;

    invoke-virtual {v0, p0}, Lcom/myscript/atk/sltw/d/b;->a(Lcom/myscript/atk/sltw/d/b$f;)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->y:Lcom/myscript/atk/sltw/d/b;

    invoke-virtual {v0, p0}, Lcom/myscript/atk/sltw/d/b;->a(Lcom/myscript/atk/sltw/d/b$e;)V

    new-instance v0, Lcom/myscript/atk/sltw/d/a/e;

    iget-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->r:Lcom/myscript/atk/sltw/f/b/a;

    iget-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->s:Lcom/myscript/atk/sltw/f/a/b;

    invoke-direct {v0, v1, v2}, Lcom/myscript/atk/sltw/d/a/e;-><init>(Lcom/myscript/atk/sltw/f/b/a;Lcom/myscript/atk/sltw/f/a/b;)V

    iput-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->A:Lcom/myscript/atk/sltw/d/a/e;

    new-instance v0, Lcom/myscript/atk/sltw/f/a/a;

    iget-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->s:Lcom/myscript/atk/sltw/f/a/b;

    invoke-direct {v0, v1}, Lcom/myscript/atk/sltw/f/a/a;-><init>(Lcom/myscript/atk/sltw/f/a/b;)V

    iput-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->j:Lcom/myscript/atk/sltw/f/a/a;

    iput-boolean v10, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->aw:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->ax:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->A()V

    return-void
.end method

.method static synthetic a(Lcom/myscript/atk/sltw/SingleLineTextWidget;)V
    .locals 0

    invoke-direct {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->z()V

    return-void
.end method

.method static synthetic a(Lcom/myscript/atk/sltw/SingleLineTextWidget;FZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->b(FZ)V

    return-void
.end method

.method static synthetic a(Lcom/myscript/atk/sltw/SingleLineTextWidget;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->a(IZ)V

    return-void
.end method

.method static synthetic a(Lcom/myscript/atk/sltw/SingleLineTextWidget;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->d(Z)V

    return-void
.end method

.method private a(Lcom/myscript/atk/sltw/e/b;IILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v1, -0x1

    invoke-virtual {p1}, Lcom/myscript/atk/sltw/e/b;->a()Lcom/myscript/atk/sltw/f/a/b;

    move-result-object v0

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    invoke-virtual {p1, p2, p3}, Lcom/myscript/atk/sltw/e/b;->a(II)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-ne p2, p3, :cond_3

    invoke-virtual {p1, p2, p4, p5}, Lcom/myscript/atk/sltw/e/b;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-boolean v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->o:Z

    if-eqz v2, :cond_5

    invoke-virtual {v0, p2}, Lcom/myscript/atk/sltw/f/a/b;->d(I)Lcom/myscript/atk/sltw/f/d;

    move-result-object v0

    move-object v2, v0

    :goto_1
    if-nez v2, :cond_6

    move v0, v1

    :goto_2
    if-eqz v2, :cond_4

    if-ne v0, v1, :cond_8

    :cond_4
    invoke-virtual {p1, p2, p3}, Lcom/myscript/atk/sltw/e/b;->a(II)V

    invoke-virtual {p1, p2, p4, p5}, Lcom/myscript/atk/sltw/e/b;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v0, p2, p3}, Lcom/myscript/atk/sltw/f/a/b;->a(II)Lcom/myscript/atk/sltw/f/d;

    move-result-object v0

    move-object v2, v0

    goto :goto_1

    :cond_6
    iget-boolean v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->o:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->s:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v0, v2}, Lcom/myscript/atk/sltw/f/a/b;->d(Lcom/myscript/atk/sltw/f/d;)I

    move-result v0

    sub-int v0, p2, v0

    invoke-virtual {v2, v0, p4}, Lcom/myscript/atk/sltw/f/d;->a(ILjava/lang/String;)I

    move-result v0

    goto :goto_2

    :cond_7
    invoke-virtual {v2, p4}, Lcom/myscript/atk/sltw/f/d;->a(Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    :cond_8
    iget-boolean v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->o:Z

    if-eqz v1, :cond_9

    invoke-virtual {v2, v3}, Lcom/myscript/atk/sltw/f/d;->g(Z)V

    invoke-virtual {p1, v2, p2, v0, p4}, Lcom/myscript/atk/sltw/e/b;->a(Lcom/myscript/atk/sltw/f/d;IILjava/lang/String;)V

    goto :goto_0

    :cond_9
    invoke-virtual {v2}, Lcom/myscript/atk/sltw/f/d;->j()I

    move-result v1

    if-ne v0, v1, :cond_a

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/f/d;->D()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_a
    invoke-virtual {v2, v3}, Lcom/myscript/atk/sltw/f/d;->g(Z)V

    invoke-virtual {p1, v2, v0}, Lcom/myscript/atk/sltw/e/b;->a(Lcom/myscript/atk/sltw/f/d;I)V

    goto :goto_0
.end method

.method private a([Ljava/lang/String;III)V
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->ad:I

    if-ne p2, v0, :cond_1

    iget v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->ae:I

    if-ne p3, v0, :cond_1

    iget v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->ag:I

    if-ne p4, v0, :cond_1

    iget-object v3, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->af:[Ljava/lang/String;

    if-eq p1, v3, :cond_7

    if-eqz p1, :cond_0

    if-nez v3, :cond_4

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    iput p2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->ad:I

    iput p3, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->ae:I

    iput-object p1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->af:[Ljava/lang/String;

    iput p4, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->ag:I

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->R:Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnSelectionChangedListener;

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->R:Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnSelectionChangedListener;

    invoke-interface {v0, p2, p3, p1, p4}, Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnSelectionChangedListener;->onSelectionChanged(II[Ljava/lang/String;I)V

    :cond_3
    return-void

    :cond_4
    array-length v0, p1

    array-length v4, v3

    if-eq v0, v4, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    :goto_1
    array-length v4, p1

    if-ge v0, v4, :cond_7

    aget-object v4, p1, v0

    aget-object v5, v3, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    move v0, v2

    goto :goto_0
.end method

.method private static b(I)I
    .locals 2

    const/16 v1, 0x2710

    const/16 v0, 0xfa

    if-ge p0, v0, :cond_1

    move p0, v0

    :cond_0
    :goto_0
    return p0

    :cond_1
    if-le p0, v1, :cond_0

    move p0, v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnGestureListener;
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->U:Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnGestureListener;

    return-object v0
.end method

.method private b(FZ)V
    .locals 3

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->getWidth()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/myscript/atk/sltw/p;

    invoke-direct {v0, p0, p1, p2}, Lcom/myscript/atk/sltw/p;-><init>(Lcom/myscript/atk/sltw/SingleLineTextWidget;FZ)V

    iput-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->ar:Ljava/lang/Runnable;

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->at:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->as:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->at:Z

    :cond_1
    invoke-virtual {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->b()V

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v0, p1}, Lcom/myscript/atk/sltw/c/o;->j(F)F

    move-result v0

    if-eqz p2, :cond_2

    iget-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v1, v0}, Lcom/myscript/atk/sltw/c/o;->i(F)V

    :goto_1
    iget-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->K:Lcom/myscript/atk/sltw/c/k;

    iget-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->L:Lcom/myscript/atk/sltw/c/e;

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/c/e;->b()F

    move-result v2

    sub-float v0, v2, v0

    invoke-virtual {v1, v0}, Lcom/myscript/atk/sltw/c/k;->b(F)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v1, v0}, Lcom/myscript/atk/sltw/c/o;->h(F)V

    goto :goto_1
.end method

.method private b(IZ)V
    .locals 3

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->isIsolatedMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->o:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->isUserScrolling()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/c/o;->f()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->y()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    new-instance v0, Lcom/myscript/atk/sltw/n;

    invoke-direct {v0, p0, p1, p2}, Lcom/myscript/atk/sltw/n;-><init>(Lcom/myscript/atk/sltw/SingleLineTextWidget;IZ)V

    iput-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->ar:Ljava/lang/Runnable;

    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->at:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->as:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->at:Z

    :cond_4
    iget-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->s:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v1, p1}, Lcom/myscript/atk/sltw/f/a/b;->f(I)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    sub-float v0, v1, v0

    invoke-direct {p0, v0, p2}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->b(FZ)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/myscript/atk/sltw/SingleLineTextWidget;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->b(IZ)V

    return-void
.end method

.method private b(Z)V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/myscript/atk/sltw/c/o;->a(Lcom/myscript/atk/sltw/c/o$a;)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->t:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/a/b;->g()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/c/o;->c()F

    move-result v2

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/c/o;->d()F

    move-result v4

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->u:Lcom/myscript/atk/sltw/e/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/e/b;->g()F

    move-result v3

    sub-float v0, v2, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v5, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->ah:F

    cmpg-float v0, v0, v5

    if-gez v0, :cond_3

    move v0, v1

    :goto_0
    cmpg-float v5, v4, v2

    if-gez v5, :cond_0

    move v0, v1

    :cond_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/c/o;->h()F

    move-result v0

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/c/o;->h()F

    move-result v0

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v5

    new-instance v0, Lcom/myscript/atk/sltw/a/a;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/myscript/atk/sltw/a/a;-><init>(Lcom/myscript/atk/sltw/a/a$a;FFFF)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/4 v1, 0x2

    iput v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->b:I

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->clearAnimation()V

    invoke-virtual {p0, v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_1
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->x()V

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->J:Lcom/myscript/atk/sltw/c/k;

    invoke-virtual {v0, v1}, Lcom/myscript/atk/sltw/c/k;->a(Z)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v0, v1}, Lcom/myscript/atk/sltw/c/o;->b(Z)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v0, v1}, Lcom/myscript/atk/sltw/c/o;->a(Z)V

    invoke-direct {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->w()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->J:Lcom/myscript/atk/sltw/c/k;

    invoke-virtual {v0, v1}, Lcom/myscript/atk/sltw/c/k;->a(Z)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v0, v1}, Lcom/myscript/atk/sltw/c/o;->b(Z)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v0, v1}, Lcom/myscript/atk/sltw/c/o;->a(Z)V

    goto :goto_1

    :cond_3
    move v0, p1

    goto :goto_0
.end method

.method static synthetic b(Lcom/myscript/atk/sltw/SingleLineTextWidget;Z)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->at:Z

    return v0
.end method

.method private static c(I)I
    .locals 2

    const/16 v1, 0x2710

    const/16 v0, 0xfa

    if-ge p0, v0, :cond_1

    move p0, v0

    :cond_0
    :goto_0
    return p0

    :cond_1
    if-le p0, v1, :cond_0

    move p0, v1

    goto :goto_0
.end method

.method static synthetic c(Lcom/myscript/atk/sltw/SingleLineTextWidget;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->e(Z)V

    return-void
.end method

.method private c(Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->s:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v1}, Lcom/myscript/atk/sltw/f/a/b;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->t:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v1}, Lcom/myscript/atk/sltw/f/a/b;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/myscript/atk/sltw/e/a;->k()C

    move-result v1

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->aa:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->ab:Z

    if-eq p1, v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->aa:Ljava/lang/String;

    iput-boolean p1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->ab:Z

    iget-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->N:Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnTextChangedListener;

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->N:Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnTextChangedListener;

    invoke-interface {v0, v1, p1}, Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnTextChangedListener;->onTextChanged(Ljava/lang/String;Z)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->o:Z

    return v0
.end method

.method static synthetic d(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Lcom/myscript/atk/sltw/f/a/b;
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->s:Lcom/myscript/atk/sltw/f/a/b;

    return-object v0
.end method

.method private d(Z)V
    .locals 6

    iget-boolean v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->aw:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->isIsolatedMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->o:Z

    if-eqz v0, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->isInsertionMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->isUserScrolling()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/c/o;->f()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->y()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    new-instance v0, Lcom/myscript/atk/sltw/a;

    invoke-direct {v0, p0, p1}, Lcom/myscript/atk/sltw/a;-><init>(Lcom/myscript/atk/sltw/SingleLineTextWidget;Z)V

    iput-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->ar:Ljava/lang/Runnable;

    goto :goto_0

    :cond_4
    iget-boolean v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->at:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->as:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->at:Z

    :cond_5
    iget-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->L:Lcom/myscript/atk/sltw/c/e;

    invoke-virtual {v1}, Lcom/myscript/atk/sltw/c/e;->c()Z

    iget-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v1}, Lcom/myscript/atk/sltw/c/o;->i()F

    move-result v1

    iget-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->L:Lcom/myscript/atk/sltw/c/e;

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/c/e;->b()F

    move-result v2

    iget v3, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->ak:F

    add-float/2addr v3, v1

    add-float v4, v1, v0

    iget v5, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->al:F

    sub-float/2addr v4, v5

    cmpg-float v3, v2, v3

    if-gez v3, :cond_6

    invoke-direct {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->C()Z

    move-result v3

    if-eqz v3, :cond_6

    iget v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->ak:F

    sub-float v0, v2, v0

    :goto_1
    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0, p1}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->b(FZ)V

    goto :goto_0

    :cond_6
    cmpl-float v3, v2, v4

    if-lez v3, :cond_7

    invoke-direct {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->D()Z

    move-result v3

    if-eqz v3, :cond_7

    iget v3, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->al:F

    sub-float/2addr v0, v3

    sub-float v0, v2, v0

    goto :goto_1

    :cond_7
    move v0, v1

    goto :goto_1
.end method

.method static synthetic d(Lcom/myscript/atk/sltw/SingleLineTextWidget;Z)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->l:Z

    return v0
.end method

.method static synthetic e(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Lcom/myscript/atk/sltw/SingleLineTextWidget$OnDataTrackingListener;
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->aF:Lcom/myscript/atk/sltw/SingleLineTextWidget$OnDataTrackingListener;

    return-object v0
.end method

.method private e(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->getWidth()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/myscript/atk/sltw/o;

    invoke-direct {v0, p0, p1}, Lcom/myscript/atk/sltw/o;-><init>(Lcom/myscript/atk/sltw/SingleLineTextWidget;Z)V

    iput-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->ar:Ljava/lang/Runnable;

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->at:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->as:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->at:Z

    :cond_1
    invoke-virtual {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->b()V

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/c/o;->m()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/c/o;->l()V

    goto :goto_0
.end method

.method static synthetic e(Lcom/myscript/atk/sltw/SingleLineTextWidget;Z)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->m:Z

    return v0
.end method

.method static synthetic f(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Lcom/myscript/atk/sltw/h/a;
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->F:Lcom/myscript/atk/sltw/h/a;

    return-object v0
.end method

.method private f(Z)V
    .locals 2

    const/4 v1, 0x0

    iput-boolean p1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->n:Z

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->b()V

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->I:Lcom/myscript/atk/sltw/c/h;

    invoke-virtual {v0, v1}, Lcom/myscript/atk/sltw/c/h;->a(Z)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->K:Lcom/myscript/atk/sltw/c/k;

    invoke-virtual {v0, v1}, Lcom/myscript/atk/sltw/c/k;->a(Z)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->V:Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnUserScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->V:Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnUserScrollListener;

    invoke-interface {v0}, Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnUserScrollListener;->onUserScrollBegin()V

    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/myscript/atk/sltw/SingleLineTextWidget;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->w:Z

    return p1
.end method

.method static synthetic g(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Lcom/myscript/atk/sltw/g/b;
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->az:Lcom/myscript/atk/sltw/g/b;

    return-object v0
.end method

.method static synthetic g(Lcom/myscript/atk/sltw/SingleLineTextWidget;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->g(Z)V

    return-void
.end method

.method private g(Z)V
    .locals 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->q:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/e/a;->h()F

    move-result v2

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->isIsolatedMode()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->o:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->s:Lcom/myscript/atk/sltw/f/a/b;

    iget-object v4, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->s:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v4}, Lcom/myscript/atk/sltw/f/a/b;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->r:Lcom/myscript/atk/sltw/f/b/a;

    const/16 v6, 0xa

    iget-object v7, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->r:Lcom/myscript/atk/sltw/f/b/a;

    invoke-virtual {v7}, Lcom/myscript/atk/sltw/f/b/a;->b()I

    invoke-virtual {v3, v4, v5, v6}, Lcom/myscript/atk/sltw/f/a/b;->a(ILcom/myscript/atk/sltw/f/b/a;I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->O()V

    :cond_0
    iget-object v3, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->s:Lcom/myscript/atk/sltw/f/a/b;

    invoke-static {}, Lcom/myscript/atk/styluscore/Segment;->getBaselineUndefined()F

    move-result v4

    invoke-static {v3, v4, v2, p1}, Lcom/myscript/atk/sltw/d/a/a;->a(Lcom/myscript/atk/sltw/f/a/b;FFZ)Lcom/myscript/atk/styluscore/InkField;

    move-result-object v2

    iget-object v3, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->ap:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    invoke-static {v3}, Lcom/myscript/atk/styluscore/InkItem;->createFlowMarker(I)Lcom/myscript/atk/styluscore/InkItem;

    move-result-object v3

    invoke-virtual {v2}, Lcom/myscript/atk/styluscore/InkField;->pendingStrokes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v4}, Lcom/myscript/atk/styluscore/InkField;->setPendingStrokes(Ljava/util/List;)V

    iget-object v3, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->y:Lcom/myscript/atk/sltw/d/b;

    invoke-virtual {v3, v2}, Lcom/myscript/atk/sltw/d/b;->a(Lcom/myscript/atk/styluscore/InkField;)V

    invoke-static {v2}, Lcom/myscript/atk/sltw/d/a/e;->c(Lcom/myscript/atk/styluscore/InkField;)Z

    move-result v2

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->isIsolatedMode()Z

    move-result v3

    if-eqz v3, :cond_5

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->s:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/f/a/b;->n()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    :goto_0
    invoke-direct {p0, v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->c(Z)V

    iget-boolean v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->o:Z

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->isInsertionMode()Z

    move-result v1

    if-eqz v1, :cond_7

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->o:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->j:Lcom/myscript/atk/sltw/f/a/a;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/a/a;->a()V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->s:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/a/b;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->t:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/a/b;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H()V

    :cond_4
    return-void

    :cond_5
    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->s:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/f/a/b;->m()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_6
    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->j:Lcom/myscript/atk/sltw/f/a/a;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/a/a;->b()V

    goto :goto_1
.end method

.method private g(F)Z
    .locals 1

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->b()V

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/c/o;->k()F

    move-result v0

    cmpl-float v0, v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h(F)I
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->B:[F

    aget v0, v0, v4

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->C:[I

    aget v0, v0, v4

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->B:[F

    aget v0, v0, v3

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->C:[I

    aget v0, v0, v3

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->C:[I

    aget v0, v0, v4

    int-to-float v0, v0

    iget-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->C:[I

    aget v1, v1, v3

    iget-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->C:[I

    aget v2, v2, v4

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->B:[F

    aget v2, v2, v4

    sub-float v2, p1, v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->B:[F

    aget v2, v2, v3

    iget-object v3, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->B:[F

    aget v3, v3, v4

    sub-float/2addr v2, v3

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0
.end method

.method static synthetic h(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Lcom/myscript/atk/sltw/g/b;
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->aA:Lcom/myscript/atk/sltw/g/b;

    return-object v0
.end method

.method static synthetic h(Lcom/myscript/atk/sltw/SingleLineTextWidget;Z)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->x:Z

    return v0
.end method

.method static synthetic i(Lcom/myscript/atk/sltw/SingleLineTextWidget;)V
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->aG:Lcom/myscript/atk/sltw/SingleLineTextWidget$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->aG:Lcom/myscript/atk/sltw/SingleLineTextWidget$a;

    :cond_0
    return-void
.end method

.method static synthetic i(Lcom/myscript/atk/sltw/SingleLineTextWidget;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->e:Z

    return p1
.end method

.method static synthetic j(Lcom/myscript/atk/sltw/SingleLineTextWidget;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->e(Z)V

    return-void
.end method

.method static synthetic j(Lcom/myscript/atk/sltw/SingleLineTextWidget;Z)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->f:Z

    return v0
.end method

.method static synthetic k(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Lcom/myscript/atk/sltw/g/b;
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->aB:Lcom/myscript/atk/sltw/g/b;

    return-object v0
.end method

.method static synthetic k(Lcom/myscript/atk/sltw/SingleLineTextWidget;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->c(Z)V

    return-void
.end method

.method static synthetic l(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Lcom/myscript/atk/sltw/d/b;
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->y:Lcom/myscript/atk/sltw/d/b;

    return-object v0
.end method

.method static synthetic l(Lcom/myscript/atk/sltw/SingleLineTextWidget;Z)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->au:Z

    return v0
.end method

.method static synthetic m(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->w:Z

    return v0
.end method

.method static synthetic n(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Lcom/myscript/atk/sltw/e/b;
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->u:Lcom/myscript/atk/sltw/e/b;

    return-object v0
.end method

.method static synthetic o(Lcom/myscript/atk/sltw/SingleLineTextWidget;)V
    .locals 0

    invoke-direct {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->I()V

    return-void
.end method

.method static synthetic p(Lcom/myscript/atk/sltw/SingleLineTextWidget;)V
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->aG:Lcom/myscript/atk/sltw/SingleLineTextWidget$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->aG:Lcom/myscript/atk/sltw/SingleLineTextWidget$a;

    :cond_0
    return-void
.end method

.method static synthetic q(Lcom/myscript/atk/sltw/SingleLineTextWidget;)V
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->aG:Lcom/myscript/atk/sltw/SingleLineTextWidget$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->aG:Lcom/myscript/atk/sltw/SingleLineTextWidget$a;

    :cond_0
    return-void
.end method

.method static synthetic r(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Lcom/myscript/atk/sltw/e/b;
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->v:Lcom/myscript/atk/sltw/e/b;

    return-object v0
.end method

.method static synthetic s(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->x:Z

    return v0
.end method

.method static synthetic t(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Lcom/myscript/atk/sltw/g/b;
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->ay:Lcom/myscript/atk/sltw/g/b;

    return-object v0
.end method

.method static synthetic u(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Lcom/myscript/atk/sltw/c/c;
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->E:Lcom/myscript/atk/sltw/c/c;

    return-object v0
.end method

.method static synthetic v(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->i:Z

    return v0
.end method

.method static synthetic w(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Lcom/myscript/atk/sltw/c/k;
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->J:Lcom/myscript/atk/sltw/c/k;

    return-object v0
.end method

.method private w()V
    .locals 2

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->u:Lcom/myscript/atk/sltw/e/b;

    iget-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->t:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v0, v1}, Lcom/myscript/atk/sltw/e/b;->a(Lcom/myscript/atk/sltw/f/a/b;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->g(Z)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->F:Lcom/myscript/atk/sltw/h/a;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/h/a;->b()V

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->aB:Lcom/myscript/atk/sltw/g/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/g/b;->b()V

    invoke-direct {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->J()V

    invoke-direct {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->z()V

    return-void
.end method

.method private x()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->b:I

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->clearAnimation()V

    return-void
.end method

.method static synthetic x(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->g:Z

    return v0
.end method

.method private y()Z
    .locals 1

    iget v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->b:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic y(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->e:Z

    return v0
.end method

.method static synthetic z(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Lcom/myscript/atk/sltw/e/a;
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->q:Lcom/myscript/atk/sltw/e/a;

    return-object v0
.end method

.method private z()V
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->s:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v1}, Lcom/myscript/atk/sltw/f/a/b;->g()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->L:Lcom/myscript/atk/sltw/c/e;

    invoke-virtual {v1}, Lcom/myscript/atk/sltw/c/e;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v1}, Lcom/myscript/atk/sltw/c/o;->i()F

    move-result v1

    iget-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->L:Lcom/myscript/atk/sltw/c/e;

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/c/e;->b()F

    move-result v2

    iget-object v3, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->I:Lcom/myscript/atk/sltw/c/h;

    invoke-virtual {v3, v2}, Lcom/myscript/atk/sltw/c/h;->a(F)V

    iget-object v3, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->I:Lcom/myscript/atk/sltw/c/h;

    invoke-virtual {v3, v0}, Lcom/myscript/atk/sltw/c/h;->b(Z)V

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->isUserScrolling()Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    iget-object v3, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->K:Lcom/myscript/atk/sltw/c/k;

    sub-float v1, v2, v1

    invoke-virtual {v3, v1}, Lcom/myscript/atk/sltw/c/k;->b(F)V

    iget-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->K:Lcom/myscript/atk/sltw/c/k;

    invoke-virtual {v1, v0}, Lcom/myscript/atk/sltw/c/k;->a(Z)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->A()V

    goto :goto_1
.end method


# virtual methods
.method public _enablePinchGestureDetection(Z)V
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/myscript/atk/sltw/c/o;->a(Lcom/myscript/atk/sltw/h/k$a;)V

    return-void

    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public _enablePrefixRecognition(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->av:Z

    return-void
.end method

.method public _readItf(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/myscript/atk/sltw/g/c;

    iget-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->r:Lcom/myscript/atk/sltw/f/b/a;

    invoke-direct {v0, v1}, Lcom/myscript/atk/sltw/g/c;-><init>(Lcom/myscript/atk/sltw/f/b/a;)V

    invoke-virtual {v0, p0}, Lcom/myscript/atk/sltw/g/c;->a(Lcom/myscript/atk/sltw/g/c$a;)V

    invoke-virtual {v0, p1}, Lcom/myscript/atk/sltw/g/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public _setAutoLayoutDelay(I)V
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->aA:Lcom/myscript/atk/sltw/g/b;

    invoke-virtual {v0, p1}, Lcom/myscript/atk/sltw/g/b;->a(I)V

    return-void
.end method

.method public _setAutoLayoutEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->aA:Lcom/myscript/atk/sltw/g/b;

    invoke-virtual {v0, p1}, Lcom/myscript/atk/sltw/g/b;->a(Z)V

    return-void
.end method

.method public _setAutoScrollRatios(FF)V
    .locals 2

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->B:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->B:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    return-void
.end method

.method public _setHandleOverscrollThreshold(F)V
    .locals 0

    iput p1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->an:F

    return-void
.end method

.method public _setHandler(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->ax:Landroid/os/Handler;

    return-void
.end method

.method public _setInsertWindowMargin(F)V
    .locals 0

    iput p1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->ai:F

    return-void
.end method

.method public _setUserOverscrollThreshold(F)V
    .locals 0

    iput p1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->am:F

    return-void
.end method

.method public _writeModel()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->q:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/e/a;->g()F

    move-result v0

    iget-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->q:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v1}, Lcom/myscript/atk/sltw/e/a;->h()F

    move-result v1

    iget-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->s:Lcom/myscript/atk/sltw/f/a/b;

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3}, Lcom/myscript/atk/sltw/d/a/a;->a(Lcom/myscript/atk/sltw/f/a/b;FFZ)Lcom/myscript/atk/styluscore/InkField;

    move-result-object v0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMdd-HHmmss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".itf"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/myscript/atk/styluscore/ItfWriter;

    invoke-direct {v2}, Lcom/myscript/atk/styluscore/ItfWriter;-><init>()V

    iget-object v3, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->y:Lcom/myscript/atk/sltw/d/b;

    invoke-virtual {v3}, Lcom/myscript/atk/sltw/d/b;->k()Lcom/myscript/atk/styluscore/InputMethodConfig;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/myscript/atk/styluscore/ItfWriter;->setConfig(Lcom/myscript/atk/styluscore/InputMethodConfig;)V

    invoke-virtual {v2, v0}, Lcom/myscript/atk/styluscore/ItfWriter;->setField(Lcom/myscript/atk/styluscore/InkField;)V

    invoke-virtual {v2, v1}, Lcom/myscript/atk/styluscore/ItfWriter;->write(Ljava/lang/String;)V

    return-object v1
.end method

.method public final a()V
    .locals 2

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->setCorrectionMode()V

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const v1, 0x3e4ccccd    # 0.2f

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->ai:F

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->W:Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnInsertionWindowListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->W:Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnInsertionWindowListener;

    invoke-interface {v0}, Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnInsertionWindowListener;->onInsertionWindowDidClosed()V

    :cond_0
    return-void
.end method

.method public final a(F)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->ao:I

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->ay:Lcom/myscript/atk/sltw/g/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/g/b;->a()V

    new-instance v0, Lcom/myscript/atk/sltw/q;

    invoke-direct {v0, p0, p1}, Lcom/myscript/atk/sltw/q;-><init>(Lcom/myscript/atk/sltw/SingleLineTextWidget;F)V

    invoke-virtual {p0, v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(FF)V
    .locals 3

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/c/o;->i()F

    move-result v0

    iget-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v1, p1, p2}, Lcom/myscript/atk/sltw/c/o;->a(FF)V

    iget-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->J:Lcom/myscript/atk/sltw/c/k;

    iget-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/c/o;->d()F

    move-result v2

    sub-float v0, v2, v0

    invoke-virtual {v1, v0}, Lcom/myscript/atk/sltw/c/k;->c(F)V

    return-void
.end method

.method public final a(I)V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->getHandler()Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->aq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :goto_1
    return-void

    :cond_0
    new-instance v1, Lcom/myscript/atk/sltw/j;

    invoke-direct {v1, p0, p1}, Lcom/myscript/atk/sltw/j;-><init>(Lcom/myscript/atk/sltw/SingleLineTextWidget;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final a(Lcom/myscript/atk/sltw/c/k;)V
    .locals 2

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/c/o;->f()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/myscript/atk/sltw/c/k;->a(F)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->K:Lcom/myscript/atk/sltw/c/k;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->L:Lcom/myscript/atk/sltw/c/e;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/c/e;->d()V

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->I:Lcom/myscript/atk/sltw/c/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/myscript/atk/sltw/c/h;->a(Z)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->O:Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnCursorHandleDragListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->O:Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnCursorHandleDragListener;

    invoke-interface {v0}, Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnCursorHandleDragListener;->onCursorHandleDragBegin()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/c/o;->f()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/myscript/atk/sltw/c/k;->a(F)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->J:Lcom/myscript/atk/sltw/c/k;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->aB:Lcom/myscript/atk/sltw/g/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/g/b;->b()V

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->P:Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnInsertHandleDragListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->P:Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnInsertHandleDragListener;

    invoke-interface {v0}, Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnInsertHandleDragListener;->onInsertHandleDragBegin()V

    goto :goto_0
.end method

.method public final a(Lcom/myscript/atk/sltw/c/k;F)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->K:Lcom/myscript/atk/sltw/c/k;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->L:Lcom/myscript/atk/sltw/c/e;

    iget-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v1}, Lcom/myscript/atk/sltw/c/o;->i()F

    move-result v1

    add-float/2addr v1, p2

    invoke-virtual {v0, v1}, Lcom/myscript/atk/sltw/c/e;->a(F)I

    move-result v0

    iget v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->ac:I

    if-eq v1, v0, :cond_0

    iput v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->ac:I

    iget-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->O:Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnCursorHandleDragListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->O:Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnCursorHandleDragListener;

    invoke-interface {v1, v0}, Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnCursorHandleDragListener;->onCursorHandleDrag(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->J:Lcom/myscript/atk/sltw/c/k;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/c/o;->i()F

    move-result v0

    add-float v1, v0, p2

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->u:Lcom/myscript/atk/sltw/e/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/e/b;->g()F

    move-result v0

    iget-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->u:Lcom/myscript/atk/sltw/e/b;

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/e/b;->f()Z

    move-result v2

    if-eqz v2, :cond_2

    cmpl-float v2, v1, v0

    if-gtz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->u:Lcom/myscript/atk/sltw/e/b;

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/e/b;->f()Z

    move-result v2

    if-nez v2, :cond_5

    cmpg-float v2, v1, v0

    if-gez v2, :cond_5

    :cond_3
    move v2, v3

    :goto_1
    if-eqz v2, :cond_4

    invoke-direct {p0, v3}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->b(Z)V

    :cond_4
    iget-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/c/o;->a()Z

    move-result v2

    if-nez v2, :cond_6

    :goto_2
    iget-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v1}, Lcom/myscript/atk/sltw/c/o;->h()F

    move-result v1

    sub-float v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v1, v0}, Lcom/myscript/atk/sltw/c/o;->d(F)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/c/o;->d()F

    move-result v0

    iget-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v1}, Lcom/myscript/atk/sltw/c/o;->i()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/myscript/atk/sltw/c/k;->b(F)V

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_2
.end method

.method public final a(Lcom/myscript/atk/sltw/f/a;Lcom/myscript/atk/sltw/f/d;)V
    .locals 7

    const/4 v1, -0x1

    invoke-virtual {p2, p1}, Lcom/myscript/atk/sltw/f/d;->a(Lcom/myscript/atk/sltw/f/a;)I

    move-result v0

    iget-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->L:Lcom/myscript/atk/sltw/c/e;

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/c/e;->c()Z

    invoke-virtual {p2, v0}, Lcom/myscript/atk/sltw/f/d;->b(I)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->s:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v2, p2}, Lcom/myscript/atk/sltw/f/a/b;->d(Lcom/myscript/atk/sltw/f/d;)I

    move-result v2

    add-int v3, v2, v0

    invoke-virtual {p2, v0}, Lcom/myscript/atk/sltw/f/d;->c(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    add-int v2, v3, v0

    const/4 v0, 0x0

    :goto_0
    array-length v6, v4

    if-ge v0, v6, :cond_1

    aget-object v6, v4, v0

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v1, v2

    move v2, v3

    :goto_1
    invoke-direct {p0, v4, v2, v1, v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->a([Ljava/lang/String;III)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    move v1, v2

    move v2, v3

    goto :goto_1

    :cond_2
    move v0, v1

    move v2, v1

    goto :goto_1
.end method

.method public final a(Lcom/myscript/atk/sltw/f/c;I)V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->getHandler()Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    :goto_1
    return-void

    :cond_0
    new-instance v1, Lcom/myscript/atk/sltw/m;

    invoke-direct {v1, p0, p1}, Lcom/myscript/atk/sltw/m;-><init>(Lcom/myscript/atk/sltw/SingleLineTextWidget;Lcom/myscript/atk/sltw/f/c;)V

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final a(Lcom/myscript/atk/sltw/f/d;)V
    .locals 7

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->o:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/myscript/atk/sltw/f/d;->l()[Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    array-length v0, v3

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v1, v2

    :goto_1
    array-length v0, v3

    if-ge v1, v0, :cond_3

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aget-object v6, v3, v1

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_2
    if-nez v0, :cond_2

    aget-object v0, v3, v1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/myscript/atk/sltw/f/d;->k()Ljava/lang/String;

    move-result-object v4

    move v1, v2

    :goto_3
    array-length v3, v0

    if-ge v1, v3, :cond_5

    aget-object v3, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_4
    iget-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->s:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v2, p1}, Lcom/myscript/atk/sltw/f/a/b;->d(Lcom/myscript/atk/sltw/f/d;)I

    move-result v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v3

    :goto_5
    invoke-direct {p0, v0, v3, v2, v1}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->a([Ljava/lang/String;III)V

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    move v1, v2

    goto :goto_4

    :cond_6
    move v0, v2

    goto :goto_2

    :cond_7
    move v1, v2

    move v3, v2

    goto :goto_5
.end method

.method public final a(Lcom/myscript/atk/styluscore/InkField;)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->getHandler()Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->ax:Landroid/os/Handler;

    :cond_0
    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->o:Z

    new-instance v2, Lcom/myscript/atk/sltw/k;

    invoke-direct {v2, p0, p1, v1}, Lcom/myscript/atk/sltw/k;-><init>(Lcom/myscript/atk/sltw/SingleLineTextWidget;Lcom/myscript/atk/styluscore/InkField;Z)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->S:Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnConfigureListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->S:Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnConfigureListener;

    invoke-interface {v0, p1}, Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnConfigureListener;->onConfigureEnd(Z)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    iget-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->u:Lcom/myscript/atk/sltw/e/b;

    invoke-virtual {v1}, Lcom/myscript/atk/sltw/e/b;->g()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/myscript/atk/sltw/c/o;->g(F)V

    return-void
.end method

.method public final b(F)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->ao:I

    new-instance v0, Lcom/myscript/atk/sltw/r;

    invoke-direct {v0, p0, p1}, Lcom/myscript/atk/sltw/r;-><init>(Lcom/myscript/atk/sltw/SingleLineTextWidget;F)V

    invoke-virtual {p0, v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b(FF)V
    .locals 3

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/c/o;->i()F

    move-result v0

    iget-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v1, p1, p2}, Lcom/myscript/atk/sltw/c/o;->a(FF)V

    iget-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->J:Lcom/myscript/atk/sltw/c/k;

    iget-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/c/o;->d()F

    move-result v2

    sub-float v0, v2, v0

    invoke-virtual {v1, v0}, Lcom/myscript/atk/sltw/c/k;->b(F)V

    return-void
.end method

.method public final b(Lcom/myscript/atk/sltw/c/k;)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->K:Lcom/myscript/atk/sltw/c/k;

    if-ne p1, v2, :cond_6

    invoke-virtual {p1}, Lcom/myscript/atk/sltw/c/k;->c()V

    iget-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->L:Lcom/myscript/atk/sltw/c/e;

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/c/e;->e()V

    iget-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->I:Lcom/myscript/atk/sltw/c/h;

    invoke-virtual {v2, v0}, Lcom/myscript/atk/sltw/c/h;->a(Z)V

    iget-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->L:Lcom/myscript/atk/sltw/c/e;

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/c/e;->a()I

    move-result v3

    iget-boolean v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->o:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->s:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v2, v3}, Lcom/myscript/atk/sltw/f/a/b;->g(I)V

    :goto_0
    iget-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->u:Lcom/myscript/atk/sltw/e/b;

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/e/b;->k()[Lcom/myscript/atk/sltw/f/d;

    move-result-object v2

    array-length v4, v2

    if-nez v4, :cond_2

    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/f/d;->v()Z

    move-result v4

    iget-object v5, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->u:Lcom/myscript/atk/sltw/e/b;

    invoke-virtual {v5}, Lcom/myscript/atk/sltw/e/b;->f()Z

    move-result v5

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->s:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v4, v2}, Lcom/myscript/atk/sltw/f/a/b;->e(Lcom/myscript/atk/sltw/f/d;)I

    move-result v2

    :goto_2
    if-ne v3, v2, :cond_5

    iget v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->an:F

    invoke-direct {p0, v2}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->g(F)Z

    move-result v2

    if-eqz v2, :cond_5

    :goto_3
    iget-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->O:Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnCursorHandleDragListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->O:Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnCursorHandleDragListener;

    invoke-interface {v1, v0}, Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnCursorHandleDragListener;->onCursorHandleDragEnd(Z)V

    :cond_0
    :goto_4
    return-void

    :cond_1
    iget-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->s:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v2, v3}, Lcom/myscript/atk/sltw/f/a/b;->h(I)V

    goto :goto_0

    :cond_2
    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    aget-object v2, v2, v4

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->s:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v4, v2}, Lcom/myscript/atk/sltw/f/a/b;->d(Lcom/myscript/atk/sltw/f/d;)I

    move-result v2

    goto :goto_2

    :cond_4
    move v2, v1

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_3

    :cond_6
    iget-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->J:Lcom/myscript/atk/sltw/c/k;

    if-ne p1, v2, :cond_0

    invoke-virtual {p1}, Lcom/myscript/atk/sltw/c/k;->c()V

    iget-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/c/o;->a()Z

    move-result v2

    if-nez v2, :cond_8

    move v2, v0

    :goto_5
    iget-object v3, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->J:Lcom/myscript/atk/sltw/c/k;

    if-nez v2, :cond_9

    :goto_6
    invoke-virtual {v3, v0}, Lcom/myscript/atk/sltw/c/k;->a(Z)V

    if-nez v2, :cond_7

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/c/o;->b()F

    move-result v0

    iput v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->ai:F

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->aB:Lcom/myscript/atk/sltw/g/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/g/b;->b()V

    :cond_7
    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->P:Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnInsertHandleDragListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->P:Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnInsertHandleDragListener;

    invoke-interface {v0, v2}, Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnInsertHandleDragListener;->onInsertHandleDragEnd(Z)V

    goto :goto_4

    :cond_8
    move v2, v1

    goto :goto_5

    :cond_9
    move v0, v1

    goto :goto_6
.end method

.method public final b(Lcom/myscript/atk/sltw/c/k;F)V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->K:Lcom/myscript/atk/sltw/c/k;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->s:Lcom/myscript/atk/sltw/f/a/b;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/myscript/atk/sltw/f/a/b;->f(Lcom/myscript/atk/sltw/f/d;)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->u:Lcom/myscript/atk/sltw/e/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/e/b;->g()F

    move-result v3

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/c/o;->i()F

    move-result v4

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->u:Lcom/myscript/atk/sltw/e/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/e/b;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    add-float v0, v4, p2

    cmpg-float v0, v0, v3

    if-gez v0, :cond_2

    move v0, v1

    :goto_0
    iget-object v5, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->u:Lcom/myscript/atk/sltw/e/b;

    invoke-virtual {v5}, Lcom/myscript/atk/sltw/e/b;->f()Z

    move-result v5

    if-nez v5, :cond_0

    add-float v5, v4, p2

    cmpl-float v3, v5, v3

    if-lez v3, :cond_0

    move v2, v1

    :cond_0
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->q:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/e/a;->e()F

    move-result v0

    sub-float v0, v4, v0

    invoke-direct {p0, v0, v1}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->b(FZ)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->q:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/e/a;->e()F

    move-result v0

    add-float/2addr v0, v4

    invoke-direct {p0, v0, v1}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->b(FZ)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->a(Lcom/myscript/atk/sltw/c/k;F)V

    goto :goto_1
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->S:Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnConfigureListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->S:Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnConfigureListener;

    invoke-interface {v0}, Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnConfigureListener;->onConfigureBegin()V

    :cond_0
    return-void
.end method

.method public final c(F)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->ao:I

    new-instance v0, Lcom/myscript/atk/sltw/s;

    invoke-direct {v0, p0, p1}, Lcom/myscript/atk/sltw/s;-><init>(Lcom/myscript/atk/sltw/SingleLineTextWidget;F)V

    invoke-virtual {p0, v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final c(FF)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/c/o;->i()F

    move-result v0

    iget-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v1, p1, p2}, Lcom/myscript/atk/sltw/c/o;->a(FF)V

    iget-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->J:Lcom/myscript/atk/sltw/c/k;

    iget-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/c/o;->d()F

    move-result v2

    sub-float v0, v2, v0

    invoke-virtual {v1, v0}, Lcom/myscript/atk/sltw/c/k;->b(F)V

    iget v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->J:Lcom/myscript/atk/sltw/c/k;

    invoke-virtual {v0, v3}, Lcom/myscript/atk/sltw/c/k;->a(Z)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v0, v3}, Lcom/myscript/atk/sltw/c/o;->b(Z)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v0, v3}, Lcom/myscript/atk/sltw/c/o;->a(Z)V

    invoke-direct {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->w()V

    :cond_0
    iput v3, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->b:I

    return-void
.end method

.method public final c(Lcom/myscript/atk/sltw/c/k;)V
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->J:Lcom/myscript/atk/sltw/c/k;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->Q:Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnInsertHandleClickedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->Q:Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnInsertHandleClickedListener;

    invoke-interface {v0}, Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnInsertHandleClickedListener;->onInsertHandleClicked()V

    :cond_0
    return-void
.end method

.method public centerTo(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->b(IZ)V

    return-void
.end method

.method public configure(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[B)V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v0, "iw_IL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v2, "he_IL"

    :goto_0
    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->ap:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->D:[I

    aget v0, v0, v9

    iget-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->D:[I

    aget v1, v1, v10

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->y:Lcom/myscript/atk/sltw/d/b;

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->getId()I

    move-result v1

    iget-boolean v7, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->av:Z

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->getContext()Landroid/content/Context;

    move-result-object v8

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v8}, Lcom/myscript/atk/sltw/d/b;->a(ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[BIZLandroid/content/Context;)V

    const-string v0, "ar"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "fa_IR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "he_IL"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ur_PK"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_0
    move v0, v10

    :goto_1
    iget-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->q:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v1, v0}, Lcom/myscript/atk/sltw/e/a;->a(Z)V

    iget-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v1, v0}, Lcom/myscript/atk/sltw/c/o;->c(Z)V

    const-string v0, "hi_IN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->A:Lcom/myscript/atk/sltw/d/a/e;

    invoke-virtual {v0, v10}, Lcom/myscript/atk/sltw/d/a/e;->b(Z)V

    :goto_2
    const-string v0, "ar"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->A:Lcom/myscript/atk/sltw/d/a/e;

    invoke-virtual {v0, v10}, Lcom/myscript/atk/sltw/d/a/e;->a(Z)V

    :goto_3
    const-string v0, "zh_CN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "zh_TW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "zh_HK"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "zh_TR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ja_JP"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_1
    move v0, v10

    :goto_4
    iput-boolean v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->i:Z

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->u:Lcom/myscript/atk/sltw/e/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/e/b;->i()V

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->v:Lcom/myscript/atk/sltw/e/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/e/b;->i()V

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->u:Lcom/myscript/atk/sltw/e/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/e/b;->j()V

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->v:Lcom/myscript/atk/sltw/e/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/e/b;->j()V

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->aA:Lcom/myscript/atk/sltw/g/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/g/b;->b()V

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->isInsertionMode()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-direct {p0, v0, v9}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->a(FZ)V

    :cond_2
    invoke-static {p2}, Lcom/myscript/atk/sltw/d/b;->a([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->aB:Lcom/myscript/atk/sltw/g/b;

    invoke-virtual {v1}, Lcom/myscript/atk/sltw/g/b;->b()V

    :cond_3
    iget-boolean v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->o:Z

    if-eqz v0, :cond_a

    invoke-static {p2}, Lcom/myscript/atk/sltw/d/b;->c([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-static {p2}, Lcom/myscript/atk/sltw/d/b;->b([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    :goto_5
    iput-boolean v10, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->o:Z

    iget-boolean v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->o:Z

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->s:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v1}, Lcom/myscript/atk/sltw/f/a/b;->a()V

    iget-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->t:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v1}, Lcom/myscript/atk/sltw/f/a/b;->a()V

    :cond_4
    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->o:Z

    if-eqz v0, :cond_d

    :cond_5
    invoke-virtual {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->isInsertionMode()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0, v9}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->e(Z)V

    :goto_6
    iget-boolean v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->o:Z

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->M()V

    :goto_7
    return-void

    :cond_6
    move v0, v9

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->A:Lcom/myscript/atk/sltw/d/a/e;

    invoke-virtual {v0, v9}, Lcom/myscript/atk/sltw/d/a/e;->b(Z)V

    goto/16 :goto_2

    :cond_8
    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->A:Lcom/myscript/atk/sltw/d/a/e;

    invoke-virtual {v0, v9}, Lcom/myscript/atk/sltw/d/a/e;->a(Z)V

    goto/16 :goto_3

    :cond_9
    move v0, v9

    goto :goto_4

    :cond_a
    move v10, v9

    goto :goto_5

    :cond_b
    invoke-direct {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->z()V

    goto :goto_6

    :cond_c
    invoke-direct {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->K()V

    goto :goto_7

    :cond_d
    invoke-direct {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->A()V

    invoke-direct {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->K()V

    goto :goto_7

    :cond_e
    move-object v2, p1

    goto/16 :goto_0
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->ao:I

    new-instance v0, Lcom/myscript/atk/sltw/b;

    invoke-direct {v0, p0}, Lcom/myscript/atk/sltw/b;-><init>(Lcom/myscript/atk/sltw/SingleLineTextWidget;)V

    invoke-virtual {p0, v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final d(F)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->ao:I

    new-instance v0, Lcom/myscript/atk/sltw/t;

    invoke-direct {v0, p0, p1}, Lcom/myscript/atk/sltw/t;-><init>(Lcom/myscript/atk/sltw/SingleLineTextWidget;F)V

    invoke-virtual {p0, v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final e()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->ao:I

    new-instance v0, Lcom/myscript/atk/sltw/c;

    invoke-direct {v0, p0}, Lcom/myscript/atk/sltw/c;-><init>(Lcom/myscript/atk/sltw/SingleLineTextWidget;)V

    invoke-virtual {p0, v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final e(F)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->ao:I

    new-instance v0, Lcom/myscript/atk/sltw/d;

    invoke-direct {v0, p0, p1}, Lcom/myscript/atk/sltw/d;-><init>(Lcom/myscript/atk/sltw/SingleLineTextWidget;F)V

    invoke-virtual {p0, v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final f(F)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->ao:I

    new-instance v0, Lcom/myscript/atk/sltw/e;

    invoke-direct {v0, p0, p1}, Lcom/myscript/atk/sltw/e;-><init>(Lcom/myscript/atk/sltw/SingleLineTextWidget;F)V

    invoke-virtual {p0, v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final f()Z
    .locals 1

    invoke-direct {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->C()Z

    move-result v0

    return v0
.end method

.method public final g()Z
    .locals 1

    invoke-direct {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->D()Z

    move-result v0

    return v0
.end method

.method public getCursorIndex()I
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->L:Lcom/myscript/atk/sltw/c/e;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/c/e;->a()I

    move-result v0

    return v0
.end method

.method public getErrorCode()I
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->y:Lcom/myscript/atk/sltw/d/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/d/b;->b()I

    move-result v0

    return v0
.end method

.method public getErrorString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->y:Lcom/myscript/atk/sltw/d/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/d/b;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInsertIndex()I
    .locals 1

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->isInsertionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->s:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/a/b;->l()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final h()V
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->G:Lcom/myscript/atk/inw/InkWidget;

    invoke-virtual {v0}, Lcom/myscript/atk/inw/InkWidget;->cancel()V

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->U:Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnGestureListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->U:Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnGestureListener;

    invoke-interface {v0}, Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnGestureListener;->onPinchGesture()V

    :cond_0
    return-void
.end method

.method public final i()V
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->G:Lcom/myscript/atk/inw/InkWidget;

    invoke-virtual {v0}, Lcom/myscript/atk/inw/InkWidget;->cancel()V

    return-void
.end method

.method public isCursorHandleDragging()Z
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->K:Lcom/myscript/atk/sltw/c/k;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/c/k;->e()Z

    move-result v0

    return v0
.end method

.method public isInsertHandleDragging()Z
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->J:Lcom/myscript/atk/sltw/c/k;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/c/k;->e()Z

    move-result v0

    return v0
.end method

.method public isInsertionMode()Z
    .locals 1

    iget v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->a:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIsolatedMode()Z
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->y:Lcom/myscript/atk/sltw/d/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/d/b;->a()Z

    move-result v0

    return v0
.end method

.method public isUserScrolling()Z
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/c/o;->r()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->M:Lcom/myscript/atk/sltw/c/a;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/c/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->n:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/c/o;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j()V
    .locals 1

    iget-boolean v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->n:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->M:Lcom/myscript/atk/sltw/c/a;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/c/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->E()V

    :cond_0
    return-void
.end method

.method public final k()V
    .locals 1

    iget-boolean v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->n:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->F()V

    :cond_0
    return-void
.end method

.method public final l()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->f(Z)V

    return-void
.end method

.method public final m()V
    .locals 0

    invoke-direct {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->E()V

    return-void
.end method

.method public moveCursorToVisibleIndex()Z
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v1}, Lcom/myscript/atk/sltw/c/o;->f()F

    move-result v2

    const/4 v1, 0x0

    cmpl-float v1, v2, v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->s:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v1}, Lcom/myscript/atk/sltw/f/a/b;->l()I

    move-result v1

    iget-object v3, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->t:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v3}, Lcom/myscript/atk/sltw/f/a/b;->l()I

    move-result v3

    add-int/2addr v1, v3

    iget-object v3, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->L:Lcom/myscript/atk/sltw/c/e;

    invoke-virtual {v3}, Lcom/myscript/atk/sltw/c/e;->c()Z

    iget-object v3, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v3}, Lcom/myscript/atk/sltw/c/o;->i()F

    move-result v3

    iget-object v4, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->L:Lcom/myscript/atk/sltw/c/e;

    invoke-virtual {v4}, Lcom/myscript/atk/sltw/c/e;->b()F

    move-result v4

    iget v5, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->ak:F

    add-float/2addr v5, v3

    add-float/2addr v2, v3

    iget v3, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->al:F

    sub-float v3, v2, v3

    iget-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->L:Lcom/myscript/atk/sltw/c/e;

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/c/e;->a()I

    move-result v2

    cmpg-float v6, v4, v5

    if-gez v6, :cond_2

    invoke-direct {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->C()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->s:Lcom/myscript/atk/sltw/f/a/b;

    iget-boolean v3, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->o:Z

    invoke-virtual {v1, v5, v3}, Lcom/myscript/atk/sltw/f/a/b;->b(FZ)I

    move-result v1

    :cond_0
    :goto_0
    if-eq v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->setCursorIndex(I)V

    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    cmpl-float v4, v4, v3

    if-lez v4, :cond_3

    invoke-direct {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->D()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->s:Lcom/myscript/atk/sltw/f/a/b;

    iget-boolean v4, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->o:Z

    invoke-virtual {v1, v3, v4}, Lcom/myscript/atk/sltw/f/a/b;->b(FZ)I

    move-result v1

    goto :goto_0

    :cond_3
    if-gez v2, :cond_4

    move v1, v0

    goto :goto_0

    :cond_4
    if-gt v2, v1, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public final n()V
    .locals 0

    invoke-direct {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->F()V

    return-void
.end method

.method public final o()Z
    .locals 1

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->isIsolatedMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->isIsolatedMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->o:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->l:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    const/4 v2, 0x0

    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "isBoxingMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->o:Z

    const-string v0, "isCJLanguage"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->i:Z

    const-string v0, "defaultGuideBoxFrame"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    new-instance v1, Lcom/myscript/atk/sltw/f/a;

    invoke-direct {v1, v0, v2}, Lcom/myscript/atk/sltw/f/a;-><init>(Landroid/graphics/RectF;Z)V

    iput-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->p:Lcom/myscript/atk/sltw/f/a;

    const-string v0, "instanceState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void

    :cond_0
    iput-boolean v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->aw:Z

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "instanceState"

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "isBoxingMode"

    iget-boolean v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->o:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "isCJLanguage"

    iget-boolean v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->i:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->p:Lcom/myscript/atk/sltw/f/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/myscript/atk/sltw/f/a;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/myscript/atk/sltw/f/a;-><init>(Landroid/graphics/RectF;Z)V

    iput-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->p:Lcom/myscript/atk/sltw/f/a;

    :cond_0
    const-string v1, "defaultGuideBoxFrame"

    iget-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->p:Lcom/myscript/atk/sltw/f/a;

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/f/a;->d()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    new-instance v0, Lcom/myscript/atk/sltw/f/a;

    new-instance v1, Landroid/graphics/RectF;

    int-to-float v2, p1

    int-to-float v3, p2

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/myscript/atk/sltw/f/a;-><init>(Landroid/graphics/RectF;Z)V

    iput-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->p:Lcom/myscript/atk/sltw/f/a;

    iget-boolean v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->o:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->isIsolatedMode()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->p:Lcom/myscript/atk/sltw/f/a;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->s:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v1}, Lcom/myscript/atk/sltw/f/a/b;->f()V

    iget-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->s:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v1, v0}, Lcom/myscript/atk/sltw/f/a/b;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->ap:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iget-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->y:Lcom/myscript/atk/sltw/d/b;

    invoke-virtual {v1, v0}, Lcom/myscript/atk/sltw/d/b;->a(I)V

    :cond_0
    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->J:Lcom/myscript/atk/sltw/c/k;

    invoke-virtual {v0, p2}, Lcom/myscript/atk/sltw/c/k;->a(I)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->K:Lcom/myscript/atk/sltw/c/k;

    invoke-virtual {v0, p2}, Lcom/myscript/atk/sltw/c/k;->a(I)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    iget-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->J:Lcom/myscript/atk/sltw/c/k;

    invoke-virtual {v1}, Lcom/myscript/atk/sltw/c/k;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/myscript/atk/sltw/c/o;->b(I)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->J:Lcom/myscript/atk/sltw/c/k;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/myscript/atk/sltw/c/k;->a(F)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->K:Lcom/myscript/atk/sltw/c/k;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/myscript/atk/sltw/c/k;->a(F)V

    invoke-direct {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->B()V

    invoke-direct {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->J()V

    return-void
.end method

.method public onStrokeDraw(Lcom/myscript/atk/inw/InkWidget;FF)V
    .locals 1

    iget-boolean v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->F:Lcom/myscript/atk/sltw/h/a;

    invoke-virtual {v0, p2}, Lcom/myscript/atk/sltw/h/a;->c(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->F:Lcom/myscript/atk/sltw/h/a;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/h/a;->a()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->f:Z

    :cond_0
    return-void
.end method

.method public onStrokeDrawBegin(Lcom/myscript/atk/inw/InkWidget;)V
    .locals 2

    const/4 v1, 0x1

    new-instance v0, Lcom/myscript/atk/styluscore/VoTimeStamp;

    invoke-direct {v0}, Lcom/myscript/atk/styluscore/VoTimeStamp;-><init>()V

    iput-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->c:Lcom/myscript/atk/styluscore/VoTimeStamp;

    iput-boolean v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->aw:Z

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->ay:Lcom/myscript/atk/sltw/g/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/g/b;->a()V

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->az:Lcom/myscript/atk/sltw/g/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/g/b;->a()V

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->aA:Lcom/myscript/atk/sltw/g/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/g/b;->a()V

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->aB:Lcom/myscript/atk/sltw/g/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/g/b;->a()V

    iput-boolean v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->l:Z

    iput-boolean v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->m:Z

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/c/o;->n()V

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v0, v1}, Lcom/myscript/atk/sltw/c/o;->d(Z)V

    iget-boolean v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->z:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->z:Z

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->T:Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnRecognitionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->T:Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnRecognitionListener;

    invoke-interface {v0}, Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnRecognitionListener;->onRecognitionBegin()V

    :cond_0
    invoke-direct {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->A()V

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->y:Lcom/myscript/atk/sltw/d/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/d/b;->h()V

    return-void
.end method

.method public onStrokeDrawCancel(Lcom/myscript/atk/inw/InkWidget;)V
    .locals 2

    invoke-direct {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->G()V

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/myscript/atk/sltw/c/o;->d(Z)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->y:Lcom/myscript/atk/sltw/d/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/d/b;->i()V

    return-void
.end method

.method public onStrokeDrawEnd(Lcom/myscript/atk/inw/InkWidget;)V
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->aw:Z

    new-instance v0, Lcom/myscript/atk/styluscore/VoTimeStamp;

    invoke-direct {v0}, Lcom/myscript/atk/styluscore/VoTimeStamp;-><init>()V

    iput-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->d:Lcom/myscript/atk/styluscore/VoTimeStamp;

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->r:Lcom/myscript/atk/sltw/f/b/a;

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->c:Lcom/myscript/atk/styluscore/VoTimeStamp;

    iget-object v3, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->d:Lcom/myscript/atk/styluscore/VoTimeStamp;

    invoke-static {p1, v0, v3}, Lcom/myscript/atk/sltw/f/b/a;->a(Lcom/myscript/atk/inw/InkWidget;Lcom/myscript/atk/styluscore/VoTimeStamp;Lcom/myscript/atk/styluscore/VoTimeStamp;)Lcom/myscript/atk/sltw/f/c;

    move-result-object v4

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->q:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/e/a;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->F:Lcom/myscript/atk/sltw/h/a;

    invoke-virtual {v4}, Lcom/myscript/atk/sltw/f/c;->b()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0, v3}, Lcom/myscript/atk/sltw/h/a;->d(F)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->s:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v3}, Lcom/myscript/atk/sltw/f/a/b;->j()I

    move-result v3

    iget-object v5, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->s:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v5}, Lcom/myscript/atk/sltw/f/a/b;->p()I

    move-result v5

    if-eqz v3, :cond_4

    if-ne v3, v5, :cond_4

    move v3, v1

    :goto_1
    iget-boolean v6, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->o:Z

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->e:Z

    if-nez v6, :cond_5

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->s:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v3}, Lcom/myscript/atk/sltw/f/a/b;->m()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->j:Lcom/myscript/atk/sltw/f/a/a;

    invoke-virtual {v0, v4, v5}, Lcom/myscript/atk/sltw/f/a/a;->a(Lcom/myscript/atk/sltw/f/c;I)V

    :cond_0
    :goto_2
    iget-boolean v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->f:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->s:Lcom/myscript/atk/sltw/f/a/b;

    iget-object v3, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->s:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v3}, Lcom/myscript/atk/sltw/f/a/b;->h()Lcom/myscript/atk/sltw/f/d;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/myscript/atk/sltw/f/a/b;->e(Lcom/myscript/atk/sltw/f/d;)I

    move-result v0

    iput v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->h:I

    :goto_3
    iput-boolean v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->e:Z

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v0, v2}, Lcom/myscript/atk/sltw/c/o;->d(Z)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->s:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v0, v4}, Lcom/myscript/atk/sltw/f/a/b;->a(Lcom/myscript/atk/sltw/f/c;)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->y:Lcom/myscript/atk/sltw/d/b;

    invoke-virtual {v0, v4}, Lcom/myscript/atk/sltw/d/b;->a(Lcom/myscript/atk/sltw/f/c;)V

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->isInsertionMode()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->E:Lcom/myscript/atk/sltw/c/c;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/c/c;->a()F

    move-result v0

    iget-boolean v3, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->o:Z

    if-eqz v3, :cond_8

    iget-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->az:Lcom/myscript/atk/sltw/g/b;

    const/16 v0, 0x5dc

    :goto_4
    invoke-virtual {v1, v0}, Lcom/myscript/atk/sltw/g/b;->b(I)V

    :goto_5
    invoke-virtual {p1}, Lcom/myscript/atk/inw/InkWidget;->clearWithoutInvalidate()V

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->F:Lcom/myscript/atk/sltw/h/a;

    invoke-virtual {v4}, Lcom/myscript/atk/sltw/f/c;->b()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->right:F

    invoke-virtual {v0, v3}, Lcom/myscript/atk/sltw/h/a;->d(F)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v3, v2

    goto :goto_1

    :cond_5
    iget-boolean v3, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->e:Z

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->f:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->j:Lcom/myscript/atk/sltw/f/a/a;

    invoke-virtual {v0, v4, v5}, Lcom/myscript/atk/sltw/f/a/a;->a(Lcom/myscript/atk/sltw/f/c;I)V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->j:Lcom/myscript/atk/sltw/f/a/a;

    add-int/lit8 v3, v5, 0x1

    invoke-virtual {v0, v4, v3}, Lcom/myscript/atk/sltw/f/a/a;->a(Lcom/myscript/atk/sltw/f/c;I)V

    goto :goto_2

    :cond_7
    const/4 v0, -0x1

    iput v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->h:I

    goto :goto_3

    :cond_8
    iget-object v3, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->ay:Lcom/myscript/atk/sltw/g/b;

    invoke-direct {p0, v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->h(F)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/myscript/atk/sltw/g/b;->b(I)V

    iget-object v3, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->az:Lcom/myscript/atk/sltw/g/b;

    iget-object v4, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->B:[F

    aget v4, v4, v2

    cmpg-float v4, v0, v4

    if-gez v4, :cond_9

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->D:[I

    aget v0, v0, v2

    move-object v1, v3

    goto :goto_4

    :cond_9
    iget-object v4, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->B:[F

    aget v4, v4, v1

    cmpl-float v4, v0, v4

    if-lez v4, :cond_a

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->D:[I

    aget v0, v0, v1

    move-object v1, v3

    goto :goto_4

    :cond_a
    iget-object v4, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->D:[I

    aget v4, v4, v2

    int-to-float v4, v4

    iget-object v5, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->D:[I

    aget v5, v5, v1

    iget-object v6, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->D:[I

    aget v6, v6, v2

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->B:[F

    aget v6, v6, v2

    sub-float/2addr v0, v6

    mul-float/2addr v0, v5

    iget-object v5, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->B:[F

    aget v1, v5, v1

    iget-object v5, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->B:[F

    aget v2, v5, v2

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    add-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    move-object v1, v3

    goto/16 :goto_4

    :cond_b
    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->az:Lcom/myscript/atk/sltw/g/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/g/b;->e()V

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->aA:Lcom/myscript/atk/sltw/g/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/g/b;->c()V

    goto/16 :goto_5
.end method

.method public final p()Z
    .locals 1

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->isIsolatedMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->isIsolatedMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->o:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->m:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->k:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final q()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->b(Z)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->f(Z)V

    return-void
.end method

.method public final r()V
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/c/o;->o()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->E()V

    :cond_0
    return-void
.end method

.method public releaseEngine()V
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->y:Lcom/myscript/atk/sltw/d/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/d/b;->f()V

    return-void
.end method

.method public replaceCharacters(IILjava/lang/String;)V
    .locals 12

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->s:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/a/b;->k()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->s:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v1}, Lcom/myscript/atk/sltw/f/a/b;->l()I

    move-result v9

    if-le v9, p1, :cond_1

    if-gt p2, v9, :cond_1

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->s:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/a/b;->l()I

    move-result v0

    iget-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->t:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v1}, Lcom/myscript/atk/sltw/f/a/b;->l()I

    move-result v1

    add-int v3, v0, v1

    if-gez p1, :cond_3

    const/4 v2, 0x0

    :goto_1
    if-gez p2, :cond_4

    const/4 v3, 0x0

    :cond_2
    :goto_2
    if-le v2, v3, :cond_5

    const-string v0, "TextWidget"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Unable to replace characters in invalid range "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    if-le p1, v3, :cond_f

    move v2, v3

    goto :goto_1

    :cond_4
    if-gt p2, v3, :cond_2

    move v3, p2

    goto :goto_2

    :cond_5
    if-eqz p3, :cond_e

    const/16 v0, 0xa

    invoke-static {}, Lcom/myscript/atk/sltw/e/a;->k()C

    move-result v1

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    :goto_3
    invoke-direct {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->I()V

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->y:Lcom/myscript/atk/sltw/d/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/d/b;->d()Ljava/lang/String;

    move-result-object v5

    if-gt v3, v9, :cond_8

    iget-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->u:Lcom/myscript/atk/sltw/e/b;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->a(Lcom/myscript/atk/sltw/e/b;IILjava/lang/String;Ljava/lang/String;)V

    :goto_4
    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    iget-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->u:Lcom/myscript/atk/sltw/e/b;

    invoke-virtual {v1}, Lcom/myscript/atk/sltw/e/b;->g()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/myscript/atk/sltw/c/o;->e(F)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->g(Z)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->F:Lcom/myscript/atk/sltw/h/a;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/h/a;->b()V

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->aB:Lcom/myscript/atk/sltw/g/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/g/b;->b()V

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->isIsolatedMode()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->isInsertionMode()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->e(Z)V

    :cond_6
    :goto_5
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_d

    :cond_7
    const-string v0, "ar"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->aA:Lcom/myscript/atk/sltw/g/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/g/b;->b()V

    goto/16 :goto_0

    :cond_8
    if-lt v2, v9, :cond_9

    iget-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->v:Lcom/myscript/atk/sltw/e/b;

    sub-int/2addr v2, v9

    sub-int/2addr v3, v9

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->a(Lcom/myscript/atk/sltw/e/b;IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    const/4 v10, 0x0

    const/4 v0, 0x0

    if-eqz v4, :cond_a

    sub-int v1, v9, v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v6, v1, :cond_b

    const/4 v0, 0x0

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_a
    :goto_6
    iget-object v7, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->u:Lcom/myscript/atk/sltw/e/b;

    move-object v6, p0

    move v8, v2

    move-object v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->a(Lcom/myscript/atk/sltw/e/b;IILjava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->v:Lcom/myscript/atk/sltw/e/b;

    const/4 v8, 0x0

    sub-int v9, v3, v9

    move-object v6, p0

    move-object v10, v0

    move-object v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->a(Lcom/myscript/atk/sltw/e/b;IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_b
    move-object v10, v4

    goto :goto_6

    :cond_c
    invoke-direct {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->z()V

    goto :goto_5

    :cond_d
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/myscript/atk/sltw/g/a;->c(C)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->aA:Lcom/myscript/atk/sltw/g/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/g/b;->e()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->au:Z

    goto/16 :goto_0

    :cond_e
    move-object v4, p3

    goto/16 :goto_3

    :cond_f
    move v2, p1

    goto/16 :goto_1
.end method

.method public final s()V
    .locals 3

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/c/o;->i()F

    move-result v0

    iget-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v1}, Lcom/myscript/atk/sltw/c/o;->f()F

    move-result v1

    iget-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/c/o;->e()F

    move-result v2

    sub-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v1, v0}, Lcom/myscript/atk/sltw/c/o;->i(F)V

    return-void
.end method

.method public scrollTo(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->a(IZ)V

    return-void
.end method

.method public scrollToCursor()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->d(Z)V

    return-void
.end method

.method public setAutoHideHandleDelay(I)V
    .locals 2

    const/16 v1, 0x2710

    const/16 v0, 0x64

    if-ge p1, v0, :cond_1

    move p1, v0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->K:Lcom/myscript/atk/sltw/c/k;

    invoke-virtual {v0, p1}, Lcom/myscript/atk/sltw/c/k;->c(I)V

    return-void

    :cond_1
    if-le p1, v1, :cond_0

    move p1, v1

    goto :goto_0
.end method

.method public setAutoHideHandleEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->K:Lcom/myscript/atk/sltw/c/k;

    invoke-virtual {v0, p1}, Lcom/myscript/atk/sltw/c/k;->b(Z)V

    return-void
.end method

.method public setAutoScrollDelay(I)V
    .locals 2

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->C:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->setAutoScrollDelays(II)V

    return-void
.end method

.method public setAutoScrollDelays(II)V
    .locals 3

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->C:[I

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->b(I)I

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->C:[I

    const/4 v1, 0x1

    invoke-static {p2}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->b(I)I

    move-result v2

    aput v2, v0, v1

    return-void
.end method

.method public setAutoScrollEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->ay:Lcom/myscript/atk/sltw/g/b;

    invoke-virtual {v0, p1}, Lcom/myscript/atk/sltw/g/b;->a(Z)V

    return-void
.end method

.method public setAutoScrollMargin(F)V
    .locals 3

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v0, v1}, Lcom/myscript/atk/sltw/b/a;->a(FLandroid/util/DisplayMetrics;)F

    move-result v0

    const/high16 v2, 0x43c80000    # 400.0f

    invoke-static {v2, v1}, Lcom/myscript/atk/sltw/b/a;->a(FLandroid/util/DisplayMetrics;)F

    move-result v1

    cmpg-float v2, p1, v0

    if-gez v2, :cond_1

    move p1, v0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v0, p1}, Lcom/myscript/atk/sltw/c/o;->f(F)V

    return-void

    :cond_1
    cmpl-float v0, p1, v1

    if-lez v0, :cond_0

    move p1, v1

    goto :goto_0
.end method

.method public setAutoTypesetDelay(I)V
    .locals 2

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->D:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-virtual {p0, v0, p1}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->setAutoTypesetDelays(II)V

    return-void
.end method

.method public setAutoTypesetDelays(II)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->D:[I

    invoke-static {p1}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->c(I)I

    move-result v1

    aput v1, v0, v2

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->D:[I

    invoke-static {p2}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->c(I)I

    move-result v1

    aput v1, v0, v3

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->D:[I

    aget v0, v0, v2

    iget-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->D:[I

    aget v1, v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->y:Lcom/myscript/atk/sltw/d/b;

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/myscript/atk/sltw/d/b;->a(ILandroid/content/Context;)V

    return-void
.end method

.method public setAutoTypesetEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->az:Lcom/myscript/atk/sltw/g/b;

    invoke-virtual {v0, p1}, Lcom/myscript/atk/sltw/g/b;->a(Z)V

    return-void
.end method

.method public setBaselineColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v0, p1}, Lcom/myscript/atk/sltw/c/o;->a(I)V

    return-void
.end method

.method public setBaselinePosition(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    move p1, v0

    :cond_0
    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->q:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v0, p1}, Lcom/myscript/atk/sltw/e/a;->a(F)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v0, p1}, Lcom/myscript/atk/sltw/c/o;->a(F)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->aA:Lcom/myscript/atk/sltw/g/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/g/b;->b()V

    invoke-direct {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->B()V

    return-void
.end method

.method public setBaselineThickness(F)V
    .locals 3

    const/high16 v1, 0x40a00000    # 5.0f

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v2, p1, v0

    if-gez v2, :cond_1

    move p1, v0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v0, p1}, Lcom/myscript/atk/sltw/c/o;->b(F)V

    return-void

    :cond_1
    cmpl-float v0, p1, v1

    if-lez v0, :cond_0

    move p1, v1

    goto :goto_0
.end method

.method public setBoxMask(IIZ)V
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->s:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/myscript/atk/sltw/f/a/b;->a(IIZ)V

    return-void
.end method

.method public setBoxesConfiguration(IIIII)V
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->r:Lcom/myscript/atk/sltw/f/b/a;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/b/a;->f()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->r:Lcom/myscript/atk/sltw/f/b/a;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/b/a;->e()I

    move-result v0

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->r:Lcom/myscript/atk/sltw/f/b/a;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/b/a;->b()I

    move-result v0

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->r:Lcom/myscript/atk/sltw/f/b/a;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/b/a;->c()I

    move-result v0

    if-ne p4, v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->r:Lcom/myscript/atk/sltw/f/b/a;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/b/a;->d()I

    move-result v0

    if-eq p5, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->r:Lcom/myscript/atk/sltw/f/b/a;

    invoke-virtual {v0, p1}, Lcom/myscript/atk/sltw/f/b/a;->e(I)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->r:Lcom/myscript/atk/sltw/f/b/a;

    invoke-virtual {v0, p2}, Lcom/myscript/atk/sltw/f/b/a;->d(I)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->r:Lcom/myscript/atk/sltw/f/b/a;

    invoke-virtual {v0, p3}, Lcom/myscript/atk/sltw/f/b/a;->c(I)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->r:Lcom/myscript/atk/sltw/f/b/a;

    invoke-virtual {v0, p4}, Lcom/myscript/atk/sltw/f/b/a;->b(I)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->r:Lcom/myscript/atk/sltw/f/b/a;

    invoke-virtual {v0, p5}, Lcom/myscript/atk/sltw/f/b/a;->a(I)V

    iget-boolean v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->o:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->M()V

    :cond_1
    return-void
.end method

.method public setBoxesResource(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/myscript/atk/sltw/c/o;->e(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-boolean v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->o:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->M()V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Landroid/graphics/drawable/ColorDrawable;

    if-nez v1, :cond_2

    instance-of v0, v0, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/myscript/atk/sltw/c/o;->e(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Guide boxes resources should be NinePatchDrawable or ColorDrawable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCorrectionMode()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->y:Lcom/myscript/atk/sltw/d/b;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->isIsolatedMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->o:Z

    if-eqz v0, :cond_0

    :cond_2
    iget v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->a:I

    if-eq v0, v1, :cond_0

    iput v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->a:I

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->ay:Lcom/myscript/atk/sltw/g/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/g/b;->a()V

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->aA:Lcom/myscript/atk/sltw/g/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/g/b;->e()V

    invoke-direct {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->N()V

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->s:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/a/b;->o()V

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->t:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/a/b;->o()V

    invoke-direct {p0, v1}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->b(Z)V

    goto :goto_0
.end method

.method public setCursorHandleResource(I)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->K:Lcom/myscript/atk/sltw/c/k;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/myscript/atk/sltw/c/k;->a(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->K:Lcom/myscript/atk/sltw/c/k;

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/myscript/atk/sltw/c/k;->a(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setCursorIndex(I)V
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->L:Lcom/myscript/atk/sltw/c/e;

    invoke-virtual {v0, p1}, Lcom/myscript/atk/sltw/c/e;->a(I)V

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->isIsolatedMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->o:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->isInsertionMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->y()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->z()V

    :cond_1
    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->K:Lcom/myscript/atk/sltw/c/k;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/c/k;->d()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/c/o;->r()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->M:Lcom/myscript/atk/sltw/c/a;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/c/a;->a()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->o:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->s:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/a/b;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->s:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v0, p1}, Lcom/myscript/atk/sltw/f/a/b;->g(I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->s:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v0, p1}, Lcom/myscript/atk/sltw/f/a/b;->h(I)V

    goto :goto_0
.end method

.method public setCursorMargins(FF)V
    .locals 4

    const/high16 v3, 0x41f00000    # 30.0f

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/myscript/atk/sltw/b/a;->a(FLandroid/util/DisplayMetrics;)F

    move-result v2

    invoke-static {v3, v1}, Lcom/myscript/atk/sltw/b/a;->a(FLandroid/util/DisplayMetrics;)F

    move-result v1

    cmpg-float v3, p1, v0

    if-gez v3, :cond_2

    move p1, v0

    :cond_0
    :goto_0
    cmpg-float v2, p2, v0

    if-gez v2, :cond_3

    move p2, v0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->I:Lcom/myscript/atk/sltw/c/h;

    invoke-virtual {v0, p1, p2}, Lcom/myscript/atk/sltw/c/h;->a(FF)V

    invoke-direct {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->B()V

    return-void

    :cond_2
    cmpl-float v3, p1, v2

    if-lez v3, :cond_0

    move p1, v2

    goto :goto_0

    :cond_3
    cmpl-float v0, p2, v1

    if-lez v0, :cond_1

    move p2, v1

    goto :goto_1
.end method

.method public setCursorResource(I)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->I:Lcom/myscript/atk/sltw/c/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/myscript/atk/sltw/c/h;->a(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->I:Lcom/myscript/atk/sltw/c/h;

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/myscript/atk/sltw/c/h;->a(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setHoverEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->k:Z

    return-void
.end method

.method public setInkCapResources(II)V
    .locals 4

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v2, :cond_0

    const-string v0, "TextWidget"

    const-string v1, "Ink start cap resource must be a bitmap!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    instance-of v2, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v2, :cond_1

    const-string v0, "TextWidget"

    const-string v1, "Ink end cap resource must be a bitmap!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->G:Lcom/myscript/atk/inw/InkWidget;

    invoke-virtual {v2}, Lcom/myscript/atk/inw/InkWidget;->getStrokeStartCap()Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->G:Lcom/myscript/atk/inw/InkWidget;

    invoke-virtual {v3}, Lcom/myscript/atk/inw/InkWidget;->getStrokeEndCap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->r:Lcom/myscript/atk/sltw/f/b/a;

    invoke-virtual {v1, v2, v0}, Lcom/myscript/atk/sltw/f/b/a;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->G:Lcom/myscript/atk/inw/InkWidget;

    invoke-virtual {v1, v2, v0}, Lcom/myscript/atk/inw/InkWidget;->setStrokeCaps(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setInkColor(I)V
    .locals 1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->setInkColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setInkColor(Landroid/content/res/ColorStateList;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    sget-object v1, Lcom/myscript/atk/sltw/SingleLineTextWidget;->SELECTED_STATE_SET:[I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    iget-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->r:Lcom/myscript/atk/sltw/f/b/a;

    invoke-virtual {v2, v0, v1}, Lcom/myscript/atk/sltw/f/b/a;->a(II)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->G:Lcom/myscript/atk/inw/InkWidget;

    invoke-virtual {v0, v1}, Lcom/myscript/atk/inw/InkWidget;->setStrokeColor(I)V

    return-void
.end method

.method public setInkEffect(I)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    if-nez v0, :cond_2

    const-string v0, "TextWidget"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid ink effect type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->r:Lcom/myscript/atk/sltw/f/b/a;

    invoke-virtual {v0, p1}, Lcom/myscript/atk/sltw/f/b/a;->f(I)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->r:Lcom/myscript/atk/sltw/f/b/a;

    iget-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->G:Lcom/myscript/atk/inw/InkWidget;

    invoke-virtual {v0, v1}, Lcom/myscript/atk/sltw/f/b/a;->b(Lcom/myscript/atk/inw/InkWidget;)V

    goto :goto_1
.end method

.method public setInkWidth(F)V
    .locals 3

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/myscript/atk/sltw/b/a;->a(FLandroid/util/DisplayMetrics;)F

    move-result v0

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2, v1}, Lcom/myscript/atk/sltw/b/a;->a(FLandroid/util/DisplayMetrics;)F

    move-result v1

    cmpg-float v2, p1, v0

    if-gez v2, :cond_1

    move p1, v0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->r:Lcom/myscript/atk/sltw/f/b/a;

    invoke-virtual {v0, p1}, Lcom/myscript/atk/sltw/f/b/a;->a(F)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->G:Lcom/myscript/atk/inw/InkWidget;

    invoke-virtual {v0, p1}, Lcom/myscript/atk/inw/InkWidget;->setStrokeWidth(F)V

    return-void

    :cond_1
    cmpl-float v0, p1, v1

    if-lez v0, :cond_0

    move p1, v1

    goto :goto_0
.end method

.method public setInsertHandleResource(I)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->J:Lcom/myscript/atk/sltw/c/k;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/myscript/atk/sltw/c/k;->a(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->J:Lcom/myscript/atk/sltw/c/k;

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/myscript/atk/sltw/c/k;->a(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setInsertWindowColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v0, p1}, Lcom/myscript/atk/sltw/c/o;->c(I)V

    return-void
.end method

.method public setInsertionMode(I)Z
    .locals 7

    const/high16 v6, 0x40a00000    # 5.0f

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->isIsolatedMode()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->o:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->o:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->s:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/f/a/b;->l()I

    move-result v2

    if-ne p1, v2, :cond_0

    :cond_2
    iget-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->s:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/f/a/b;->l()I

    move-result v2

    iget-object v3, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->t:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v3}, Lcom/myscript/atk/sltw/f/a/b;->l()I

    move-result v3

    add-int/2addr v2, v3

    if-ltz p1, :cond_3

    if-le p1, v2, :cond_4

    :cond_3
    const-string v1, "TextWidget"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to set insertion mode at index "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget v3, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->a:I

    if-nez v3, :cond_5

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->getInsertIndex()I

    move-result v3

    if-ne p1, v3, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->s:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v3, p1}, Lcom/myscript/atk/sltw/f/a/b;->e(I)Lcom/myscript/atk/sltw/f/d;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v4, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->u:Lcom/myscript/atk/sltw/e/b;

    invoke-virtual {v4}, Lcom/myscript/atk/sltw/e/b;->f()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/myscript/atk/sltw/f/d;->e(Z)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_6
    iput v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->a:I

    invoke-direct {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->N()V

    iget-object v3, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->u:Lcom/myscript/atk/sltw/e/b;

    iget-object v4, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->t:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v3, v4}, Lcom/myscript/atk/sltw/e/b;->a(Lcom/myscript/atk/sltw/f/a/b;)V

    iget-object v3, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->u:Lcom/myscript/atk/sltw/e/b;

    iget-object v4, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->v:Lcom/myscript/atk/sltw/e/b;

    invoke-virtual {v3, p1, v4}, Lcom/myscript/atk/sltw/e/b;->a(ILcom/myscript/atk/sltw/e/b;)F

    move-result v3

    iget-boolean v4, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->aC:Z

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->t:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v4}, Lcom/myscript/atk/sltw/f/a/b;->g()Z

    move-result v4

    if-nez v4, :cond_7

    iput-boolean v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->aC:Z

    iget-object v4, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->s:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v4}, Lcom/myscript/atk/sltw/f/a/b;->l()I

    move-result v4

    iput v4, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->aD:I

    iget-object v4, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->aF:Lcom/myscript/atk/sltw/SingleLineTextWidget$OnDataTrackingListener;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->aF:Lcom/myscript/atk/sltw/SingleLineTextWidget$OnDataTrackingListener;

    invoke-interface {v4}, Lcom/myscript/atk/sltw/SingleLineTextWidget$OnDataTrackingListener;->onDataTrackingInsertWindowOpen()V

    :cond_7
    iget-object v4, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->q:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v4}, Lcom/myscript/atk/sltw/e/a;->c()Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v4}, Lcom/myscript/atk/sltw/c/o;->h()F

    move-result v4

    iget v5, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->ai:F

    add-float/2addr v4, v5

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->aj:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_8

    iget v4, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->aj:F

    sub-float v4, v3, v4

    sub-float/2addr v4, v6

    iget-object v5, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v5}, Lcom/myscript/atk/sltw/c/o;->h()F

    move-result v5

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->ai:F

    :cond_8
    :goto_1
    invoke-direct {p0, v3, v1}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->a(FZ)V

    if-ge p1, v2, :cond_b

    iget-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/c/o;->g()F

    move-result v2

    sub-float v2, v3, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v3, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v3}, Lcom/myscript/atk/sltw/c/o;->e()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_a

    iget-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->ay:Lcom/myscript/atk/sltw/g/b;

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/g/b;->a()V

    :goto_2
    invoke-direct {p0, v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->g(Z)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->F:Lcom/myscript/atk/sltw/h/a;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/h/a;->b()V

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->aB:Lcom/myscript/atk/sltw/g/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/g/b;->b()V

    invoke-direct {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->A()V

    move v0, v1

    goto/16 :goto_0

    :cond_9
    iget-object v4, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v4}, Lcom/myscript/atk/sltw/c/o;->h()F

    move-result v4

    iget v5, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->ai:F

    sub-float/2addr v4, v5

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->aj:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_8

    iget v4, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->aj:F

    add-float/2addr v4, v3

    add-float/2addr v4, v6

    iget-object v5, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v5}, Lcom/myscript/atk/sltw/c/o;->h()F

    move-result v5

    sub-float v4, v5, v4

    iput v4, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->ai:F

    goto :goto_1

    :cond_a
    iget-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->ay:Lcom/myscript/atk/sltw/g/b;

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/g/b;->b()V

    goto :goto_2

    :cond_b
    iget-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->E:Lcom/myscript/atk/sltw/c/c;

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/c/c;->a()F

    move-result v2

    iget-object v3, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->ay:Lcom/myscript/atk/sltw/g/b;

    invoke-direct {p0, v2}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->h(F)I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/myscript/atk/sltw/g/b;->b(I)V

    goto :goto_2
.end method

.method public setOnConfigureListener(Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnConfigureListener;)V
    .locals 0

    iput-object p1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->S:Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnConfigureListener;

    return-void
.end method

.method public setOnCursorHandleDragListener(Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnCursorHandleDragListener;)V
    .locals 0

    iput-object p1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->O:Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnCursorHandleDragListener;

    return-void
.end method

.method public setOnDataTrackingListener(Lcom/myscript/atk/sltw/SingleLineTextWidget$OnDataTrackingListener;)V
    .locals 0

    iput-object p1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->aF:Lcom/myscript/atk/sltw/SingleLineTextWidget$OnDataTrackingListener;

    return-void
.end method

.method public setOnGestureListener(Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnGestureListener;)V
    .locals 0

    iput-object p1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->U:Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnGestureListener;

    return-void
.end method

.method public setOnInsertHandleClickedListener(Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnInsertHandleClickedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->Q:Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnInsertHandleClickedListener;

    return-void
.end method

.method public setOnInsertHandleDragListener(Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnInsertHandleDragListener;)V
    .locals 0

    iput-object p1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->P:Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnInsertHandleDragListener;

    return-void
.end method

.method public setOnInsertionWindowListener(Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnInsertionWindowListener;)V
    .locals 0

    iput-object p1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->W:Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnInsertionWindowListener;

    return-void
.end method

.method public setOnRecognitionListener(Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnRecognitionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->T:Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnRecognitionListener;

    return-void
.end method

.method public setOnSelectionChangedListener(Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnSelectionChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->R:Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnSelectionChangedListener;

    return-void
.end method

.method public setOnTextChangedListener(Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnTextChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->N:Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnTextChangedListener;

    return-void
.end method

.method public setOnUserScrollListener(Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnUserScrollListener;)V
    .locals 0

    iput-object p1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->V:Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnUserScrollListener;

    return-void
.end method

.method public setScrollArrowLeftResource(I)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->M:Lcom/myscript/atk/sltw/c/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/myscript/atk/sltw/c/a;->a(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->M:Lcom/myscript/atk/sltw/c/a;

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/myscript/atk/sltw/c/a;->a(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setScrollArrowRightResource(I)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->M:Lcom/myscript/atk/sltw/c/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/myscript/atk/sltw/c/a;->b(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->M:Lcom/myscript/atk/sltw/c/a;

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/myscript/atk/sltw/c/a;->b(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setScrollbarBackground(I)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/myscript/atk/sltw/c/o;->d(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/myscript/atk/sltw/c/o;->d(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setScrollbarMask(I)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/myscript/atk/sltw/c/o;->c(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/myscript/atk/sltw/c/o;->c(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setScrollbarResource(I)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/myscript/atk/sltw/c/o;->b(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/myscript/atk/sltw/c/o;->b(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 17

    if-eqz p1, :cond_c

    const/16 v2, 0xa

    invoke-static {}, Lcom/myscript/atk/sltw/e/a;->k()C

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->s:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v4}, Lcom/myscript/atk/sltw/f/a/b;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->t:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v4}, Lcom/myscript/atk/sltw/f/a/b;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->y:Lcom/myscript/atk/sltw/d/b;

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/d/b;->g()Z

    move-result v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v2, :cond_3

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->isIsolatedMode()Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->s:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/f/a/b;->b()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->t:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/f/a/b;->a()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->s:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->r:Lcom/myscript/atk/sltw/f/b/a;

    const/16 v6, 0xa

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->r:Lcom/myscript/atk/sltw/f/b/a;

    invoke-virtual {v7}, Lcom/myscript/atk/sltw/f/b/a;->b()I

    invoke-virtual {v2, v4, v5, v6}, Lcom/myscript/atk/sltw/f/a/b;->a(ILcom/myscript/atk/sltw/f/b/a;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->O()V

    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->y:Lcom/myscript/atk/sltw/d/b;

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/d/b;->d()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->q:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/e/a;->g()F

    move-result v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->q:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/e/a;->h()F

    move-result v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->q:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/e/a;->i()F

    move-result v2

    float-to-double v6, v2

    const-wide/16 v8, 0x0

    cmpl-double v2, v6, v8

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->q:Lcom/myscript/atk/sltw/e/a;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/myscript/atk/sltw/e/a;->b(Z)V

    :goto_2
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_9

    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->s:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v4}, Lcom/myscript/atk/sltw/f/a/b;->d()Ljava/util/List;

    move-result-object v4

    invoke-static {v10, v4}, Lcom/myscript/atk/sltw/d/a/a;->a(FLjava/util/List;)Lcom/myscript/atk/styluscore/InkField;

    move-result-object v4

    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->A:Lcom/myscript/atk/sltw/d/a/e;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->r:Lcom/myscript/atk/sltw/f/b/a;

    invoke-virtual {v6}, Lcom/myscript/atk/sltw/f/b/a;->b()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v4, v6}, Lcom/myscript/atk/sltw/d/a/e;->a(Lcom/myscript/atk/styluscore/InkField;F)V

    if-eqz v16, :cond_a

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const/4 v3, 0x1

    :goto_4
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->g(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->u:Lcom/myscript/atk/sltw/e/b;

    invoke-virtual {v3}, Lcom/myscript/atk/sltw/e/b;->j()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->u:Lcom/myscript/atk/sltw/e/b;

    invoke-virtual {v3}, Lcom/myscript/atk/sltw/e/b;->h()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->L:Lcom/myscript/atk/sltw/c/e;

    invoke-virtual {v3}, Lcom/myscript/atk/sltw/c/e;->a()I

    move-result v3

    if-le v3, v2, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->L:Lcom/myscript/atk/sltw/c/e;

    invoke-virtual {v3, v2}, Lcom/myscript/atk/sltw/c/e;->a(I)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->F:Lcom/myscript/atk/sltw/h/a;

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/h/a;->b()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->aB:Lcom/myscript/atk/sltw/g/b;

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/g/b;->b()V

    invoke-virtual/range {p0 .. p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->isIsolatedMode()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->o:Z

    if-eqz v2, :cond_5

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->isInsertionMode()Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->e(Z)V

    :cond_5
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->o:Z

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->j:Lcom/myscript/atk/sltw/f/a/a;

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/f/a/a;->a()V

    :cond_6
    return-void

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->s:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/f/a/b;->a()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->t:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/f/a/b;->a()V

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->q:Lcom/myscript/atk/sltw/e/a;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/myscript/atk/sltw/e/a;->b(Z)V

    goto/16 :goto_2

    :cond_9
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v15

    invoke-static {v3}, Lcom/myscript/atk/styluscore/StringUtils;->graphemesPositions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->q:Lcom/myscript/atk/sltw/e/a;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->u:Lcom/myscript/atk/sltw/e/b;

    invoke-virtual {v5}, Lcom/myscript/atk/sltw/e/b;->e()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->s:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v6}, Lcom/myscript/atk/sltw/f/a/b;->d()Ljava/util/List;

    move-result-object v6

    invoke-virtual/range {v2 .. v7}, Lcom/myscript/atk/sltw/e/a;->a(Ljava/lang/String;Ljava/lang/String;FLjava/util/List;Ljava/util/List;)[Landroid/graphics/RectF;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->s:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/f/a/b;->d()Ljava/util/List;

    move-result-object v13

    move-object v8, v3

    move-object v9, v4

    move-object v14, v7

    invoke-static/range {v8 .. v14}, Lcom/myscript/atk/sltw/d/a/a;->a(Ljava/lang/String;Ljava/lang/String;FF[Landroid/graphics/RectF;Ljava/util/List;Ljava/util/List;)Lcom/myscript/atk/styluscore/InkField;

    move-result-object v2

    move-object v4, v2

    move v2, v15

    goto/16 :goto_3

    :cond_a
    const/4 v3, 0x0

    goto/16 :goto_4

    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->z()V

    goto :goto_5

    :cond_c
    move-object/from16 v3, p1

    goto/16 :goto_0
.end method

.method public setTextColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->r:Lcom/myscript/atk/sltw/f/b/a;

    invoke-virtual {v0, p1, p1}, Lcom/myscript/atk/sltw/f/b/a;->b(II)V

    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    sget-object v1, Lcom/myscript/atk/sltw/SingleLineTextWidget;->SELECTED_STATE_SET:[I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    iget-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->r:Lcom/myscript/atk/sltw/f/b/a;

    invoke-virtual {v2, v0, v1}, Lcom/myscript/atk/sltw/f/b/a;->b(II)V

    return-void
.end method

.method public setTextSize(F)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->setTextSizes([F)V

    return-void
.end method

.method public setTextSizes([F)V
    .locals 5

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v0}, Lcom/myscript/atk/sltw/b/a;->a(Landroid/util/DisplayMetrics;)[F

    move-result-object p1

    :cond_1
    array-length v0, p1

    new-array v1, v0, [F

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v2, 0x42200000    # 40.0f

    invoke-static {v2, v0}, Lcom/myscript/atk/sltw/b/a;->a(FLandroid/util/DisplayMetrics;)F

    move-result v2

    const/high16 v3, 0x43960000    # 300.0f

    invoke-static {v3, v0}, Lcom/myscript/atk/sltw/b/a;->a(FLandroid/util/DisplayMetrics;)F

    move-result v3

    const/4 v0, 0x0

    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_4

    aget v4, p1, v0

    cmpg-float v4, v4, v2

    if-gez v4, :cond_2

    aput v2, v1, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    aget v4, p1, v0

    cmpl-float v4, v4, v3

    if-lez v4, :cond_3

    aput v3, v1, v0

    goto :goto_1

    :cond_3
    aget v4, p1, v0

    aput v4, v1, v0

    goto :goto_1

    :cond_4
    invoke-static {v1}, Ljava/util/Arrays;->sort([F)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->q:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/e/a;->a()[F

    move-result-object v0

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_2
    return-void

    :cond_5
    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->q:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v0, v1}, Lcom/myscript/atk/sltw/e/a;->a([F)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->aB:Lcom/myscript/atk/sltw/g/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/g/b;->b()V

    invoke-direct {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->B()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->w:Z

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->az:Lcom/myscript/atk/sltw/g/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/g/b;->b()V

    goto :goto_2
.end method

.method public setTransientSpaceEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->aB:Lcom/myscript/atk/sltw/g/b;

    invoke-virtual {v0, p1}, Lcom/myscript/atk/sltw/g/b;->a(Z)V

    return-void
.end method

.method public setTransientSpaceVisibleWhenEmpty(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->g:Z

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->s:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/a/b;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->aB:Lcom/myscript/atk/sltw/g/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/g/b;->b()V

    :cond_0
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->q:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v0, p1}, Lcom/myscript/atk/sltw/e/a;->a(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->aB:Lcom/myscript/atk/sltw/g/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/g/b;->b()V

    invoke-direct {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->B()V

    return-void
.end method

.method public setWritingAreaBackgroundColor(I)V
    .locals 2

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/myscript/atk/sltw/c/o;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setWritingAreaBackgroundResource(I)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/myscript/atk/sltw/c/o;->a(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/myscript/atk/sltw/c/o;->a(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public shouldBeginDraw(Lcom/myscript/atk/inw/InkWidget;FFIJZ)Z
    .locals 2

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->M:Lcom/myscript/atk/sltw/c/a;

    iget-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v1}, Lcom/myscript/atk/sltw/c/o;->i()F

    move-result v1

    sub-float v1, p2, v1

    invoke-virtual {v0, v1, p3}, Lcom/myscript/atk/sltw/c/a;->a(FF)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public smoothCenterTo(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->b(IZ)V

    return-void
.end method

.method public smoothScrollTo(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->a(IZ)V

    return-void
.end method

.method public smoothScrollToCursor()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->d(Z)V

    return-void
.end method

.method public final t()V
    .locals 3

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/c/o;->i()F

    move-result v0

    iget-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v1}, Lcom/myscript/atk/sltw/c/o;->f()F

    move-result v1

    iget-object v2, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/c/o;->e()F

    move-result v2

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v1, v0}, Lcom/myscript/atk/sltw/c/o;->i(F)V

    return-void
.end method

.method public final u()Z
    .locals 1

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->isIsolatedMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->isIsolatedMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->o:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->H:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/c/o;->r()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->l:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final v()Ljava/util/List;
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

    iget-object v0, p0, Lcom/myscript/atk/sltw/SingleLineTextWidget;->s:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/a/b;->d()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/sec/daliviews/layouts/CardLayout;
.super Lcom/sec/daliviews/layouts/GridLayout;
.source "CardLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/daliviews/layouts/CardLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/daliviews/layouts/CardLayout;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/sec/daliviews/layouts/GridLayout;-><init>(IIIII)V

    return-void
.end method

.method public constructor <init>(IIIIIIZ)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/sec/daliviews/layouts/GridLayout;-><init>(IIIIIIZ)V

    return-void
.end method

.method public constructor <init>(IIIIIZ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/sec/daliviews/layouts/GridLayout;-><init>(IIIIIZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/daliviews/layouts/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private native setHeadIndex(JI)V
.end method

.method private native setIsHeadExpanding(JZ)V
.end method


# virtual methods
.method protected native create()J
.end method

.method public setHeadIndex(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/CardLayout;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/layouts/CardLayout;->setHeadIndex(JI)V

    return-void
.end method

.method public setIsHeadExpanding(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/CardLayout;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/layouts/CardLayout;->setIsHeadExpanding(JZ)V

    return-void
.end method

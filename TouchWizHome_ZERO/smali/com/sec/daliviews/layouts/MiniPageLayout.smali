.class public Lcom/sec/daliviews/layouts/MiniPageLayout;
.super Lcom/sec/daliviews/layouts/GridLayout;
.source "MiniPageLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/daliviews/layouts/MiniPageLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/daliviews/layouts/MiniPageLayout;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/sec/daliviews/layouts/GridLayout;-><init>(IIIII)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/daliviews/layouts/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private native setMiniPageProperties(JFFFFFJ)V
.end method


# virtual methods
.method protected native create()J
.end method

.method public setMiniPageProperties(FFFFFLcom/sec/daliviews/layouts/PageLayout;)V
    .locals 10

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/MiniPageLayout;->getmNPeer()J

    move-result-wide v1

    invoke-virtual/range {p6 .. p6}, Lcom/sec/daliviews/layouts/PageLayout;->getPeer()J

    move-result-wide v8

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v9}, Lcom/sec/daliviews/layouts/MiniPageLayout;->setMiniPageProperties(JFFFFFJ)V

    return-void
.end method

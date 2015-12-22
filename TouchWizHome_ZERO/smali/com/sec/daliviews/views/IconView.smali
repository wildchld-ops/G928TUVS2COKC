.class public abstract Lcom/sec/daliviews/views/IconView;
.super Lcom/sec/daliviews/views/ModedView;
.source "IconView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/daliviews/views/IconView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/daliviews/views/IconView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/daliviews/views/ModedView;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/daliviews/views/ModedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected native CopyIconImage(JJ)V
.end method

.method public CopyIconImage(Lcom/sec/daliviews/views/ImageView;)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/daliviews/views/IconView;->getmNPeer()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sec/daliviews/views/ImageView;->getPeer()J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sec/daliviews/views/IconView;->CopyIconImage(JJ)V

    return-void
.end method

.method protected native create()J
.end method

.method public darken()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/IconView;->getmNPeer()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/daliviews/views/IconView;->darken(J)V

    return-void
.end method

.method protected native darken(J)V
.end method

.method public getIsNativeModes()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public lighten()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/IconView;->getmNPeer()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/daliviews/views/IconView;->lighten(J)V

    return-void
.end method

.method protected native lighten(J)V
.end method

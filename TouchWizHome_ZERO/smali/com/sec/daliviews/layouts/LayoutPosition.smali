.class public Lcom/sec/daliviews/layouts/LayoutPosition;
.super Ljava/lang/Object;
.source "LayoutPosition.java"


# instance fields
.field private mCellX:I

.field private mCellY:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/daliviews/layouts/LayoutPosition;->mCellX:I

    iput p2, p0, Lcom/sec/daliviews/layouts/LayoutPosition;->mCellY:I

    return-void
.end method


# virtual methods
.method public getCellX()I
    .locals 1

    iget v0, p0, Lcom/sec/daliviews/layouts/LayoutPosition;->mCellX:I

    return v0
.end method

.method public getCellY()I
    .locals 1

    iget v0, p0, Lcom/sec/daliviews/layouts/LayoutPosition;->mCellY:I

    return v0
.end method

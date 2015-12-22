.class public Lcom/sec/daliviews/views/TextView$ColourMap;
.super Ljava/lang/Object;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/daliviews/views/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ColourMap"
.end annotation


# instance fields
.field private mColour:I

.field private mLength:I

.field private mStartInex:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/daliviews/views/TextView$ColourMap;->mStartInex:I

    iput p2, p0, Lcom/sec/daliviews/views/TextView$ColourMap;->mLength:I

    iput p3, p0, Lcom/sec/daliviews/views/TextView$ColourMap;->mColour:I

    return-void
.end method


# virtual methods
.method public getColour()I
    .locals 1

    iget v0, p0, Lcom/sec/daliviews/views/TextView$ColourMap;->mColour:I

    return v0
.end method

.method public getLength()I
    .locals 1

    iget v0, p0, Lcom/sec/daliviews/views/TextView$ColourMap;->mLength:I

    return v0
.end method

.method public getStartIndex()I
    .locals 1

    iget v0, p0, Lcom/sec/daliviews/views/TextView$ColourMap;->mStartInex:I

    return v0
.end method

.method public setColour(I)V
    .locals 0

    iput p1, p0, Lcom/sec/daliviews/views/TextView$ColourMap;->mColour:I

    return-void
.end method

.method public setLength(I)V
    .locals 0

    iput p1, p0, Lcom/sec/daliviews/views/TextView$ColourMap;->mLength:I

    return-void
.end method

.method public setStartIndex(I)V
    .locals 0

    iput p1, p0, Lcom/sec/daliviews/views/TextView$ColourMap;->mStartInex:I

    return-void
.end method

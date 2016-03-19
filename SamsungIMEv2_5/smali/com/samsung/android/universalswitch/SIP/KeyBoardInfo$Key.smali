.class public Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Key;
.super Ljava/lang/Object;
.source "KeyBoardInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Key"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private height:I

.field private width:I

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Key;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Key;->width:I

    return v0
.end method

.method public getX()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Key;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Key;->y:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Key;->height:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Key;->width:I

    return-void
.end method

.method public setX(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Key;->x:I

    return-void
.end method

.method public setY(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Key;->y:I

    return-void
.end method

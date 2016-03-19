.class public Lcom/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;
.super Ljava/lang/Object;
.source "RemoteControllerDataStructure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/framework/input/remoteController/RemoteControllerDataStructure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Position"
.end annotation


# instance fields
.field column:I

.field row:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->row:I

    iput p2, p0, Lcom/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->column:I

    return-void
.end method

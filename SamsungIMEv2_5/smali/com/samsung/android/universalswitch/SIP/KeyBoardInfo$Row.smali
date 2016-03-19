.class public Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Row;
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
    name = "Row"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field public mKeyforRow:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Key;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Row;->mKeyforRow:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public SetKeyforRow(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Key;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Key;",
            ">;"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Row;->mKeyforRow:Ljava/util/ArrayList;

    return-object p1
.end method

.method public getKeyforRow()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Key;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Row;->mKeyforRow:Ljava/util/ArrayList;

    return-object v0
.end method

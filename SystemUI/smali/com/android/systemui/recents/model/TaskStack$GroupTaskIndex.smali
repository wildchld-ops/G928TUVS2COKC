.class public Lcom/android/systemui/recents/model/TaskStack$GroupTaskIndex;
.super Ljava/lang/Object;
.source "TaskStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/model/TaskStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupTaskIndex"
.end annotation


# instance fields
.field public groupIndex:I

.field public taskIndex:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/recents/model/TaskStack$GroupTaskIndex;->groupIndex:I

    iput p2, p0, Lcom/android/systemui/recents/model/TaskStack$GroupTaskIndex;->taskIndex:I

    return-void
.end method

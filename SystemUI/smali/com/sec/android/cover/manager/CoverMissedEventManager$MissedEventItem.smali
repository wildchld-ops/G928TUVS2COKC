.class public Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;
.super Ljava/lang/Object;
.source "CoverMissedEventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/manager/CoverMissedEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MissedEventItem"
.end annotation


# instance fields
.field public final mType:I

.field public final mWhen:J

.field final synthetic this$0:Lcom/sec/android/cover/manager/CoverMissedEventManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/cover/manager/CoverMissedEventManager;IJ)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;->this$0:Lcom/sec/android/cover/manager/CoverMissedEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;->mType:I

    iput-wide p3, p0, Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;->mWhen:J

    return-void
.end method

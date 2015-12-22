.class Lcom/sec/android/app/launcher/utils/CallTimeChecker$CheckPoint;
.super Ljava/lang/Object;
.source "CallTimeChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/utils/CallTimeChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckPoint"
.end annotation


# instance fields
.field mLastCheckPointMsg:Ljava/lang/String;

.field mMillis:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CallTimeCheck Start"

    iput-object v0, p0, Lcom/sec/android/app/launcher/utils/CallTimeChecker$CheckPoint;->mLastCheckPointMsg:Ljava/lang/String;

    iput-wide p2, p0, Lcom/sec/android/app/launcher/utils/CallTimeChecker$CheckPoint;->mMillis:J

    return-void
.end method

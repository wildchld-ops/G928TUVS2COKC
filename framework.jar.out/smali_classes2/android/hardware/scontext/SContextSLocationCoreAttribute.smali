.class public Landroid/hardware/scontext/SContextSLocationCoreAttribute;
.super Landroid/hardware/scontext/SContextAttribute;
.source "SContextSLocationCoreAttribute.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SContextSLocationCoreAttribute"


# instance fields
.field private mAccuracy:I

.field private mAction:I

.field private mFenceId:I

.field private mLatitude:D

.field private mLongitude:D

.field private mMin_Ditance:I

.field private mMin_Time:I

.field private mMode:I

.field private mRadius:I

.field private mStatus:I

.field private mSuccessGpsCnt:I

.field private mTimeStamp:J

.field private mTotalGpsCnt:I


# direct methods
.method constructor <init>()V
    .locals 4

    const/4 v1, -0x1

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    iput v1, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMode:I

    iput v1, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAction:I

    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mFenceId:I

    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mRadius:I

    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mStatus:I

    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mTotalGpsCnt:I

    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mSuccessGpsCnt:I

    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMin_Ditance:I

    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMin_Time:I

    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAccuracy:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mTimeStamp:J

    iput-wide v2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLongitude:D

    iput-wide v2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLatitude:D

    invoke-direct {p0}, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->setAttribute()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 4

    const/4 v1, -0x1

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    iput v1, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMode:I

    iput v1, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAction:I

    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mFenceId:I

    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mRadius:I

    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mStatus:I

    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mTotalGpsCnt:I

    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mSuccessGpsCnt:I

    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMin_Ditance:I

    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMin_Time:I

    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAccuracy:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mTimeStamp:J

    iput-wide v2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLongitude:D

    iput-wide v2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLatitude:D

    iput p1, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMode:I

    iput p2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAction:I

    invoke-direct {p0}, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->setAttribute()V

    return-void
.end method

.method public constructor <init>(IIDDIJ)V
    .locals 5

    const/4 v1, -0x1

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    iput v1, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMode:I

    iput v1, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAction:I

    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mFenceId:I

    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mRadius:I

    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mStatus:I

    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mTotalGpsCnt:I

    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mSuccessGpsCnt:I

    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMin_Ditance:I

    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMin_Time:I

    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAccuracy:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mTimeStamp:J

    iput-wide v2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLongitude:D

    iput-wide v2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLatitude:D

    iput p1, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMode:I

    iput p2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAction:I

    iput-wide p3, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLatitude:D

    iput-wide p5, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLongitude:D

    iput p7, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAccuracy:I

    iput-wide p8, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mTimeStamp:J

    invoke-direct {p0}, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->setAttribute()V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 4

    const/4 v1, -0x1

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    iput v1, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMode:I

    iput v1, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAction:I

    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mFenceId:I

    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mRadius:I

    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mStatus:I

    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mTotalGpsCnt:I

    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mSuccessGpsCnt:I

    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMin_Ditance:I

    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMin_Time:I

    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAccuracy:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mTimeStamp:J

    iput-wide v2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLongitude:D

    iput-wide v2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLatitude:D

    iput p1, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMode:I

    iput p2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAction:I

    iput p3, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mFenceId:I

    invoke-direct {p0}, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->setAttribute()V

    return-void
.end method

.method public constructor <init>(IIIDDIII)V
    .locals 4

    const/4 v1, -0x1

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    iput v1, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMode:I

    iput v1, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAction:I

    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mFenceId:I

    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mRadius:I

    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mStatus:I

    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mTotalGpsCnt:I

    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mSuccessGpsCnt:I

    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMin_Ditance:I

    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMin_Time:I

    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAccuracy:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mTimeStamp:J

    iput-wide v2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLongitude:D

    iput-wide v2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLatitude:D

    iput p1, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMode:I

    iput p2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAction:I

    iput p3, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mFenceId:I

    iput p8, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mRadius:I

    iput p9, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mTotalGpsCnt:I

    iput p10, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mSuccessGpsCnt:I

    iput-wide p4, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLatitude:D

    iput-wide p6, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLongitude:D

    invoke-direct {p0}, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->setAttribute()V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 4

    const/4 v1, -0x1

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    iput v1, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMode:I

    iput v1, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAction:I

    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mFenceId:I

    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mRadius:I

    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mStatus:I

    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mTotalGpsCnt:I

    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mSuccessGpsCnt:I

    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMin_Ditance:I

    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMin_Time:I

    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAccuracy:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mTimeStamp:J

    iput-wide v2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLongitude:D

    iput-wide v2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLatitude:D

    iput p1, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMode:I

    iput p2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAction:I

    iput p3, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMin_Ditance:I

    iput p4, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMin_Time:I

    invoke-direct {p0}, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->setAttribute()V

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 4

    const/4 v1, -0x1

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    iput v1, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMode:I

    iput v1, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAction:I

    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mFenceId:I

    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mRadius:I

    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mStatus:I

    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mTotalGpsCnt:I

    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mSuccessGpsCnt:I

    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMin_Ditance:I

    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMin_Time:I

    iput v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAccuracy:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mTimeStamp:J

    iput-wide v2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLongitude:D

    iput-wide v2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLatitude:D

    iput p1, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMode:I

    iput p2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAction:I

    iput p3, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mFenceId:I

    iput p4, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mRadius:I

    iput p5, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mStatus:I

    invoke-direct {p0}, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->setAttribute()V

    return-void
.end method

.method private setAttribute()V
    .locals 12

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget v5, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMode:I

    packed-switch v5, :pswitch_data_0

    :goto_0
    const-string v5, "Mode"

    iget v6, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMode:I

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "Action"

    iget v6, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAction:I

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "SContextSLocationCoreAttribute"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setAttribute() mode : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Mode"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " action : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Action"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0x2f

    invoke-super {p0, v5, v0}, Landroid/hardware/scontext/SContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    return-void

    :pswitch_0
    iget v5, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAction:I

    if-ne v5, v8, :cond_0

    new-array v1, v10, [D

    const/4 v5, 0x4

    new-array v2, v5, [I

    iget-wide v6, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLatitude:D

    aput-wide v6, v1, v9

    iget-wide v6, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLongitude:D

    aput-wide v6, v1, v8

    iget v5, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mFenceId:I

    aput v5, v2, v9

    iget v5, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mRadius:I

    aput v5, v2, v8

    iget v5, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mTotalGpsCnt:I

    aput v5, v2, v10

    iget v5, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mSuccessGpsCnt:I

    aput v5, v2, v11

    const-string v5, "IntType"

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string v5, "DoubleType"

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    goto :goto_0

    :cond_0
    iget v5, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAction:I

    if-ne v5, v10, :cond_1

    new-array v2, v8, [I

    iget v5, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mFenceId:I

    aput v5, v2, v9

    const-string v5, "IntType"

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto :goto_0

    :cond_1
    iget v5, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAction:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_2

    new-array v2, v11, [I

    iget v5, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mFenceId:I

    aput v5, v2, v9

    iget v5, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mRadius:I

    aput v5, v2, v8

    iget v5, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mStatus:I

    aput v5, v2, v10

    const-string v5, "IntType"

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto/16 :goto_0

    :cond_2
    iget v5, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAction:I

    const/16 v6, 0x9

    if-ne v5, v6, :cond_3

    new-array v2, v10, [I

    iget v5, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMin_Ditance:I

    aput v5, v2, v9

    iget v5, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMin_Time:I

    aput v5, v2, v8

    const-string v5, "IntType"

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto/16 :goto_0

    :cond_3
    const-string v5, "SContextSLocationCoreAttribute"

    const-string v6, "This Type is default attribute type"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_1
    iget v5, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAction:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_4

    new-array v1, v10, [D

    new-array v2, v8, [I

    new-array v3, v8, [J

    iget-wide v6, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLatitude:D

    aput-wide v6, v1, v9

    iget-wide v6, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLongitude:D

    aput-wide v6, v1, v8

    iget v5, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAccuracy:I

    aput v5, v2, v9

    iget-wide v6, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mTimeStamp:J

    aput-wide v6, v3, v9

    const-string v5, "DoubleType"

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    const-string v5, "IntType"

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string v5, "LongType"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    goto/16 :goto_0

    :cond_4
    const-string v5, "SContextSLocationCoreAttribute"

    const-string v6, "This Type is default attribute type"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method checkAttribute()Z
    .locals 6

    const/4 v1, 0x1

    const/4 v3, -0x1

    const/4 v0, 0x0

    iget v2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMode:I

    if-lt v2, v3, :cond_0

    iget v2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMode:I

    if-le v2, v1, :cond_1

    :cond_0
    const-string v1, "SContextSLocationCoreAttribute"

    const-string v2, "Mode value is wrong!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_1
    iget v2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMode:I

    if-nez v2, :cond_3

    iget v2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAction:I

    if-lt v2, v3, :cond_2

    iget v2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAction:I

    const/16 v3, 0xa

    if-le v2, v3, :cond_5

    :cond_2
    const-string v1, "SContextSLocationCoreAttribute"

    const-string v2, "Action value is wrong!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget v2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMode:I

    if-ne v2, v1, :cond_5

    iget v2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAction:I

    if-lt v2, v3, :cond_4

    iget v2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAction:I

    const/16 v3, 0xe

    if-le v2, v3, :cond_5

    :cond_4
    const-string v1, "SContextSLocationCoreAttribute"

    const-string v2, "Action value is wrong!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    iget v2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mFenceId:I

    if-gez v2, :cond_6

    const-string v1, "SContextSLocationCoreAttribute"

    const-string v2, "FenceID is wrong!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    iget v2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mRadius:I

    if-gez v2, :cond_7

    const-string v1, "SContextSLocationCoreAttribute"

    const-string v2, "Radius is wrong!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_7
    iget v2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mStatus:I

    if-gez v2, :cond_8

    const-string v1, "SContextSLocationCoreAttribute"

    const-string v2, "Status is wrong!1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_8
    iget v2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mTotalGpsCnt:I

    if-gez v2, :cond_9

    const-string v1, "SContextSLocationCoreAttribute"

    const-string v2, "TotalGpsCount is wrong!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_9
    iget v2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mSuccessGpsCnt:I

    if-gez v2, :cond_a

    const-string v1, "SContextSLocationCoreAttribute"

    const-string v2, "Success gps count is wrong"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_a
    iget v2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMin_Ditance:I

    if-gez v2, :cond_b

    const-string v1, "SContextSLocationCoreAttribute"

    const-string v2, "Minimun distnace is wrong"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_b
    iget v2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mMin_Time:I

    if-gez v2, :cond_c

    const-string v1, "SContextSLocationCoreAttribute"

    const-string v2, "Minimun time is wrong"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_c
    iget v2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mAccuracy:I

    if-gez v2, :cond_d

    const-string v1, "SContextSLocationCoreAttribute"

    const-string v2, "Accuracy is wrong"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_d
    iget-wide v2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mTimeStamp:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_e

    const-string v1, "SContextSLocationCoreAttribute"

    const-string v2, "Timestamp is wrong"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_e
    iget-wide v2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLongitude:D

    const-wide v4, -0x3f99800000000000L    # -180.0

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_f

    iget-wide v2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLongitude:D

    const-wide v4, 0x4066800000000000L    # 180.0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_10

    :cond_f
    const-string v1, "SContextSLocationCoreAttribute"

    const-string v2, "Longitude is wrong"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_10
    iget-wide v2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLatitude:D

    const-wide v4, -0x3fa9800000000000L    # -90.0

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_11

    iget-wide v2, p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;->mLatitude:D

    const-wide v4, 0x4056800000000000L    # 90.0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_12

    :cond_11
    const-string v1, "SContextSLocationCoreAttribute"

    const-string v2, "Latitidue is wrong"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_12
    move v0, v1

    goto/16 :goto_0
.end method

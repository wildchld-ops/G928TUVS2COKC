.class public Lcom/android/incallui/secservice/SecVideoCall;
.super Ljava/lang/Object;
.source "SecVideoCall.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/secservice/SecVideoCall$SecVideoCallListener;
    }
.end annotation


# instance fields
.field public mBackCameraId:I

.field public mCall:Lcom/android/incallui/Call;

.field public mCapturedLocalFile:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field public mCurrCallState:I

.field public mCurrCallType:I

.field public mCurrentRotation:I

.field public mDPM:Landroid/app/admin/DevicePolicyManager;

.field public mFarEndMode:I

.field public mFarEndRecordTime:J

.field public mFrontCameraId:I

.field public mIsAnsweringState:Z

.field public mIsCSVTStart:Z

.field public mIsCameraReady:Z

.field public mIsCleanMode:Z

.field public mIsDualCameraEnabled:Z

.field public mIsFarEndRecord:Z

.field public mIsFarFrameReady:Z

.field public mIsFrontCameraEnabled:Z

.field public mIsIncoming:Z

.field public mIsModifyBannerShow:Z

.field public mIsNearEndRecord:Z

.field public mIsScreenResized:Z

.field public mIsShowMe:Z

.field public mIsShowingEffect:Z

.field public mIsSurfaceViewSwipe:Z

.field public mIsSwitchCameraClicked:Z

.field public mIsVideoCall:Z

.field public mMediaInitialized:Z

.field public mNearEndMode:I

.field public mNearEndRecordTime:J

.field public mNearEndRecordingFileName:Ljava/lang/String;

.field public mPrivCallState:I

.field public mPrivCallType:I

.field public mPrivVideoState:I

.field public mRP:Landroid/app/enterprise/RestrictionPolicy;

.field public mRecordingFileName:Ljava/lang/String;

.field public mSecCall:Lcom/android/incallui/secui/SecCall;

.field public mSelectedVideoFileName:Ljava/lang/String;

.field public mVideoState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, p0, Lcom/android/incallui/secservice/SecVideoCall;->mIsShowMe:Z

    iput-boolean v0, p0, Lcom/android/incallui/secservice/SecVideoCall;->mMediaInitialized:Z

    iput-boolean v0, p0, Lcom/android/incallui/secservice/SecVideoCall;->mIsCameraReady:Z

    iput-boolean v0, p0, Lcom/android/incallui/secservice/SecVideoCall;->mIsFarFrameReady:Z

    iput-boolean v0, p0, Lcom/android/incallui/secservice/SecVideoCall;->mIsSwitchCameraClicked:Z

    iput-boolean v0, p0, Lcom/android/incallui/secservice/SecVideoCall;->mIsSurfaceViewSwipe:Z

    iput-object v1, p0, Lcom/android/incallui/secservice/SecVideoCall;->mCapturedLocalFile:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/android/incallui/secservice/SecVideoCall;->mIsNearEndRecord:Z

    iput-boolean v0, p0, Lcom/android/incallui/secservice/SecVideoCall;->mIsFarEndRecord:Z

    iput-wide v4, p0, Lcom/android/incallui/secservice/SecVideoCall;->mNearEndRecordTime:J

    iput-wide v4, p0, Lcom/android/incallui/secservice/SecVideoCall;->mFarEndRecordTime:J

    iput-object v1, p0, Lcom/android/incallui/secservice/SecVideoCall;->mRecordingFileName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/incallui/secservice/SecVideoCall;->mNearEndRecordingFileName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/incallui/secservice/SecVideoCall;->mSelectedVideoFileName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/incallui/secservice/SecVideoCall;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/incallui/secservice/SecVideoCall;->mRP:Landroid/app/enterprise/RestrictionPolicy;

    iput-boolean v0, p0, Lcom/android/incallui/secservice/SecVideoCall;->mIsScreenResized:Z

    iput-boolean v0, p0, Lcom/android/incallui/secservice/SecVideoCall;->mIsModifyBannerShow:Z

    iput-boolean v0, p0, Lcom/android/incallui/secservice/SecVideoCall;->mIsShowingEffect:Z

    iput-boolean v0, p0, Lcom/android/incallui/secservice/SecVideoCall;->mIsCleanMode:Z

    iput-boolean v0, p0, Lcom/android/incallui/secservice/SecVideoCall;->mIsAnsweringState:Z

    iput-boolean v0, p0, Lcom/android/incallui/secservice/SecVideoCall;->mIsDualCameraEnabled:Z

    iput-boolean v3, p0, Lcom/android/incallui/secservice/SecVideoCall;->mIsFrontCameraEnabled:Z

    iput v2, p0, Lcom/android/incallui/secservice/SecVideoCall;->mFrontCameraId:I

    iput v2, p0, Lcom/android/incallui/secservice/SecVideoCall;->mBackCameraId:I

    iput v2, p0, Lcom/android/incallui/secservice/SecVideoCall;->mPrivCallType:I

    iput v2, p0, Lcom/android/incallui/secservice/SecVideoCall;->mCurrCallType:I

    iput v0, p0, Lcom/android/incallui/secservice/SecVideoCall;->mPrivCallState:I

    iput v0, p0, Lcom/android/incallui/secservice/SecVideoCall;->mCurrCallState:I

    iput v2, p0, Lcom/android/incallui/secservice/SecVideoCall;->mCurrentRotation:I

    iput-boolean v0, p0, Lcom/android/incallui/secservice/SecVideoCall;->mIsCSVTStart:Z

    iput-boolean v0, p0, Lcom/android/incallui/secservice/SecVideoCall;->mIsIncoming:Z

    iput-boolean v0, p0, Lcom/android/incallui/secservice/SecVideoCall;->mIsVideoCall:Z

    iput v3, p0, Lcom/android/incallui/secservice/SecVideoCall;->mNearEndMode:I

    iput v3, p0, Lcom/android/incallui/secservice/SecVideoCall;->mFarEndMode:I

    sget v0, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_NONE:I

    iput v0, p0, Lcom/android/incallui/secservice/SecVideoCall;->mPrivVideoState:I

    sget v0, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_NONE:I

    iput v0, p0, Lcom/android/incallui/secservice/SecVideoCall;->mVideoState:I

    iput-object v1, p0, Lcom/android/incallui/secservice/SecVideoCall;->mCall:Lcom/android/incallui/Call;

    iput-object v1, p0, Lcom/android/incallui/secservice/SecVideoCall;->mSecCall:Lcom/android/incallui/secui/SecCall;

    iput-object p1, p0, Lcom/android/incallui/secservice/SecVideoCall;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SecVideoCall"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public exit()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    sget v0, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_NONE:I

    iput v0, p0, Lcom/android/incallui/secservice/SecVideoCall;->mVideoState:I

    iput-boolean v1, p0, Lcom/android/incallui/secservice/SecVideoCall;->mIsCameraReady:Z

    iput-boolean v1, p0, Lcom/android/incallui/secservice/SecVideoCall;->mIsFarFrameReady:Z

    iput-boolean v1, p0, Lcom/android/incallui/secservice/SecVideoCall;->mIsModifyBannerShow:Z

    iput-object v2, p0, Lcom/android/incallui/secservice/SecVideoCall;->mCall:Lcom/android/incallui/Call;

    iput-object v2, p0, Lcom/android/incallui/secservice/SecVideoCall;->mSecCall:Lcom/android/incallui/secui/SecCall;

    return-void
.end method

.method public initialize()V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-boolean v2, p0, Lcom/android/incallui/secservice/SecVideoCall;->mIsShowMe:Z

    iput-boolean v0, p0, Lcom/android/incallui/secservice/SecVideoCall;->mIsCameraReady:Z

    iput-boolean v0, p0, Lcom/android/incallui/secservice/SecVideoCall;->mIsFarFrameReady:Z

    iput-boolean v0, p0, Lcom/android/incallui/secservice/SecVideoCall;->mIsSwitchCameraClicked:Z

    iput-boolean v0, p0, Lcom/android/incallui/secservice/SecVideoCall;->mIsSurfaceViewSwipe:Z

    iput-boolean v0, p0, Lcom/android/incallui/secservice/SecVideoCall;->mIsModifyBannerShow:Z

    iput-object v1, p0, Lcom/android/incallui/secservice/SecVideoCall;->mCapturedLocalFile:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/android/incallui/secservice/SecVideoCall;->mIsNearEndRecord:Z

    iput-boolean v0, p0, Lcom/android/incallui/secservice/SecVideoCall;->mIsFarEndRecord:Z

    iput-wide v4, p0, Lcom/android/incallui/secservice/SecVideoCall;->mNearEndRecordTime:J

    iput-wide v4, p0, Lcom/android/incallui/secservice/SecVideoCall;->mFarEndRecordTime:J

    iput-object v1, p0, Lcom/android/incallui/secservice/SecVideoCall;->mRecordingFileName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/incallui/secservice/SecVideoCall;->mNearEndRecordingFileName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/incallui/secservice/SecVideoCall;->mSelectedVideoFileName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/incallui/secservice/SecVideoCall;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/incallui/secservice/SecVideoCall;->mRP:Landroid/app/enterprise/RestrictionPolicy;

    iput-boolean v0, p0, Lcom/android/incallui/secservice/SecVideoCall;->mIsScreenResized:Z

    iput-boolean v0, p0, Lcom/android/incallui/secservice/SecVideoCall;->mIsShowingEffect:Z

    iput-boolean v0, p0, Lcom/android/incallui/secservice/SecVideoCall;->mIsAnsweringState:Z

    iput-boolean v0, p0, Lcom/android/incallui/secservice/SecVideoCall;->mIsDualCameraEnabled:Z

    iput-boolean v2, p0, Lcom/android/incallui/secservice/SecVideoCall;->mIsFrontCameraEnabled:Z

    iput v3, p0, Lcom/android/incallui/secservice/SecVideoCall;->mCurrentRotation:I

    iput v3, p0, Lcom/android/incallui/secservice/SecVideoCall;->mPrivCallType:I

    iput v3, p0, Lcom/android/incallui/secservice/SecVideoCall;->mCurrCallType:I

    iput v0, p0, Lcom/android/incallui/secservice/SecVideoCall;->mPrivCallState:I

    iput v0, p0, Lcom/android/incallui/secservice/SecVideoCall;->mCurrCallState:I

    iput-boolean v0, p0, Lcom/android/incallui/secservice/SecVideoCall;->mIsIncoming:Z

    iput-boolean v0, p0, Lcom/android/incallui/secservice/SecVideoCall;->mIsVideoCall:Z

    iput v2, p0, Lcom/android/incallui/secservice/SecVideoCall;->mNearEndMode:I

    iput v2, p0, Lcom/android/incallui/secservice/SecVideoCall;->mFarEndMode:I

    sget v0, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_NONE:I

    iput v0, p0, Lcom/android/incallui/secservice/SecVideoCall;->mVideoState:I

    iput-object v1, p0, Lcom/android/incallui/secservice/SecVideoCall;->mCall:Lcom/android/incallui/Call;

    iput-object v1, p0, Lcom/android/incallui/secservice/SecVideoCall;->mSecCall:Lcom/android/incallui/secui/SecCall;

    return-void
.end method

.method public needToHideVideoStateMessage(Lcom/android/incallui/Call;)Z
    .locals 5

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/secui/SecCall;->getSecVideoState()I

    move-result v2

    const/4 v0, 0x0

    sget v3, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_GENERAL:I

    and-int/2addr v3, v2

    sget v4, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_GENERAL:I

    if-ne v3, v4, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/android/incallui/secservice/SecVideoCall;->mIsModifyBannerShow:Z

    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "needToHideVideoStateMessage : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/secservice/SecVideoCall;->log(Ljava/lang/String;)V

    const/4 v3, 0x1

    :goto_1
    return v3

    :cond_1
    sget v3, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_SHARE_TX:I

    and-int/2addr v3, v2

    sget v4, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_SHARE_TX:I

    if-ne v3, v4, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    sget v3, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_SHARE_RX:I

    and-int/2addr v3, v2

    sget v4, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_SHARE_RX:I

    if-ne v3, v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public updateCallState(I)Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/incallui/secservice/SecVideoCall;->mCurrCallState:I

    iput v1, p0, Lcom/android/incallui/secservice/SecVideoCall;->mPrivCallState:I

    iput p1, p0, Lcom/android/incallui/secservice/SecVideoCall;->mCurrCallState:I

    iget v1, p0, Lcom/android/incallui/secservice/SecVideoCall;->mPrivCallState:I

    iget v2, p0, Lcom/android/incallui/secservice/SecVideoCall;->mCurrCallState:I

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCallState isChanged["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/secservice/SecVideoCall;->mPrivCallState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/secservice/SecVideoCall;->mCurrCallState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/secservice/SecVideoCall;->log(Ljava/lang/String;)V

    return v0
.end method

.method public updateCallType(I)Z
    .locals 4

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/incallui/secservice/SecVideoCall;->mCurrCallType:I

    iput v2, p0, Lcom/android/incallui/secservice/SecVideoCall;->mPrivCallType:I

    iput p1, p0, Lcom/android/incallui/secservice/SecVideoCall;->mCurrCallType:I

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/incallui/secservice/SecVideoCall;->mCall:Lcom/android/incallui/Call;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/secservice/SecVideoCall;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    :cond_0
    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    iget v2, p0, Lcom/android/incallui/secservice/SecVideoCall;->mPrivCallType:I

    iget v3, p0, Lcom/android/incallui/secservice/SecVideoCall;->mCurrCallType:I

    if-eq v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCallType isModified["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/incallui/secservice/SecVideoCall;->mPrivCallType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/incallui/secservice/SecVideoCall;->mCurrCallType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/secservice/SecVideoCall;->log(Ljava/lang/String;)V

    return v1
.end method

.method public updateCommonFromCall(Lcom/android/incallui/Call;)V
    .locals 3

    const/4 v2, 0x1

    iput-object p1, p0, Lcom/android/incallui/secservice/SecVideoCall;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/secservice/SecVideoCall;->mSecCall:Lcom/android/incallui/secui/SecCall;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iput-boolean v2, p0, Lcom/android/incallui/secservice/SecVideoCall;->mIsIncoming:Z

    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secui/SecCall;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/android/incallui/secservice/SecVideoCall;->mIsVideoCall:Z

    :cond_1
    return-void
.end method

.method public updateVideoState(Lcom/android/incallui/Call;)Z
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/secui/SecCall;->getSecVideoState()I

    move-result v0

    iget v3, p0, Lcom/android/incallui/secservice/SecVideoCall;->mVideoState:I

    if-eq v0, v3, :cond_1

    iget v3, p0, Lcom/android/incallui/secservice/SecVideoCall;->mVideoState:I

    iput v3, p0, Lcom/android/incallui/secservice/SecVideoCall;->mPrivVideoState:I

    iput v0, p0, Lcom/android/incallui/secservice/SecVideoCall;->mVideoState:I

    iget v3, p0, Lcom/android/incallui/secservice/SecVideoCall;->mVideoState:I

    sget v4, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_NONE:I

    if-ne v3, v4, :cond_0

    sget v3, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_NONE:I

    iput v3, p0, Lcom/android/incallui/secservice/SecVideoCall;->mPrivVideoState:I

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

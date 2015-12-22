.class public Lcom/android/services/telephony/common/SecCallExtra;
.super Ljava/lang/Object;
.source "SecCallExtra.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/services/telephony/common/SecCallExtra;",
            ">;"
        }
    .end annotation
.end field

.field private static final DOMAIN_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final RESOLUTION_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TYPE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private IMSConferenceParticipantCount:I

.field private IMSConferenceParticipantCreateTime:[J

.field private IMSConferenceParticipantDuration:[J

.field private IMSConferenceParticipantLookupKey:[Ljava/lang/String;

.field private IMSConferenceParticipantName:[Ljava/lang/String;

.field private IMSConferenceParticipantNumber:[Ljava/lang/String;

.field private IMSConferenceParticipantPhotoUri:[Ljava/lang/String;

.field private IMSConferenceParticipantStartDuration:[J

.field private IMSConferenceParticipantState:[I

.field private IMSConferenceParticipantStatus:[I

.field private mAssisted:I

.field private mCVOStatus:I

.field private mCWToneSignal:I

.field private mCdnipNumber:Ljava/lang/String;

.field private mConnectionCallId:Ljava/lang/String;

.field private mDisconnectForCallBarring:I

.field private mDomain:I

.field private mEndEarly:I

.field private mFirstCallerForIMSConference:Ljava/lang/String;

.field private mForwardingNumber:Ljava/lang/String;

.field private mForwardingPresentation:Ljava/lang/String;

.field private mGetAliveParticipantNumber:Ljava/lang/String;

.field private mGroupId:I

.field private mHDIcon:I

.field private mHasBeenVideoCall:I

.field private mIMSConferenceCall:B

.field private mIMSConferenceStateChanged:I

.field private mInitModifiedLogType:I

.field private mIsAutorejectCall:I

.field private mIsCapableSessionModify:I

.field private mIsConfParticipant:B

.field private mIsDialToKoreaForRAD:I

.field private mIsDowngradeCall:I

.field private mIsEpdgCall:I

.field private mIsEpdgW2L:I

.field private mIsHoldedByTheOtherParty:B

.field private mIsIpCall:I

.field private mIsPhoneTypeChanged:I

.field private mIsRadNumberConverted:I

.field private mIsRedialCall:I

.field private mIsVoicePartyCall:I

.field private mIsVolteConference:I

.field private mIsVolteGroupCall:I

.field private mIsWaitingCall:I

.field private mIsWfcEmergencyCall:I

.field private mIsWfcImsCall:I

.field private mLineCtrl:I

.field private mLogSeviceType:I

.field private mModifiedLogType:I

.field private mModifiedTimeMillis:J

.field private mNameForIMSConference:Ljava/lang/String;

.field private mNumberForIMSConference:Ljava/lang/String;

.field private mOutgoingCallMessage:Ljava/lang/String;

.field private mPostDialString:Ljava/lang/String;

.field private mRadOriginalNumber:Ljava/lang/String;

.field private mReceivedCall:B

.field private mRecordSaveFilePath:Ljava/lang/String;

.field private mSessionId:I

.field private mSpamCount:I

.field private mSpamNumber:Ljava/lang/String;

.field private mSpamTagName:Ljava/lang/String;

.field private mSpamTagType:I

.field private mStartPopupServiceWhenMakeCallFromOtherApp:I

.field private mSubId:I

.field private mTelecomCallId:Ljava/lang/String;

.field private mTouchPoint:Ljava/lang/String;

.field private mTtyType:I

.field private mType:I

.field private mUpdateEmergencyCallstate:I

.field private mVTSpeakerState:I

.field private mVideoResolution:I

.field private mYellowPageName:Ljava/lang/String;

.field private misSpam:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "VOICE"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "VIDEO_SHARE_TX"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "VIDEO_SHARE_RX"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "VIDEO"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MODIFY_REQUEST"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MODIFY_RECEIVE"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/android/services/telephony/common/SecCallExtra;->TYPE_MAP:Ljava/util/Map;

    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CS"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PS"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/android/services/telephony/common/SecCallExtra;->DOMAIN_MAP:Ljava/util/Map;

    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "QCIF"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "QVGA"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "VGA"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "VGALAND"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CIF"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "HD720"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/android/services/telephony/common/SecCallExtra;->RESOLUTION_MAP:Ljava/util/Map;

    new-instance v0, Lcom/android/services/telephony/common/SecCallExtra$1;

    invoke-direct {v0}, Lcom/android/services/telephony/common/SecCallExtra$1;-><init>()V

    sput-object v0, Lcom/android/services/telephony/common/SecCallExtra;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const/4 v1, 0x1

    const/4 v4, 0x6

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/services/telephony/common/SecCallExtra;->mTelecomCallId:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/services/telephony/common/SecCallExtra;->mConnectionCallId:Ljava/lang/String;

    iput v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsRedialCall:I

    iput v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsAutorejectCall:I

    iput v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mType:I

    iput v1, p0, Lcom/android/services/telephony/common/SecCallExtra;->mDomain:I

    iput v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mHDIcon:I

    iput v1, p0, Lcom/android/services/telephony/common/SecCallExtra;->mCVOStatus:I

    iput v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsEpdgCall:I

    iput v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mStartPopupServiceWhenMakeCallFromOtherApp:I

    iput v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsEpdgW2L:I

    iput v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mHasBeenVideoCall:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mVTSpeakerState:I

    iput v1, p0, Lcom/android/services/telephony/common/SecCallExtra;->mVideoResolution:I

    iput-byte v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIMSConferenceCall:B

    iput-object v3, p0, Lcom/android/services/telephony/common/SecCallExtra;->mOutgoingCallMessage:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/services/telephony/common/SecCallExtra;->mRadOriginalNumber:Ljava/lang/String;

    iput v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsRadNumberConverted:I

    iput-object v3, p0, Lcom/android/services/telephony/common/SecCallExtra;->mCdnipNumber:Ljava/lang/String;

    iput v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mCWToneSignal:I

    iput-object v3, p0, Lcom/android/services/telephony/common/SecCallExtra;->mRecordSaveFilePath:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/services/telephony/common/SecCallExtra;->mNameForIMSConference:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/services/telephony/common/SecCallExtra;->mNumberForIMSConference:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/services/telephony/common/SecCallExtra;->mFirstCallerForIMSConference:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/services/telephony/common/SecCallExtra;->mGetAliveParticipantNumber:Ljava/lang/String;

    iput v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIMSConferenceStateChanged:I

    iput v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mSubId:I

    iput v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsWaitingCall:I

    iput v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsIpCall:I

    iput v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mLineCtrl:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mModifiedTimeMillis:J

    iput v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mLogSeviceType:I

    iput v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mInitModifiedLogType:I

    iput v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mModifiedLogType:I

    iput v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mEndEarly:I

    iput v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mAssisted:I

    iput v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mDisconnectForCallBarring:I

    iput-object v3, p0, Lcom/android/services/telephony/common/SecCallExtra;->mTouchPoint:Ljava/lang/String;

    iput v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsDialToKoreaForRAD:I

    iput-byte v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsHoldedByTheOtherParty:B

    iput-byte v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsConfParticipant:B

    iput v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mSessionId:I

    iput-object v3, p0, Lcom/android/services/telephony/common/SecCallExtra;->mSpamTagName:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/services/telephony/common/SecCallExtra;->mSpamNumber:Ljava/lang/String;

    iput v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mSpamCount:I

    iput v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mSpamTagType:I

    iput v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->misSpam:I

    iput v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantCount:I

    new-array v0, v4, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantNumber:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantName:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantPhotoUri:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantLookupKey:[Ljava/lang/String;

    new-array v0, v4, [I

    iput-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantState:[I

    new-array v0, v4, [I

    iput-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantStatus:[I

    new-array v0, v4, [J

    iput-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantCreateTime:[J

    new-array v0, v4, [J

    iput-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantStartDuration:[J

    new-array v0, v4, [J

    iput-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantDuration:[J

    iput v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsWfcImsCall:I

    iput-object v3, p0, Lcom/android/services/telephony/common/SecCallExtra;->mYellowPageName:Ljava/lang/String;

    iput v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsCapableSessionModify:I

    iput v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mTtyType:I

    iput-object v3, p0, Lcom/android/services/telephony/common/SecCallExtra;->mPostDialString:Ljava/lang/String;

    iput v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsPhoneTypeChanged:I

    iput-object v3, p0, Lcom/android/services/telephony/common/SecCallExtra;->mForwardingNumber:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/services/telephony/common/SecCallExtra;->mForwardingPresentation:Ljava/lang/String;

    iput v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsVoicePartyCall:I

    iput v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mGroupId:I

    iput v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsWfcEmergencyCall:I

    iput v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsVolteGroupCall:I

    iput v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mUpdateEmergencyCallstate:I

    iput v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsVolteConference:I

    iput v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsDowngradeCall:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v4, 0x6

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/services/telephony/common/SecCallExtra;->mTelecomCallId:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/services/telephony/common/SecCallExtra;->mConnectionCallId:Ljava/lang/String;

    iput v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsRedialCall:I

    iput v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsAutorejectCall:I

    iput v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mType:I

    iput v1, p0, Lcom/android/services/telephony/common/SecCallExtra;->mDomain:I

    iput v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mHDIcon:I

    iput v1, p0, Lcom/android/services/telephony/common/SecCallExtra;->mCVOStatus:I

    iput v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsEpdgCall:I

    iput v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mStartPopupServiceWhenMakeCallFromOtherApp:I

    iput v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsEpdgW2L:I

    iput v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mHasBeenVideoCall:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mVTSpeakerState:I

    iput v1, p0, Lcom/android/services/telephony/common/SecCallExtra;->mVideoResolution:I

    iput-byte v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIMSConferenceCall:B

    iput-object v3, p0, Lcom/android/services/telephony/common/SecCallExtra;->mOutgoingCallMessage:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/services/telephony/common/SecCallExtra;->mRadOriginalNumber:Ljava/lang/String;

    iput v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsRadNumberConverted:I

    iput-object v3, p0, Lcom/android/services/telephony/common/SecCallExtra;->mCdnipNumber:Ljava/lang/String;

    iput v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mCWToneSignal:I

    iput-object v3, p0, Lcom/android/services/telephony/common/SecCallExtra;->mRecordSaveFilePath:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/services/telephony/common/SecCallExtra;->mNameForIMSConference:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/services/telephony/common/SecCallExtra;->mNumberForIMSConference:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/services/telephony/common/SecCallExtra;->mFirstCallerForIMSConference:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/services/telephony/common/SecCallExtra;->mGetAliveParticipantNumber:Ljava/lang/String;

    iput v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIMSConferenceStateChanged:I

    iput v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mSubId:I

    iput v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsWaitingCall:I

    iput v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsIpCall:I

    iput v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mLineCtrl:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mModifiedTimeMillis:J

    iput v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mLogSeviceType:I

    iput v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mInitModifiedLogType:I

    iput v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mModifiedLogType:I

    iput v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mEndEarly:I

    iput v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mAssisted:I

    iput v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mDisconnectForCallBarring:I

    iput-object v3, p0, Lcom/android/services/telephony/common/SecCallExtra;->mTouchPoint:Ljava/lang/String;

    iput v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsDialToKoreaForRAD:I

    iput-byte v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsHoldedByTheOtherParty:B

    iput-byte v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsConfParticipant:B

    iput v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mSessionId:I

    iput-object v3, p0, Lcom/android/services/telephony/common/SecCallExtra;->mSpamTagName:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/services/telephony/common/SecCallExtra;->mSpamNumber:Ljava/lang/String;

    iput v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mSpamCount:I

    iput v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mSpamTagType:I

    iput v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->misSpam:I

    iput v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantCount:I

    new-array v0, v4, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantNumber:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantName:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantPhotoUri:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantLookupKey:[Ljava/lang/String;

    new-array v0, v4, [I

    iput-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantState:[I

    new-array v0, v4, [I

    iput-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantStatus:[I

    new-array v0, v4, [J

    iput-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantCreateTime:[J

    new-array v0, v4, [J

    iput-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantStartDuration:[J

    new-array v0, v4, [J

    iput-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantDuration:[J

    iput v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsWfcImsCall:I

    iput-object v3, p0, Lcom/android/services/telephony/common/SecCallExtra;->mYellowPageName:Ljava/lang/String;

    iput v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsCapableSessionModify:I

    iput v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mTtyType:I

    iput-object v3, p0, Lcom/android/services/telephony/common/SecCallExtra;->mPostDialString:Ljava/lang/String;

    iput v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsPhoneTypeChanged:I

    iput-object v3, p0, Lcom/android/services/telephony/common/SecCallExtra;->mForwardingNumber:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/services/telephony/common/SecCallExtra;->mForwardingPresentation:Ljava/lang/String;

    iput v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsVoicePartyCall:I

    iput v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mGroupId:I

    iput v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsWfcEmergencyCall:I

    iput v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsVolteGroupCall:I

    iput v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mUpdateEmergencyCallstate:I

    iput v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsVolteConference:I

    iput v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsDowngradeCall:I

    invoke-virtual {p0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/services/telephony/common/SecCallExtra$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/services/telephony/common/SecCallExtra;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static createSecCallExtraBundle(Lcom/android/services/telephony/common/SecCallExtra;)Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "sec_call_extra"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v0
.end method

.method public static getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-class v0, Lcom/android/services/telephony/common/SecCallExtra;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "sec_call_extra"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/common/SecCallExtra;

    goto :goto_0
.end method

.method public static setSecCallExtraToBundle(Landroid/os/Bundle;Lcom/android/services/telephony/common/SecCallExtra;)Landroid/os/Bundle;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    :goto_0
    return-object p0

    :cond_0
    if-nez p0, :cond_1

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    :cond_1
    const-string v0, "sec_call_extra"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCWToneSignal()I
    .locals 1

    iget v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mCWToneSignal:I

    return v0
.end method

.method public getCdnipNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mCdnipNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectionCallId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mConnectionCallId:Ljava/lang/String;

    return-object v0
.end method

.method public getDomain()I
    .locals 1

    iget v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mDomain:I

    return v0
.end method

.method public getEpdgCall()Z
    .locals 1

    iget v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsEpdgCall:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getHDIcon()I
    .locals 1

    iget v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mHDIcon:I

    return v0
.end method

.method public getHasBeenVideoCall()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/services/telephony/common/SecCallExtra;->mHasBeenVideoCall:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHoldStateOfTheOtherParty()B
    .locals 1

    iget-byte v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsHoldedByTheOtherParty:B

    return v0
.end method

.method public getIMSConferenceCall()B
    .locals 1

    iget-byte v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIMSConferenceCall:B

    return v0
.end method

.method public getLogServiceType()I
    .locals 1

    iget v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mLogSeviceType:I

    return v0
.end method

.method public getModifiedTimeMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mModifiedTimeMillis:J

    return-wide v0
.end method

.method public getOutgoingCallMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mOutgoingCallMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneTypeChanged()I
    .locals 1

    iget v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsPhoneTypeChanged:I

    return v0
.end method

.method public getRecordSaveFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mRecordSaveFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()I
    .locals 1

    iget v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mSessionId:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mType:I

    return v0
.end method

.method public getVideoResolution()I
    .locals 1

    iget v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mVideoResolution:I

    return v0
.end method

.method public isAutoRejectCall()Z
    .locals 1

    iget v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsAutorejectCall:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isIMSConferenceCall()Z
    .locals 2

    const/4 v0, 0x1

    iget-byte v1, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIMSConferenceCall:B

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReceivedCall()Z
    .locals 2

    const/4 v0, 0x1

    iget-byte v1, p0, Lcom/android/services/telephony/common/SecCallExtra;->mReceivedCall:B

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVolteConference()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsVolteConference:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mConnectionCallId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsRedialCall:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsAutorejectCall:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsWaitingCall:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsIpCall:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mLineCtrl:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mDomain:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mHDIcon:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mCVOStatus:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsEpdgCall:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsEpdgW2L:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mStartPopupServiceWhenMakeCallFromOtherApp:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mVideoResolution:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIMSConferenceCall:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIMSConferenceStateChanged:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mNameForIMSConference:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mNumberForIMSConference:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mGetAliveParticipantNumber:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mFirstCallerForIMSConference:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mReceivedCall:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mOutgoingCallMessage:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mRadOriginalNumber:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsRadNumberConverted:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mCdnipNumber:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mCWToneSignal:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mRecordSaveFilePath:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mSubId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mModifiedTimeMillis:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mLogSeviceType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mInitModifiedLogType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mModifiedLogType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mEndEarly:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mDisconnectForCallBarring:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mHasBeenVideoCall:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mVTSpeakerState:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mAssisted:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mTouchPoint:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsDialToKoreaForRAD:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantCount:I

    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantNumber:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantName:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantPhotoUri:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantLookupKey:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantState:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantStatus:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantCreateTime:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readLongArray([J)V

    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantStartDuration:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readLongArray([J)V

    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantDuration:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readLongArray([J)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsHoldedByTheOtherParty:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mSessionId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsWfcImsCall:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsCapableSessionModify:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mYellowPageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mTtyType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mPostDialString:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsPhoneTypeChanged:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mForwardingNumber:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mForwardingPresentation:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsVoicePartyCall:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mGroupId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsWfcEmergencyCall:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsVolteGroupCall:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mSpamTagName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mSpamNumber:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mSpamCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mSpamTagType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->misSpam:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsConfParticipant:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mUpdateEmergencyCallstate:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsVolteConference:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsDowngradeCall:I

    return-void
.end method

.method public setAliveParticipantNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/telephony/common/SecCallExtra;->mGetAliveParticipantNumber:Ljava/lang/String;

    return-void
.end method

.method public setAutoRejectCall(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsAutorejectCall:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCVOStatus(I)V
    .locals 0

    iput p1, p0, Lcom/android/services/telephony/common/SecCallExtra;->mCVOStatus:I

    return-void
.end method

.method public setCWToneSignal(I)V
    .locals 0

    iput p1, p0, Lcom/android/services/telephony/common/SecCallExtra;->mCWToneSignal:I

    return-void
.end method

.method public setCdnipNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/telephony/common/SecCallExtra;->mCdnipNumber:Ljava/lang/String;

    return-void
.end method

.method public setConfParticipant(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsConfParticipant:B

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDomain(I)V
    .locals 0

    iput p1, p0, Lcom/android/services/telephony/common/SecCallExtra;->mDomain:I

    return-void
.end method

.method public setDowngradeCall(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsDowngradeCall:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEpdgCall(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsEpdgCall:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEpdgW2L(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsEpdgW2L:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFirstCallerForIMSConference(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/telephony/common/SecCallExtra;->mFirstCallerForIMSConference:Ljava/lang/String;

    return-void
.end method

.method public setForwardingNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/telephony/common/SecCallExtra;->mForwardingNumber:Ljava/lang/String;

    return-void
.end method

.method public setForwardingPresentation(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/telephony/common/SecCallExtra;->mForwardingPresentation:Ljava/lang/String;

    return-void
.end method

.method public setHDIcon(I)V
    .locals 0

    iput p1, p0, Lcom/android/services/telephony/common/SecCallExtra;->mHDIcon:I

    return-void
.end method

.method public setHasBeenVideoCall()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mHasBeenVideoCall:I

    return-void
.end method

.method public setHoldStateOfTheOtherParty(B)V
    .locals 0

    iput-byte p1, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsHoldedByTheOtherParty:B

    return-void
.end method

.method public setIMSConferenceCall(B)V
    .locals 0

    iput-byte p1, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIMSConferenceCall:B

    return-void
.end method

.method public setIMSConferenceCallParticipantCount(I)V
    .locals 0

    iput p1, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantCount:I

    return-void
.end method

.method public setIMSConferenceCallParticipantCreateTime([J)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantCreateTime:[J

    return-void
.end method

.method public setIMSConferenceCallParticipantDuration([J)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantDuration:[J

    return-void
.end method

.method public setIMSConferenceCallParticipantLookupKey([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantLookupKey:[Ljava/lang/String;

    return-void
.end method

.method public setIMSConferenceCallParticipantName([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantName:[Ljava/lang/String;

    return-void
.end method

.method public setIMSConferenceCallParticipantNumber([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantNumber:[Ljava/lang/String;

    return-void
.end method

.method public setIMSConferenceCallParticipantPhotoUri([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantPhotoUri:[Ljava/lang/String;

    return-void
.end method

.method public setIMSConferenceCallParticipantStartDuration([J)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantStartDuration:[J

    return-void
.end method

.method public setIMSConferenceCallParticipantState([I)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantState:[I

    return-void
.end method

.method public setIMSConferenceCallParticipantStatus([I)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantStatus:[I

    return-void
.end method

.method public setIMSConferenceStateChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIMSConferenceStateChanged:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setInitModifiedLogType(I)V
    .locals 0

    iput p1, p0, Lcom/android/services/telephony/common/SecCallExtra;->mInitModifiedLogType:I

    return-void
.end method

.method public setIsVoicePartyCall(I)V
    .locals 0

    iput p1, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsVoicePartyCall:I

    return-void
.end method

.method public setIsVolteGroupCall(I)V
    .locals 0

    iput p1, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsVolteGroupCall:I

    return-void
.end method

.method public setLineCtrl(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mLineCtrl:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLogServiceType(I)V
    .locals 0

    iput p1, p0, Lcom/android/services/telephony/common/SecCallExtra;->mLogSeviceType:I

    return-void
.end method

.method public setModifiedLogType(I)V
    .locals 0

    iput p1, p0, Lcom/android/services/telephony/common/SecCallExtra;->mModifiedLogType:I

    return-void
.end method

.method public setModifiedTimeMillis(J)V
    .locals 1

    iput-wide p1, p0, Lcom/android/services/telephony/common/SecCallExtra;->mModifiedTimeMillis:J

    return-void
.end method

.method public setNameForIMSConference(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/telephony/common/SecCallExtra;->mNameForIMSConference:Ljava/lang/String;

    return-void
.end method

.method public setNumberForIMSConference(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/telephony/common/SecCallExtra;->mNumberForIMSConference:Ljava/lang/String;

    return-void
.end method

.method public setPhoneTypeChanged(I)V
    .locals 0

    iput p1, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsPhoneTypeChanged:I

    return-void
.end method

.method public setReceivedCall(B)V
    .locals 0

    iput-byte p1, p0, Lcom/android/services/telephony/common/SecCallExtra;->mReceivedCall:B

    return-void
.end method

.method public setRecordSaveFilePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/telephony/common/SecCallExtra;->mRecordSaveFilePath:Ljava/lang/String;

    return-void
.end method

.method public setSessionId(I)V
    .locals 0

    iput p1, p0, Lcom/android/services/telephony/common/SecCallExtra;->mSessionId:I

    return-void
.end method

.method public setSubId(I)V
    .locals 0

    iput p1, p0, Lcom/android/services/telephony/common/SecCallExtra;->mSubId:I

    return-void
.end method

.method public setTtyType(I)V
    .locals 0

    iput p1, p0, Lcom/android/services/telephony/common/SecCallExtra;->mTtyType:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/android/services/telephony/common/SecCallExtra;->mType:I

    return-void
.end method

.method public setUpdateEmerencyCallState(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mUpdateEmergencyCallstate:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setVideoResolution(I)V
    .locals 0

    iput p1, p0, Lcom/android/services/telephony/common/SecCallExtra;->mVideoResolution:I

    return-void
.end method

.method public setVolteConference(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsVolteConference:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setWaitingCall(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsWaitingCall:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mTelecomCallId"

    iget-object v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mConnectionCallId"

    iget-object v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mConnectionCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mIsRedialCall"

    iget v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsRedialCall:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mIsAutorejectCall"

    iget v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsAutorejectCall:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mIsWaitingCall"

    iget v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsWaitingCall:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mIsIpCall"

    iget v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsIpCall:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mLineCtrl"

    iget v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mLineCtrl:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mType"

    sget-object v2, Lcom/android/services/telephony/common/SecCallExtra;->TYPE_MAP:Ljava/util/Map;

    iget v3, p0, Lcom/android/services/telephony/common/SecCallExtra;->mType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mDomain"

    sget-object v2, Lcom/android/services/telephony/common/SecCallExtra;->DOMAIN_MAP:Ljava/util/Map;

    iget v3, p0, Lcom/android/services/telephony/common/SecCallExtra;->mDomain:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mHDIcon"

    iget v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mHDIcon:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mCVOStatus"

    iget v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mCVOStatus:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mIsEpdgCall"

    iget v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsEpdgCall:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mIsEpdgW2L"

    iget v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsEpdgW2L:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mStartPopupServiceWhenMakeCallFromOtherApp"

    iget v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mStartPopupServiceWhenMakeCallFromOtherApp:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mVideoResolution"

    sget-object v2, Lcom/android/services/telephony/common/SecCallExtra;->RESOLUTION_MAP:Ljava/util/Map;

    iget v3, p0, Lcom/android/services/telephony/common/SecCallExtra;->mVideoResolution:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mIMSConferenceCall"

    iget-byte v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIMSConferenceCall:B

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mIMSConferenceStateChanged"

    iget v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIMSConferenceStateChanged:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mNameForIMSConference"

    iget-object v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mNameForIMSConference:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mNumberForIMSConference"

    iget-object v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mNumberForIMSConference:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mGetAliveParticipantNumber"

    iget-object v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mGetAliveParticipantNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mFirstCallerForIMSConference"

    iget-object v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mFirstCallerForIMSConference:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mReceivedCall"

    iget-byte v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mReceivedCall:B

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mOutgoingCallMessage"

    iget-object v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mOutgoingCallMessage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mIsRadNumberConverted"

    iget v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsRadNumberConverted:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mCdnipNumber"

    iget-object v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mCdnipNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mCWToneSignal"

    iget v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mCWToneSignal:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mRecordSaveFilePath"

    iget-object v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mRecordSaveFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mSubId"

    iget v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mSubId:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mModifiedTimeMillis"

    iget-wide v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mModifiedTimeMillis:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mLogSeviceType"

    iget v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mLogSeviceType:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mInitModifiedLogType"

    iget v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mInitModifiedLogType:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mModifiedLogType"

    iget v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mModifiedLogType:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mEndEarly"

    iget v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mEndEarly:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mDisconnectForCallBarring"

    iget v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mDisconnectForCallBarring:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mHasBeenVideoCall"

    iget v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mHasBeenVideoCall:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mVTSpeakerState"

    iget v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mVTSpeakerState:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mAssisted"

    iget v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mAssisted:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "IMSConferenceParticipantCount"

    iget v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantCount:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "IMSConferenceParticipantNumber"

    iget-object v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantNumber:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "IMSConferenceParticipantState"

    iget-object v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantState:[I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "IMSConferenceParticipantStatus"

    iget-object v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantStatus:[I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "IMSConferenceParticipantCreateTime"

    iget-object v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantCreateTime:[J

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "IMSConferenceParticipantStartduration"

    iget-object v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantStartDuration:[J

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "IMSConferenceParticipantDuration"

    iget-object v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantDuration:[J

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mIsHoldedByTheOtherParty"

    iget-byte v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsHoldedByTheOtherParty:B

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mSessionId"

    iget v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mSessionId:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mIsWfcImsCall"

    iget v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsWfcImsCall:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mIsCapableSessionModify"

    iget v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsCapableSessionModify:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mYellowPageName"

    iget-object v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mYellowPageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mTtyType"

    iget v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mTtyType:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mPostDialString"

    iget-object v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mPostDialString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mIsPhoneTypeChanged"

    iget v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsPhoneTypeChanged:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mForwardingNumber"

    iget-object v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mForwardingNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mForwardingPresentation"

    iget-object v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mForwardingPresentation:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mIsVoicePartyCall"

    iget v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsVoicePartyCall:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mGroupId"

    iget v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mGroupId:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mIsWfcEmergencyCall"

    iget v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsWfcEmergencyCall:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mIsVolteGroupCall"

    iget v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsVolteGroupCall:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mSpamTagName"

    iget-object v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mSpamTagName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mSpamCount"

    iget v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mSpamCount:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mSpamTagType"

    iget v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mSpamTagType:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "misSpam"

    iget v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->misSpam:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mIsConfParticipant"

    iget-byte v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsConfParticipant:B

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mIsVolteConference"

    iget v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsVolteConference:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mIsDowngradeCall"

    iget v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsDowngradeCall:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mConnectionCallId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsRedialCall:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsAutorejectCall:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsWaitingCall:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsIpCall:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mLineCtrl:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mDomain:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mHDIcon:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mCVOStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsEpdgCall:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsEpdgW2L:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mStartPopupServiceWhenMakeCallFromOtherApp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mVideoResolution:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Lcom/android/services/telephony/common/SecCallExtra;->getIMSConferenceCall()B

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIMSConferenceStateChanged:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mNameForIMSConference:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mNumberForIMSConference:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mGetAliveParticipantNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mFirstCallerForIMSConference:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-byte v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mReceivedCall:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mOutgoingCallMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mRadOriginalNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsRadNumberConverted:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mCdnipNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mCWToneSignal:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mRecordSaveFilePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mSubId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mModifiedTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mLogSeviceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mInitModifiedLogType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mModifiedLogType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mEndEarly:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mDisconnectForCallBarring:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mHasBeenVideoCall:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mVTSpeakerState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mAssisted:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mTouchPoint:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsDialToKoreaForRAD:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantNumber:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantName:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantPhotoUri:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantLookupKey:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantState:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantStatus:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantCreateTime:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantStartDuration:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantDuration:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    iget-byte v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsHoldedByTheOtherParty:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mSessionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsWfcImsCall:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsCapableSessionModify:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mYellowPageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mTtyType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mPostDialString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsPhoneTypeChanged:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mForwardingNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mForwardingPresentation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsVoicePartyCall:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mGroupId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsWfcEmergencyCall:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsVolteGroupCall:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mSpamTagName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mSpamNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mSpamCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mSpamTagType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->misSpam:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-byte v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsConfParticipant:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mUpdateEmergencyCallstate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsVolteConference:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsDowngradeCall:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

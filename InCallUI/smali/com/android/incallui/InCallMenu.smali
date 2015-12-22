.class public Lcom/android/incallui/InCallMenu;
.super Ljava/lang/Object;
.source "InCallMenu.java"


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mIsMenuOpen:Z

.field private mParticipantUri:Ljava/lang/String;

.field private mUniqueMenuItem:Ljava/lang/String;

.field private menu:Landroid/view/Menu;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/InCallMenu;->mParticipantUri:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/InCallMenu;->mIsMenuOpen:Z

    const-string v0, "InCallMenu constructor..."

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/InCallMenu;->log(Ljava/lang/String;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/InCallMenu;->log(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    return-void
.end method

.method private IsActiveRcsFT()Z
    .locals 11

    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v8

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v6

    const/4 v9, 0x0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-static {v0, v8}, Lcom/android/incallui/rcs/RcsShareUI;->getPhoneNumber(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    invoke-static {v10, v0}, Lcom/android/incallui/rcs/RcsShareUI;->generateTelUri(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallMenu;->mParticipantUri:Ljava/lang/String;

    sget-object v0, Lcom/android/services/telephony/common/RcsTransferConstants;->SIP_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/incallui/InCallMenu;->mParticipantUri:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/services/telephony/common/RcsTransferConstants;->INCALL_SERVICE_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    :cond_0
    if-eqz v7, :cond_2

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez v8, :cond_1

    move-object v8, v6

    :cond_1
    invoke-virtual {v8}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v7}, Lcom/android/incallui/rcs/RcsShareUI;->isRcsFTAvailable(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    const-string v2, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.ft\""

    invoke-static {v0, v2}, Lcom/android/incallui/rcs/RcsShareUI;->IsOwnCapable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v9, 0x1

    :cond_2
    :goto_0
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    return v9

    :cond_4
    const/4 v9, 0x0

    goto :goto_0
.end method

.method private checkAddCallMenu()Z
    .locals 9

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/TelecomAdapter;->canAddCall()Z

    move-result v2

    const-string v7, "voice_call_recording"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "voice_call_recording_menu"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "manageAddCallMenu: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/incallui/InCallMenu;->log(Ljava/lang/String;)V

    :goto_0
    return v2

    :cond_0
    const-string v7, "ims_rcs"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    sget-boolean v4, Lcom/android/incallui/rcs/RcsShareUI;->isVSHButtonAvailable:Z

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "canAdd :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isVSHButtonAvailable :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    if-eqz v4, :cond_1

    if-eqz v2, :cond_1

    move v2, v5

    goto :goto_0

    :cond_1
    move v2, v6

    goto :goto_0

    :cond_2
    move v2, v6

    goto :goto_0
.end method

.method private checkAddVoiceUserMenu()Z
    .locals 11

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, "ims_voice_conference"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "feature_lgt"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "ims_voice_conference_cmcc"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "feature_kdi"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    :cond_0
    move v7, v8

    :cond_1
    :goto_0
    return v7

    :cond_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    const-string v9, "feature_kdi"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-static {v2}, Lcom/android/incallui/InCallUtils;->getSecCallExtra(Lcom/android/incallui/Call;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v6

    const/4 v5, 0x0

    const/4 v4, 0x0

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/android/services/telephony/common/SecCallExtra;->isVoicePartyCall()I

    move-result v9

    if-ne v9, v7, :cond_5

    move v5, v7

    :goto_1
    invoke-virtual {v6}, Lcom/android/services/telephony/common/SecCallExtra;->isReceivedCall()Z

    move-result v4

    :cond_3
    if-eqz v5, :cond_4

    if-eqz v4, :cond_1

    :cond_4
    move v7, v8

    goto :goto_0

    :cond_5
    move v5, v8

    goto :goto_1

    :cond_6
    if-eqz v3, :cond_7

    const/high16 v9, 0x20000

    invoke-virtual {v3, v9}, Lcom/android/incallui/Call;->can(I)Z

    move-result v9

    if-eqz v9, :cond_7

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_7

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_1

    :cond_7
    move v7, v8

    goto :goto_0
.end method

.method private checkCDMAMergeCallMenu()Z
    .locals 6

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getPhoneType()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    if-eqz v2, :cond_0

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/incallui/Call;->can(I)Z

    move-result v3

    goto :goto_0
.end method

.method private checkCDMASwapCallMenu()Z
    .locals 6

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getPhoneType()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    if-eqz v2, :cond_0

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/incallui/Call;->can(I)Z

    move-result v3

    goto :goto_0
.end method

.method private checkCalendarMenu()Z
    .locals 2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "support_more_option_item_for_extra_view_page"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private checkCallTransfer()Z
    .locals 6

    const/high16 v5, 0x100000

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getSecondBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v2

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isSupportCallTransfer()Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMultipartyCall()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->hasConferenceCall()Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "checkCallTransfer : 1 active & 1 hold case"

    invoke-direct {p0, v4}, Lcom/android/incallui/InCallMenu;->log(Ljava/lang/String;)V

    const-string v4, "common_volte"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {v2}, Lcom/android/incallui/InCallUtils;->isPSDomain(Lcom/android/incallui/Call;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isPSDomain(Lcom/android/incallui/Call;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v2, v5}, Lcom/android/incallui/Call;->can(I)Z

    move-result v3

    :cond_1
    :goto_0
    const-string v4, "not_support_transfer_button_on_vowifi"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVoWIFIRegistered()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "transfer is deprecated : VoWiFi registered"

    invoke-direct {p0, v4}, Lcom/android/incallui/InCallMenu;->log(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkCallTransfer : result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/incallui/InCallMenu;->log(Ljava/lang/String;)V

    return v3

    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    :cond_4
    invoke-virtual {v2, v5}, Lcom/android/incallui/Call;->can(I)Z

    move-result v3

    goto :goto_0
.end method

.method private checkContactsMenu()Z
    .locals 2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "support_more_option_item_for_extra_view_page"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private checkExtraVolumeMenu()Z
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getDisconnectingCall()Lcom/android/incallui/Call;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/incallui/Call;

    move-result-object v4

    if-eqz v4, :cond_3

    :cond_0
    move v1, v3

    :goto_0
    iget-object v4, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/incallui/InCallUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v1, :cond_4

    :cond_1
    move v3, v2

    :cond_2
    :goto_1
    return v3

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    const-string v4, "show_switch_icon_in_button"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isAvailablePSVT()Z

    move-result v4

    if-nez v4, :cond_2

    :cond_5
    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isShowVZWVoLTEUI()Z

    move-result v4

    if-nez v4, :cond_2

    :cond_6
    invoke-static {}, Lcom/android/incallui/InCallUtils;->getExtraVolumeLocation()I

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "ims_rcs"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isISHButtonAvailable :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/incallui/rcs/RcsShareUI;->isISHButtonAvailable:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "activeCall : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    sget-boolean v4, Lcom/android/incallui/rcs/RcsShareUI;->isISHButtonAvailable:Z

    if-eqz v4, :cond_7

    if-nez v0, :cond_2

    :cond_7
    move v3, v2

    goto :goto_1
.end method

.method private checkHoldMenu()Z
    .locals 8

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v2

    const/4 v0, 0x0

    if-eqz v4, :cond_1

    move-object v0, v4

    :goto_0
    if-nez v0, :cond_4

    :cond_0
    :goto_1
    return v5

    :cond_1
    if-eqz v3, :cond_2

    move-object v0, v3

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    move-object v0, v2

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    const-string v7, "att_volte_ui"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "feature_tmo"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "feature_chn"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_5
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    :cond_6
    const-string v7, "vzw_volte_ui"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isPSDomain(Lcom/android/incallui/Call;)Z

    move-result v7

    if-nez v7, :cond_0

    :cond_7
    const-string v7, "china_cdma_call"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v7, 0x4

    invoke-virtual {v0, v7}, Lcom/android/incallui/Call;->can(I)Z

    move-result v7

    if-nez v7, :cond_0

    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Lcom/android/incallui/Call;->can(I)Z

    move-result v7

    if-nez v7, :cond_0

    :cond_8
    const-string v7, "ims_voice_conference_kddi"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isIMSConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v7

    if-nez v7, :cond_0

    :cond_9
    invoke-virtual {v0, v6}, Lcom/android/incallui/Call;->can(I)Z

    move-result v7

    if-eqz v7, :cond_0

    move v5, v6

    goto :goto_1
.end method

.method private checkMemoMenu()Z
    .locals 2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "support_more_option_item_for_extra_view_page"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private checkMessagesMenu()Z
    .locals 2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "support_more_option_item_for_extra_view_page"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private checkMuteMenu()Z
    .locals 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v6, "support_folder_single_lcd"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    move v1, v4

    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v6

    const/16 v7, 0xd

    if-eq v6, v7, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v6

    const/4 v7, 0x6

    if-ne v6, v7, :cond_4

    :cond_2
    move v2, v5

    :goto_1
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_5

    move v3, v5

    :goto_2
    const/16 v6, 0x40

    invoke-virtual {v0, v6}, Lcom/android/incallui/Call;->can(I)Z

    move-result v6

    if-eqz v6, :cond_6

    if-nez v2, :cond_6

    if-nez v3, :cond_6

    move v1, v5

    :goto_3
    const/16 v4, 0x10

    invoke-static {v4}, Lcom/android/incallui/InCallUtils;->needToDisableForKnox(I)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v1, 0x0

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkMuteMenu: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/incallui/InCallMenu;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move v2, v4

    goto :goto_1

    :cond_5
    move v3, v4

    goto :goto_2

    :cond_6
    move v1, v4

    goto :goto_3
.end method

.method private checkRecordStopMenu()Z
    .locals 4

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isKioskMode()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "isKioskMode, hide record menu"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isEncryptionMode()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "isEncryptionMode, hide record menu"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-eqz v0, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current user id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/incallui/InCallMenu;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v2, "voice_call_recording_menu"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private getHoldMenuTitle()Ljava/lang/String;
    .locals 7

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v2

    const/4 v0, 0x0

    if-eqz v4, :cond_0

    move-object v0, v4

    :goto_0
    if-nez v0, :cond_3

    const/4 v5, 0x0

    :goto_1
    return-object v5

    :cond_0
    if-eqz v3, :cond_1

    move-object v0, v3

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    move-object v0, v2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_4

    iget-object v5, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0154

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0158

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method

.method private getRecordStopMenuTitle()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getRecorderMgr()Lcom/android/incallui/PhoneVoiceRecorderManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d01bc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d01bb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;
    .locals 1

    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v0

    return-object v0
.end method

.method private launchRcsFileTransfer()V
    .locals 5

    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.samsung.rcs"

    const-string v4, "com.samsung.rcs.filetransfer.TransferContentActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.samsung.rcs.filetransfer.action.FILE_TRANSFER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/incallui/InCallMenu;->mParticipantUri:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/incallui/InCallApp;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getSecInCallActivity()Lcom/android/incallui/SecInCallActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    const v3, 0x7f0d035d

    const/4 v4, 0x1

    invoke-static {v1, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FT Failed - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/incallui/InCallMenu;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "InCallMenu"

    invoke-static {v0, p1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "InCallMenu"

    invoke-static {v0, p1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private manageAddCallMenu(Landroid/view/MenuItem;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->checkAddCallMenu()Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method private manageAddVoiceUserMenu(Landroid/view/MenuItem;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->checkAddVoiceUserMenu()Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->checkAddVoiceUserMenu()Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    return-void
.end method

.method private manageBluetoothMenu(Landroid/view/MenuItem;Landroid/view/MenuItem;)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p2, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private manageCalendarMenu(Landroid/view/MenuItem;)V
    .locals 2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "support_more_option_item_for_extra_view_page"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private manageCallTransfer(Landroid/view/MenuItem;)V
    .locals 1

    const-string v0, "manageCallTransfer"

    invoke-direct {p0, v0}, Lcom/android/incallui/InCallMenu;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->checkCallTransfer()Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method private manageContactsMenu(Landroid/view/MenuItem;)V
    .locals 2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "support_more_option_item_for_extra_view_page"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private manageExtraVolumeMenu(Landroid/view/MenuItem;Landroid/view/MenuItem;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->checkExtraVolumeMenu()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/SoundEffect;->isExtraVolOn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p2, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_1
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p2, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private manageHoldMenu(Landroid/view/MenuItem;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->getHoldMenuTitle()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->checkHoldMenu()Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method private manageMemoMenu(Landroid/view/MenuItem;)V
    .locals 2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "support_more_option_item_for_extra_view_page"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private manageMessagesMenu(Landroid/view/MenuItem;)V
    .locals 2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "support_more_option_item_for_extra_view_page"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private manageMuteMenu(Landroid/view/MenuItem;Landroid/view/MenuItem;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->checkMuteMenu()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/AudioModeProvider;->getMute()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p2, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_1
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p2, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private manageRecordStopMenu(Landroid/view/MenuItem;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->checkRecordStopMenu()Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->getRecordStopMenuTitle()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/android/incallui/InCallMenu;->getRecordStopEnableState()Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    return-void
.end method


# virtual methods
.method public addCallClicked()V
    .locals 5

    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/secui/SecUiAdapter;->getSecCallButtonUi()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    const-string v2, "com.android.incallui"

    const-string v3, "VOCB"

    const-string v4, "ADDC"

    invoke-static {v1, v2, v3, v4}, Lcom/android/incallui/secutils/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/android/incallui/SecCallButtonUi;->addCallClicked()V

    :cond_0
    return-void
.end method

.method public addVoiceUserClicked()V
    .locals 2

    const-string v1, "tablet_device"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/BaseInCallComponent;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/SecTabletInCallService;

    invoke-virtual {v0}, Lcom/android/incallui/SecTabletInCallService;->getSecCallButtonFragment()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/SecTabletInCallService;->getSecCallButtonFragment()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/incallui/SecCallButtonUi;->showAddUserForConferenceCall()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/BaseInCallComponent;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/SecInCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/SecInCallActivity;->getSecCallButtonFragment()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/SecInCallActivity;->getSecCallButtonFragment()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/incallui/SecCallButtonUi;->showAddUserForConferenceCall()V

    goto :goto_0
.end method

.method public callTransferClicked()V
    .locals 4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callTransferClicked, callId =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/incallui/InCallMenu;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/TelecomAdapter;->explicitCallTransfer(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public dismissDialogs()V
    .locals 0

    return-void
.end method

.method public extraVolumeClicked()V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secui/SecUiAdapter;->extraVolumeClicked()V

    return-void
.end method

.method public getRecordStopEnableState()Z
    .locals 5

    const/4 v1, 0x1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getRecorderMgr()Lcom/android/incallui/PhoneVoiceRecorderManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->getHoldMenuTitle()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->getHoldMenuTitle()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0154

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUniqueMenuItem()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallMenu;->mUniqueMenuItem:Ljava/lang/String;

    return-object v0
.end method

.method public holdClicked(Z)V
    .locals 6

    const v5, 0x7f0d025a

    const/4 v4, 0x1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz p1, :cond_2

    const-string v1, "common_volte_kor"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isPSDomain()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/secui/SecCall;->getHoldStateOfTheOtherParty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "can not hold volte call"

    invoke-static {p0, v1, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {v5}, Lcom/android/incallui/InCallUtils;->displayToast(I)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "feature_dcm"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->checkPrimaryEmergencyCall()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "can not hold volte call"

    invoke-static {p0, v1, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {v5}, Lcom/android/incallui/InCallUtils;->displayToast(I)V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Putting the call on hold: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/TelecomAdapter;->holdCall(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing the call from hold: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/TelecomAdapter;->unholdCall(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isExistOptionsItem()Z
    .locals 6

    const v5, 0x7f0d01ea

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->checkMuteMenu()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "support_folder_single_lcd"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    iput-object v4, p0, Lcom/android/incallui/InCallMenu;->mUniqueMenuItem:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mute option present"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->checkHoldMenu()Z

    move-result v2

    if-eqz v2, :cond_4

    if-nez v0, :cond_2

    const-string v2, "feature_chn"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iput-object v4, p0, Lcom/android/incallui/InCallMenu;->mUniqueMenuItem:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->getHoldMenuTitle()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/InCallMenu;->mUniqueMenuItem:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hold option present"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    :cond_4
    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->checkAddCallMenu()Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add call option present"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    if-nez v0, :cond_5

    const-string v2, "feature_chn"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    iput-object v4, p0, Lcom/android/incallui/InCallMenu;->mUniqueMenuItem:Ljava/lang/String;

    goto :goto_0

    :cond_6
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0155

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/InCallMenu;->mUniqueMenuItem:Ljava/lang/String;

    :cond_7
    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->checkRecordStopMenu()Z

    move-result v2

    if-eqz v2, :cond_9

    if-eqz v0, :cond_8

    iput-object v4, p0, Lcom/android/incallui/InCallMenu;->mUniqueMenuItem:Ljava/lang/String;

    goto :goto_0

    :cond_8
    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->getRecordStopMenuTitle()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/InCallMenu;->mUniqueMenuItem:Ljava/lang/String;

    :cond_9
    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->checkExtraVolumeMenu()Z

    move-result v2

    if-eqz v2, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extra volume option present"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    iput-object v4, p0, Lcom/android/incallui/InCallMenu;->mUniqueMenuItem:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_a
    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->checkContactsMenu()Z

    move-result v2

    if-eqz v2, :cond_c

    if-eqz v0, :cond_b

    iput-object v4, p0, Lcom/android/incallui/InCallMenu;->mUniqueMenuItem:Ljava/lang/String;

    goto/16 :goto_0

    :cond_b
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/InCallMenu;->mUniqueMenuItem:Ljava/lang/String;

    :cond_c
    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->checkMessagesMenu()Z

    move-result v2

    if-eqz v2, :cond_e

    if-eqz v0, :cond_d

    iput-object v4, p0, Lcom/android/incallui/InCallMenu;->mUniqueMenuItem:Ljava/lang/String;

    goto/16 :goto_0

    :cond_d
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/InCallMenu;->mUniqueMenuItem:Ljava/lang/String;

    :cond_e
    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->checkMemoMenu()Z

    move-result v2

    if-eqz v2, :cond_10

    if-eqz v0, :cond_f

    iput-object v4, p0, Lcom/android/incallui/InCallMenu;->mUniqueMenuItem:Ljava/lang/String;

    goto/16 :goto_0

    :cond_f
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/InCallMenu;->mUniqueMenuItem:Ljava/lang/String;

    :cond_10
    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->checkCalendarMenu()Z

    move-result v2

    if-eqz v2, :cond_12

    if-eqz v0, :cond_11

    iput-object v4, p0, Lcom/android/incallui/InCallMenu;->mUniqueMenuItem:Ljava/lang/String;

    goto/16 :goto_0

    :cond_11
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/InCallMenu;->mUniqueMenuItem:Ljava/lang/String;

    :cond_12
    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->checkCallTransfer()Z

    move-result v2

    if-eqz v2, :cond_14

    if-eqz v0, :cond_13

    iput-object v4, p0, Lcom/android/incallui/InCallMenu;->mUniqueMenuItem:Ljava/lang/String;

    goto/16 :goto_0

    :cond_13
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/InCallMenu;->mUniqueMenuItem:Ljava/lang/String;

    :cond_14
    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->checkAddVoiceUserMenu()Z

    move-result v2

    if-eqz v2, :cond_16

    if-eqz v0, :cond_15

    iput-object v4, p0, Lcom/android/incallui/InCallMenu;->mUniqueMenuItem:Ljava/lang/String;

    goto/16 :goto_0

    :cond_15
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0341

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/InCallMenu;->mUniqueMenuItem:Ljava/lang/String;

    :cond_16
    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->checkCDMASwapCallMenu()Z

    move-result v2

    if-eqz v2, :cond_18

    const-string v2, "tablet_device"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    if-eqz v0, :cond_17

    iput-object v4, p0, Lcom/android/incallui/InCallMenu;->mUniqueMenuItem:Ljava/lang/String;

    goto/16 :goto_0

    :cond_17
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d01b3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/InCallMenu;->mUniqueMenuItem:Ljava/lang/String;

    :cond_18
    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->checkCDMAMergeCallMenu()Z

    move-result v2

    if-eqz v2, :cond_1a

    const-string v2, "tablet_device"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    if-eqz v0, :cond_19

    iput-object v4, p0, Lcom/android/incallui/InCallMenu;->mUniqueMenuItem:Ljava/lang/String;

    goto/16 :goto_0

    :cond_19
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d01b2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/InCallMenu;->mUniqueMenuItem:Ljava/lang/String;

    :cond_1a
    if-eqz v0, :cond_1b

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isShowVZWVoLTEUI()Z

    move-result v1

    if-eqz v1, :cond_1b

    iput-object v4, p0, Lcom/android/incallui/InCallMenu;->mUniqueMenuItem:Ljava/lang/String;

    :cond_1b
    move v1, v0

    goto/16 :goto_0
.end method

.method public isMenuOpen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/InCallMenu;->mIsMenuOpen:Z

    return v0
.end method

.method protected optionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- optionsItemSelected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v3}, Lcom/android/incallui/InCallMenu;->log(Ljava/lang/String;Z)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/incallui/InCallMenu;->log(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  title: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/incallui/InCallMenu;->log(Ljava/lang/String;)V

    const-string v4, "ims_rcs"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x2

    invoke-static {v4}, Lcom/android/incallui/rcs/RcsShareUI;->unRegisterRcsObserver(I)V

    :cond_0
    iget-object v4, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "optionsItemSelected("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "), but null mContext!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v3}, Lcom/android/incallui/InCallMenu;->log(Ljava/lang/String;Z)V

    :goto_0
    return v2

    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v2}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    const-string v3, "InCallMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "optionsItemSelected:  unexpected View ID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (MenuItem = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_0
    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    const v6, 0x7f10002e

    if-ne v5, v6, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {v4, v2}, Lcom/android/incallui/CallButtonPresenter;->muteClicked(Z)V

    :cond_3
    :goto_1
    move v2, v3

    goto :goto_0

    :sswitch_1
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/InCallMenu;->addCallClicked()V

    goto :goto_1

    :sswitch_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_5

    move v1, v3

    :goto_2
    if-nez v1, :cond_4

    move v2, v3

    :cond_4
    invoke-virtual {p0, v2}, Lcom/android/incallui/InCallMenu;->holdClicked(Z)V

    goto :goto_1

    :cond_5
    move v1, v2

    goto :goto_2

    :sswitch_3
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/InCallMenu;->recordstopClicked()V

    goto :goto_1

    :sswitch_4
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/InCallMenu;->extraVolumeClicked()V

    goto :goto_1

    :sswitch_5
    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/incallui/PackageHelpers;->launchContacts()V

    goto :goto_1

    :sswitch_6
    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/incallui/PackageHelpers;->launchMessage()V

    goto :goto_1

    :sswitch_7
    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/incallui/PackageHelpers;->launchMemo()V

    goto :goto_1

    :sswitch_8
    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/incallui/PackageHelpers;->launchPlanner()V

    goto :goto_1

    :sswitch_9
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/InCallMenu;->addVoiceUserClicked()V

    goto :goto_1

    :sswitch_a
    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->launchRcsFileTransfer()V

    goto :goto_1

    :sswitch_b
    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallButtonPresenter;->toggleBluetooth()V

    goto :goto_1

    :sswitch_c
    invoke-virtual {p0}, Lcom/android/incallui/InCallMenu;->callTransferClicked()V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f10002e -> :sswitch_0
        0x7f100030 -> :sswitch_2
        0x7f100245 -> :sswitch_3
        0x7f100257 -> :sswitch_1
        0x7f100372 -> :sswitch_4
        0x7f100373 -> :sswitch_4
        0x7f100374 -> :sswitch_5
        0x7f100375 -> :sswitch_6
        0x7f100376 -> :sswitch_7
        0x7f100377 -> :sswitch_8
        0x7f100378 -> :sswitch_9
        0x7f10037a -> :sswitch_a
        0x7f10037b -> :sswitch_b
        0x7f10037c -> :sswitch_b
        0x7f10037d -> :sswitch_c
        0x7f10037e -> :sswitch_0
    .end sparse-switch
.end method

.method protected prepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 26

    const-string v25, "prepareOptionsMenu()..."

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/incallui/InCallMenu;->log(Ljava/lang/String;)V

    const-string v25, "ims_rcs"

    invoke-static/range {v25 .. v25}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_0

    const/16 v25, 0x2

    invoke-static/range {v25 .. v25}, Lcom/android/incallui/rcs/RcsShareUI;->registerRcsObserver(I)V

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/InCallMenu;->menu:Landroid/view/Menu;

    :cond_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v22

    invoke-virtual {v11}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v4

    const/4 v10, 0x0

    if-eqz v22, :cond_1

    move-object/from16 v10, v22

    :goto_0
    const-string v25, "support_folder_single_lcd"

    invoke-static/range {v25 .. v25}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_2

    const v25, 0x7f10002e

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v21

    const v25, 0x7f10037e

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/InCallMenu;->manageMuteMenu(Landroid/view/MenuItem;Landroid/view/MenuItem;)V

    const/16 v25, 0x1

    :goto_1
    return v25

    :cond_1
    move-object v10, v4

    goto :goto_0

    :cond_2
    const/16 v17, 0x0

    :goto_2
    invoke-interface/range {p1 .. p1}, Landroid/view/Menu;->size()I

    move-result v25

    move/from16 v0, v17

    move/from16 v1, v25

    if-ge v0, v1, :cond_7

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Landroid/view/MenuItem;->getItemId()I

    move-result v18

    sparse-switch v18, :sswitch_data_0

    :goto_3
    :sswitch_0
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    :sswitch_1
    const v25, 0x7f100257

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/incallui/InCallMenu;->manageAddCallMenu(Landroid/view/MenuItem;)V

    goto :goto_3

    :sswitch_2
    const v25, 0x7f100030

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/incallui/InCallMenu;->manageHoldMenu(Landroid/view/MenuItem;)V

    goto :goto_3

    :sswitch_3
    const v25, 0x7f100245

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/incallui/InCallMenu;->manageRecordStopMenu(Landroid/view/MenuItem;)V

    goto :goto_3

    :sswitch_4
    const v25, 0x7f100372

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v15

    const v25, 0x7f100373

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v14}, Lcom/android/incallui/InCallMenu;->manageExtraVolumeMenu(Landroid/view/MenuItem;Landroid/view/MenuItem;)V

    goto :goto_3

    :sswitch_5
    const v25, 0x7f100374

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/incallui/InCallMenu;->manageContactsMenu(Landroid/view/MenuItem;)V

    goto :goto_3

    :sswitch_6
    const v25, 0x7f100375

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/incallui/InCallMenu;->manageMessagesMenu(Landroid/view/MenuItem;)V

    goto :goto_3

    :sswitch_7
    const v25, 0x7f100376

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/incallui/InCallMenu;->manageMemoMenu(Landroid/view/MenuItem;)V

    goto/16 :goto_3

    :sswitch_8
    const v25, 0x7f100377

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/incallui/InCallMenu;->manageCalendarMenu(Landroid/view/MenuItem;)V

    goto/16 :goto_3

    :sswitch_9
    const v25, 0x7f100378

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    const-string v25, "ims_voice_conference_kddi"

    invoke-static/range {v25 .. v25}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_3

    const v25, 0x7f0d01b4

    move/from16 v0, v25

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/incallui/InCallMenu;->manageAddVoiceUserMenu(Landroid/view/MenuItem;)V

    goto/16 :goto_3

    :sswitch_a
    const v25, 0x7f10037a

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const v25, 0x7f02024d

    move/from16 v0, v25

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const-string v25, "ims_rcs"

    invoke-static/range {v25 .. v25}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_6

    const-string v25, "ims_rcs_bb"

    invoke-static/range {v25 .. v25}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_6

    invoke-static {}, Lcom/android/incallui/rcs/RcsShareUI;->isRcsServiceAvailable()Z

    move-result v25

    if-eqz v25, :cond_5

    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/InCallMenu;->IsActiveRcsFT()Z

    move-result v25

    if-eqz v25, :cond_4

    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_4
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_5
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_6
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :sswitch_b
    const v25, 0x7f10037b

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const v25, 0x7f10037c

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v7}, Lcom/android/incallui/InCallMenu;->manageBluetoothMenu(Landroid/view/MenuItem;Landroid/view/MenuItem;)V

    goto/16 :goto_3

    :sswitch_c
    const v25, 0x7f10037d

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/incallui/InCallMenu;->manageCallTransfer(Landroid/view/MenuItem;)V

    goto/16 :goto_3

    :cond_7
    const/16 v25, 0x1

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x7f100030 -> :sswitch_2
        0x7f100245 -> :sswitch_3
        0x7f100257 -> :sswitch_1
        0x7f100372 -> :sswitch_0
        0x7f100373 -> :sswitch_4
        0x7f100374 -> :sswitch_5
        0x7f100375 -> :sswitch_6
        0x7f100376 -> :sswitch_7
        0x7f100377 -> :sswitch_8
        0x7f100378 -> :sswitch_9
        0x7f10037a -> :sswitch_a
        0x7f10037b -> :sswitch_0
        0x7f10037c -> :sswitch_b
        0x7f10037d -> :sswitch_c
    .end sparse-switch
.end method

.method public recordstopClicked()V
    .locals 4

    iget-object v1, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    const-string v2, "com.android.incallui"

    const-string v3, "RECG"

    invoke-static {v1, v2, v3}, Lcom/android/incallui/secutils/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getRecorderMgr()Lcom/android/incallui/PhoneVoiceRecorderManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/PhoneVoiceRecorderManager;->toggleRecord()V

    :cond_0
    return-void
.end method

.method public setMenuOpen(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/InCallMenu;->mIsMenuOpen:Z

    return-void
.end method

.method public setTransferFileOption(Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/InCallMenu;->menu:Landroid/view/Menu;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/InCallMenu;->menu:Landroid/view/Menu;

    const v2, 0x7f10037a

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

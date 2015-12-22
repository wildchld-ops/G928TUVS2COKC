.class public Lcom/android/incallui/ConferenceManagerPresenter;
.super Lcom/android/incallui/Presenter;
.source "ConferenceManagerPresenter.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallDetailsListener;
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/Presenter",
        "<",
        "Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;",
        ">;",
        "Lcom/android/incallui/InCallPresenter$InCallDetailsListener;",
        "Lcom/android/incallui/InCallPresenter$InCallStateListener;",
        "Lcom/android/incallui/InCallPresenter$IncomingCallListener;"
    }
.end annotation


# static fields
.field private static sConferenceManagerPresenter:Lcom/android/incallui/ConferenceManagerPresenter;


# instance fields
.field private mCallTimer:Lcom/android/incallui/CallTimer;

.field private mCallerIds:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/incallui/Presenter;-><init>()V

    new-instance v0, Lcom/android/incallui/CallTimer;

    new-instance v1, Lcom/android/incallui/ConferenceManagerPresenter$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/ConferenceManagerPresenter$1;-><init>(Lcom/android/incallui/ConferenceManagerPresenter;)V

    invoke-direct {v0, v1}, Lcom/android/incallui/CallTimer;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/incallui/ConferenceManagerPresenter;->mCallTimer:Lcom/android/incallui/CallTimer;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/incallui/ConferenceManagerPresenter;
    .locals 2

    const-class v1, Lcom/android/incallui/ConferenceManagerPresenter;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/incallui/ConferenceManagerPresenter;->sConferenceManagerPresenter:Lcom/android/incallui/ConferenceManagerPresenter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-direct {v0}, Lcom/android/incallui/ConferenceManagerPresenter;-><init>()V

    sput-object v0, Lcom/android/incallui/ConferenceManagerPresenter;->sConferenceManagerPresenter:Lcom/android/incallui/ConferenceManagerPresenter;

    :cond_0
    sget-object v0, Lcom/android/incallui/ConferenceManagerPresenter;->sConferenceManagerPresenter:Lcom/android/incallui/ConferenceManagerPresenter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private update(Lcom/android/incallui/CallList;)V
    .locals 21

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v17

    if-nez v17, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/ConferenceManagerPresenter;->getSecUi()Lcom/android/incallui/SecConferenceManagerUi;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v1

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/incallui/ConferenceManagerPresenter;->mCallerIds:[Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Number of calls is "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/incallui/ConferenceManagerPresenter;->mCallerIds:[Ljava/lang/String;

    array-length v6, v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    new-instance v14, Ljava/util/ArrayList;

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v14, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/android/incallui/CallList;->getCallById(Ljava/lang/String;)Lcom/android/incallui/Call;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Number of calls is "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSConferenceCMCCUIDisplay()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/ConferenceManagerPresenter;->getSecUi()Lcom/android/incallui/SecConferenceManagerUi;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/ConferenceManagerPresenter;->getSecUi()Lcom/android/incallui/SecConferenceManagerUi;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/incallui/SecConferenceManagerUi;->updateIMSConferenceList()V

    goto/16 :goto_0

    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_9

    const/16 v18, 0x1

    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_a

    const/16 v19, 0x1

    :goto_3
    if-eqz v18, :cond_5

    if-nez v19, :cond_b

    :cond_5
    const/4 v15, 0x1

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/ConferenceManagerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/incallui/ConferenceManagerPresenter;->mContext:Landroid/content/Context;

    invoke-interface {v1, v6, v14, v15}, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;->update(Landroid/content/Context;Ljava/util/List;Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/ConferenceManagerPresenter;->getSecUi()Lcom/android/incallui/SecConferenceManagerUi;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    :goto_5
    const/4 v1, 0x5

    if-ge v2, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/ConferenceManagerPresenter;->mCallerIds:[Ljava/lang/String;

    array-length v1, v1

    if-ge v2, v1, :cond_f

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallList;->getCallById(Ljava/lang/String;)Lcom/android/incallui/Call;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/incallui/Call;->getTelecommCall()Landroid/telecom/Call;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getCallCapabilities()I

    move-result v12

    if-eqz v15, :cond_c

    and-int/lit16 v1, v12, 0x1000

    if-eqz v1, :cond_c

    const/4 v4, 0x1

    :goto_6
    and-int/lit16 v1, v12, 0x2000

    if-eqz v1, :cond_d

    const/4 v5, 0x1

    :goto_7
    const-string v1, "us_volte_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "singapore_volte_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/ConferenceManagerPresenter;->mCallerIds:[Ljava/lang/String;

    aget-object v1, v1, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallList;->getCallById(Ljava/lang/String;)Lcom/android/incallui/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/InCallUtils;->isPSDomain(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v4, 0x0

    :cond_7
    const-string v1, "not_support_ims_conference_split"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/ConferenceManagerPresenter;->mCallerIds:[Ljava/lang/String;

    aget-object v1, v1, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallList;->getCallById(Ljava/lang/String;)Lcom/android/incallui/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/InCallUtils;->isPSDomain(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v4, 0x0

    const-string v1, "do not support IMS conference split"

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/ConferenceManagerPresenter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/incallui/ConferenceManagerPresenter;->mCallerIds:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v1, v6}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v3

    const-string v1, "call_details_for_hd_icon"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual/range {v16 .. v16}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/secui/SecCall;->getHDIcon()I

    move-result v1

    if-lez v1, :cond_e

    const/4 v6, 0x1

    :goto_8
    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/incallui/ConferenceManagerPresenter;->updateManageConferenceRow(ILcom/android/incallui/ContactInfoCache$ContactCacheEntry;ZZZ)V

    :goto_9
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_5

    :cond_9
    const/16 v18, 0x0

    goto/16 :goto_2

    :cond_a
    const/16 v19, 0x0

    goto/16 :goto_3

    :cond_b
    const/4 v15, 0x0

    goto/16 :goto_4

    :cond_c
    const/4 v4, 0x0

    goto/16 :goto_6

    :cond_d
    const/4 v5, 0x0

    goto/16 :goto_7

    :cond_e
    const/4 v6, 0x0

    goto :goto_8

    :cond_f
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, p0

    move v7, v2

    invoke-virtual/range {v6 .. v11}, Lcom/android/incallui/ConferenceManagerPresenter;->updateManageConferenceRow(ILcom/android/incallui/ContactInfoCache$ContactCacheEntry;ZZZ)V

    goto :goto_9
.end method


# virtual methods
.method public endConferenceConnection(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/ConferenceManagerPresenter;->mCallerIds:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/ConferenceManagerPresenter;->mCallerIds:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/android/incallui/TelecomAdapter;->disconnectCall(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getMaxCallersInConference()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public getSecUi()Lcom/android/incallui/SecConferenceManagerUi;
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    instance-of v1, v0, Lcom/android/incallui/SecConferenceManagerUi;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/incallui/SecConferenceManagerUi;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init(Landroid/content/Context;Lcom/android/incallui/CallList;)V
    .locals 1

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/incallui/ConferenceManagerPresenter;->mContext:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/android/incallui/ConferenceManagerPresenter;->update(Lcom/android/incallui/CallList;)V

    return-void
.end method

.method public onDetailsChanged(Lcom/android/incallui/Call;Landroid/telecom/Call$Details;)V
    .locals 5

    const/16 v4, 0x2000

    const/16 v3, 0x1000

    const-string v2, "onDetailsChanged"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Landroid/telecom/Call$Details;->can(I)Z

    move-result v0

    invoke-virtual {p2, v3}, Landroid/telecom/Call$Details;->can(I)Z

    move-result v1

    invoke-virtual {p1, v4}, Lcom/android/incallui/Call;->can(I)Z

    move-result v2

    if-ne v2, v0, :cond_0

    invoke-virtual {p1, v3}, Lcom/android/incallui/Call;->can(I)Z

    move-result v2

    if-eq v2, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;

    invoke-interface {v2, p1}, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;->refreshCall(Lcom/android/incallui/Call;)V

    :cond_1
    const/16 v2, 0x80

    invoke-virtual {p2, v2}, Landroid/telecom/Call$Details;->can(I)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/incallui/InCallPresenter;->showConferenceCallManager(Z)V

    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSConferenceCMCCUIDisplay()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerPresenter;->getSecUi()Lcom/android/incallui/SecConferenceManagerUi;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerPresenter;->getSecUi()Lcom/android/incallui/SecConferenceManagerUi;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/incallui/SecConferenceManagerUi;->updateIMSConferenceList()V

    :cond_3
    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;

    invoke-interface {v0}, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;->isFragmentVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "onIncomingCall()... Conference ui is showing, hide it."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->showConferenceCallManager(Z)V

    :cond_0
    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;

    invoke-interface {v1}, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;->isFragmentVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStateChange"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v1, :cond_3

    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Number of existing calls is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/android/incallui/ConferenceManagerPresenter;->update(Lcom/android/incallui/CallList;)V

    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerPresenter;->getSecUi()Lcom/android/incallui/SecConferenceManagerUi;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerPresenter;->getSecUi()Lcom/android/incallui/SecConferenceManagerUi;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/incallui/SecConferenceManagerUi;->updateConferencePanelBackground(Lcom/android/incallui/Call;)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerPresenter;->startCallTimer()V

    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSConferenceCMCCUIDisplay()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerPresenter;->getSecUi()Lcom/android/incallui/SecConferenceManagerUi;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerPresenter;->getSecUi()Lcom/android/incallui/SecConferenceManagerUi;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/incallui/SecConferenceManagerUi;->updateIMSConferenceList()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/incallui/InCallPresenter;->showConferenceCallManager(Z)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/incallui/InCallPresenter;->showConferenceCallManager(Z)V

    goto :goto_0
.end method

.method public onUiReady(Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiReady(Lcom/android/incallui/Ui;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    const-string v0, "ims_voice_conference_cmcc_tbd"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onUiReady(Lcom/android/incallui/Ui;)V
    .locals 0

    check-cast p1, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;

    invoke-virtual {p0, p1}, Lcom/android/incallui/ConferenceManagerPresenter;->onUiReady(Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;)V

    return-void
.end method

.method public onUiResume()V
    .locals 0

    return-void
.end method

.method public onUiUnready(Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiUnready(Lcom/android/incallui/Ui;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    const-string v0, "ims_voice_conference_cmcc_tbd"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onUiUnready(Lcom/android/incallui/Ui;)V
    .locals 0

    check-cast p1, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;

    invoke-virtual {p0, p1}, Lcom/android/incallui/ConferenceManagerPresenter;->onUiUnready(Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;)V

    return-void
.end method

.method public separateConferenceConnection(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/ConferenceManagerPresenter;->mCallerIds:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/ConferenceManagerPresenter;->mCallerIds:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/android/incallui/TelecomAdapter;->separateCall(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public startCallTimer()V
    .locals 4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const-string v1, "vzw_volte_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "Starting the calltime timer"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/ConferenceManagerPresenter;->mCallTimer:Lcom/android/incallui/CallTimer;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Lcom/android/incallui/CallTimer;->start(J)Z

    :cond_0
    return-void
.end method

.method public stopCallTimer()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/ConferenceManagerPresenter;->mCallTimer:Lcom/android/incallui/CallTimer;

    if-eqz v0, :cond_0

    const-string v0, "Canceling the calltime timer"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/ConferenceManagerPresenter;->mCallTimer:Lcom/android/incallui/CallTimer;

    invoke-virtual {v0}, Lcom/android/incallui/CallTimer;->cancel()V

    :cond_0
    return-void
.end method

.method public updateCallTime()V
    .locals 10

    iget-object v8, p0, Lcom/android/incallui/ConferenceManagerPresenter;->mCallerIds:[Ljava/lang/String;

    if-nez v8, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v7

    check-cast v7, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v6, 0x0

    :goto_0
    iget-object v8, p0, Lcom/android/incallui/ConferenceManagerPresenter;->mCallerIds:[Ljava/lang/String;

    array-length v8, v8

    if-ge v6, v8, :cond_0

    iget-object v8, p0, Lcom/android/incallui/ConferenceManagerPresenter;->mCallerIds:[Ljava/lang/String;

    aget-object v8, v8, v6

    invoke-virtual {v0, v8}, Lcom/android/incallui/CallList;->getCallById(Ljava/lang/String;)Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_2

    if-eqz v7, :cond_2

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getConnectTimeMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v4, v8, v2

    invoke-static {v1}, Lcom/android/incallui/InCallUtils;->isHoldStateOfTheOtherParty(Lcom/android/incallui/Call;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/incallui/ConferenceManagerPresenter;->mContext:Landroid/content/Context;

    const v9, 0x7f0d0138

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v6, v8}, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;->setPrimaryCallElapsedTime(ILjava/lang/String;)V

    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    const-wide/16 v8, 0x3e8

    div-long v8, v4, v8

    invoke-static {v8, v9}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v6, v8}, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;->setPrimaryCallElapsedTime(ILjava/lang/String;)V

    goto :goto_1
.end method

.method public updateManageConferenceRow(ILcom/android/incallui/ContactInfoCache$ContactCacheEntry;ZZZ)V
    .locals 10

    if-eqz p2, :cond_6

    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerPresenter;->getSecUi()Lcom/android/incallui/SecConferenceManagerUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerPresenter;->getSecUi()Lcom/android/incallui/SecConferenceManagerUi;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/android/incallui/SecConferenceManagerUi;->setRowVisible(IZ)V

    :cond_0
    iget-object v2, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    iget-object v7, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    iget-boolean v8, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v2, v3

    const/4 v3, 0x0

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerPresenter;->getSecUi()Lcom/android/incallui/SecConferenceManagerUi;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerPresenter;->getSecUi()Lcom/android/incallui/SecConferenceManagerUi;

    move-result-object v0

    invoke-interface {v0, p1, p3}, Lcom/android/incallui/SecConferenceManagerUi;->setupSeparateButtonForRow(IZ)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerPresenter;->getSecUi()Lcom/android/incallui/SecConferenceManagerUi;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerPresenter;->getSecUi()Lcom/android/incallui/SecConferenceManagerUi;

    move-result-object v0

    invoke-interface {v0, p1, p4}, Lcom/android/incallui/SecConferenceManagerUi;->setupEndButtonForRow(IZ)V

    :cond_3
    const-string v0, "support_conference_call"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerPresenter;->getSecUi()Lcom/android/incallui/SecConferenceManagerUi;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerPresenter;->getSecUi()Lcom/android/incallui/SecConferenceManagerUi;

    move-result-object v0

    iget-object v4, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    iget-object v5, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->lookupKey:Ljava/lang/String;

    iget-object v6, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->displayPhotoUri:Landroid/net/Uri;

    move v1, p1

    move v9, p5

    invoke-interface/range {v0 .. v9}, Lcom/android/incallui/SecConferenceManagerUi;->displayCallerInfoForConferenceRow(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/graphics/drawable/Drawable;ZZ)V

    :cond_4
    :goto_0
    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerPresenter;->getSecUi()Lcom/android/incallui/SecConferenceManagerUi;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerPresenter;->getSecUi()Lcom/android/incallui/SecConferenceManagerUi;

    move-result-object v0

    iget-object v4, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    iget-object v5, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->lookupKey:Ljava/lang/String;

    iget-object v6, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->displayPhotoUri:Landroid/net/Uri;

    move v1, p1

    invoke-interface/range {v0 .. v6}, Lcom/android/incallui/SecConferenceManagerUi;->displayCallerInfoForConferenceRow(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerPresenter;->getSecUi()Lcom/android/incallui/SecConferenceManagerUi;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerPresenter;->getSecUi()Lcom/android/incallui/SecConferenceManagerUi;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/incallui/SecConferenceManagerUi;->setRowVisible(IZ)V

    goto :goto_0
.end method

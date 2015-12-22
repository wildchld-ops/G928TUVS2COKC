.class public Lcom/android/incallui/AnswerPresenter;
.super Lcom/android/incallui/Presenter;
.source "AnswerPresenter.java"

# interfaces
.implements Lcom/android/incallui/CallList$CallUpdateListener;
.implements Lcom/android/incallui/CallList$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/AnswerPresenter$AnswerUi;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/Presenter",
        "<",
        "Lcom/android/incallui/AnswerPresenter$AnswerUi;",
        ">;",
        "Lcom/android/incallui/CallList$CallUpdateListener;",
        "Lcom/android/incallui/CallList$Listener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sAnswerPresenter:Lcom/android/incallui/AnswerPresenter;


# instance fields
.field private final GSM_CONFERENCECALL_MAX_SIZE:I

.field private mAnswerCallAfterThisDisconnect:I

.field private mAnswerVideoStateAfterThisDisconnect:I

.field private mCall:Lcom/android/incallui/Call;

.field private mCallId:Ljava/lang/String;

.field private mHasTextMessages:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/incallui/Presenter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/incallui/Call;

    iput-boolean v1, p0, Lcom/android/incallui/AnswerPresenter;->mHasTextMessages:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/incallui/AnswerPresenter;->mAnswerCallAfterThisDisconnect:I

    iput v1, p0, Lcom/android/incallui/AnswerPresenter;->mAnswerVideoStateAfterThisDisconnect:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/incallui/AnswerPresenter;->GSM_CONFERENCECALL_MAX_SIZE:I

    return-void
.end method

.method private DisplayWaitingCallDialogWhenDoNotHaveHoldingCall(I)V
    .locals 16

    const-string v1, "DisplayWaitingCallDialogWhenDoNotHaveHoldingCall"

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v14, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-static {v12}, Lcom/android/incallui/InCallUtils;->isPSVideoCall(Lcom/android/incallui/Call;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v15}, Lcom/android/incallui/InCallUtils;->isPSVideoCall(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v13, 0x1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isVideoCallActiveOrRinging : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/AnswerPresenter;->getContext()Landroid/content/Context;

    move-result-object v10

    const/4 v8, 0x0

    if-nez v12, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v13, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {v12}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v12}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d01f4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    :goto_2
    if-nez v14, :cond_4

    const-string v14, ""

    :cond_4
    const-string v7, "%s"

    const-string v1, "att_volte_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "tmo_volte_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "canada_volte_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_5
    const/4 v1, 0x5

    if-ge v8, v1, :cond_8

    const/4 v1, 0x3

    new-array v11, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d01f2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s"

    invoke-virtual {v3, v4, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v11, v1

    const/4 v1, 0x1

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d01f3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s"

    invoke-virtual {v3, v4, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v11, v1

    const/4 v1, 0x2

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d01f1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s"

    invoke-virtual {v3, v4, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v11, v1

    const v1, 0x7f0d01f0

    invoke-virtual {v10, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/AnswerPresenter;->getSecUi()Lcom/android/incallui/SecAnswerUi;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "bmc_volte_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    if-eqz v13, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/AnswerPresenter;->getSecUi()Lcom/android/incallui/SecAnswerUi;

    move-result-object v1

    const/4 v3, 0x0

    aget-object v3, v11, v3

    const/4 v4, 0x2

    aget-object v4, v11, v4

    move/from16 v0, p1

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/android/incallui/SecAnswerUi;->showWaitingCallDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/incallui/AnswerPresenter;->getCallerName(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_2

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/AnswerPresenter;->getSecUi()Lcom/android/incallui/SecAnswerUi;

    move-result-object v1

    const/4 v3, 0x0

    aget-object v3, v11, v3

    const/4 v4, 0x1

    aget-object v4, v11, v4

    const/4 v5, 0x2

    aget-object v5, v11, v5

    move/from16 v6, p1

    invoke-interface/range {v1 .. v6}, Lcom/android/incallui/SecAnswerUi;->showWaitingCallDialogGSM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    :cond_8
    const/4 v1, 0x2

    new-array v11, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d01f2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s"

    invoke-virtual {v3, v4, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v11, v1

    const/4 v1, 0x1

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d01f1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s"

    invoke-virtual {v3, v4, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v11, v1

    const v1, 0x7f0d01f0

    invoke-virtual {v10, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/AnswerPresenter;->getSecUi()Lcom/android/incallui/SecAnswerUi;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/AnswerPresenter;->getSecUi()Lcom/android/incallui/SecAnswerUi;

    move-result-object v1

    const/4 v3, 0x0

    aget-object v3, v11, v3

    const/4 v4, 0x1

    aget-object v4, v11, v4

    move/from16 v0, p1

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/android/incallui/SecAnswerUi;->showWaitingCallDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1
.end method

.method private DisplayWaitingCallDialogWhenHaveHoldingCall()V
    .locals 17

    const-string v13, "DisplayWaitingCallDialogWhenHaveHoldingCall"

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v9

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v3

    const v12, 0x7f0d01f0

    const v8, 0x7f0d01f6

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/AnswerPresenter;->getContext()Landroid/content/Context;

    move-result-object v5

    if-eqz v9, :cond_0

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v9}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-virtual {v9}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v11

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0d01f4

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/incallui/AnswerPresenter;->getCallerName(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    const/4 v13, 0x3

    new-array v6, v13, [Ljava/lang/String;

    const-string v1, "%s"

    if-nez v10, :cond_2

    const-string v10, ""

    :cond_2
    if-nez v2, :cond_3

    const-string v2, ""

    :cond_3
    const v13, 0x7f0d01f1

    if-ne v8, v13, :cond_6

    const/4 v13, 0x0

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v15, "%s"

    invoke-virtual {v14, v15, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v6, v13

    const/4 v13, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/AnswerPresenter;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v15, "%s"

    invoke-virtual {v14, v15, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v6, v13

    :goto_2
    const/4 v13, 0x2

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0d01f7

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v6, v13

    invoke-virtual {v5, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/AnswerPresenter;->getSecUi()Lcom/android/incallui/SecAnswerUi;

    move-result-object v13

    if-eqz v13, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/AnswerPresenter;->getSecUi()Lcom/android/incallui/SecAnswerUi;

    move-result-object v13

    const/4 v14, 0x0

    aget-object v14, v6, v14

    const/4 v15, 0x1

    aget-object v15, v6, v15

    const/16 v16, 0x2

    aget-object v16, v6, v16

    move-object/from16 v0, v16

    invoke-interface {v13, v7, v14, v15, v0}, Lcom/android/incallui/SecAnswerUi;->showWaitingCallDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v3}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v13

    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/incallui/AnswerPresenter;->getCallerName(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v11

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0d01f5

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/incallui/AnswerPresenter;->getCallerName(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/incallui/AnswerPresenter;->getCallerName(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v2

    const v12, 0x7f0d01f0

    const v8, 0x7f0d01f1

    goto/16 :goto_1

    :cond_6
    const/4 v13, 0x0

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v6, v13

    const/4 v13, 0x1

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v6, v13

    goto/16 :goto_2
.end method

.method private configureAnswerTargetsForSms(Lcom/android/incallui/Call;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/incallui/Call;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    invoke-interface {v2}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz p2, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/incallui/AnswerPresenter;->mHasTextMessages:Z

    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Lcom/android/incallui/Call;->can(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/incallui/AnswerPresenter;->mHasTextMessages:Z

    if-eqz v2, :cond_2

    move v1, v3

    :goto_1
    invoke-virtual {p1, v0}, Lcom/android/incallui/Call;->isVideoCall(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    const/4 v3, 0x3

    invoke-interface {v2, v3}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->showTargets(I)V

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    invoke-interface {v2, p2}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->configureMessageDialog(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getSecUi()Lcom/android/incallui/SecAnswerUi;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getSecUi()Lcom/android/incallui/SecAnswerUi;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/android/incallui/SecAnswerUi;->configureRejectMsgList(Ljava/util/List;)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    move v1, v4

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->showTargets(I)V

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    invoke-interface {v2, v3}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->showTargets(I)V

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    invoke-interface {v2, p2}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->configureMessageDialog(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getSecUi()Lcom/android/incallui/SecAnswerUi;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getSecUi()Lcom/android/incallui/SecAnswerUi;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/android/incallui/SecAnswerUi;->configureRejectMsgList(Ljava/util/List;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    invoke-interface {v2, v4}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->showTargets(I)V

    goto :goto_2
.end method

.method private getCallerName(Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/InCallUtils;->isSrvccConference(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "getCallerName: isSrvccConference"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d01c0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/AnswerPresenter;->getCallerName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getCallerName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCallerName : number = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v3

    :cond_0
    const-string v4, "cnap_supplementary_service"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v0, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->message:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCallerName : cnapName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v0

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCallerName : name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/android/incallui/AnswerPresenter;
    .locals 2

    const-class v1, Lcom/android/incallui/AnswerPresenter;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/incallui/AnswerPresenter;->sAnswerPresenter:Lcom/android/incallui/AnswerPresenter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/AnswerPresenter;

    invoke-direct {v0}, Lcom/android/incallui/AnswerPresenter;-><init>()V

    sput-object v0, Lcom/android/incallui/AnswerPresenter;->sAnswerPresenter:Lcom/android/incallui/AnswerPresenter;

    :cond_0
    sget-object v0, Lcom/android/incallui/AnswerPresenter;->sAnswerPresenter:Lcom/android/incallui/AnswerPresenter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private processIncomingCall(Lcom/android/incallui/Call;)V
    .locals 6

    const/4 v4, 0x4

    const/4 v3, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isCarModeOn()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    if-ne v2, v4, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->hasActiveCall()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->hasHoldCall()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isVibrateWhenRinging()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isBluetoothAvailable()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_1
    sget-object v2, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    const-string v4, "[CarModeON] Do not show QuoteMark ..."

    invoke-static {v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getSecUi()Lcom/android/incallui/SecAnswerUi;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/android/incallui/SecAnswerUi;->showQuoteMark(Z)V

    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    iget-object v4, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    invoke-virtual {v2, v4, p0}, Lcom/android/incallui/CallList;->addCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V

    sget-object v2, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Showing incoming for call id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/incallui/CallList;->getTextResponses(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    invoke-interface {v2, v0}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->showAnswerUi(Z)V

    invoke-direct {p0, p1, v1}, Lcom/android/incallui/AnswerPresenter;->configureAnswerTargetsForSms(Lcom/android/incallui/Call;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getSecUi()Lcom/android/incallui/SecAnswerUi;

    move-result-object v2

    if-eqz v2, :cond_3

    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Lcom/android/incallui/Call;->can(I)Z

    move-result v2

    if-eqz v2, :cond_6

    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getSecUi()Lcom/android/incallui/SecAnswerUi;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/incallui/SecAnswerUi;->showRejectCallWithMessage(Z)V

    :cond_3
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isSecUi()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "roaming_enhancement"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->getInstance()Lcom/android/incallui/operator/usa/InCallUIExtensionManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->showCallRoamingGuardDialog(Landroid/content/Context;Lcom/android/incallui/Call;)V

    :cond_4
    return-void

    :cond_5
    iget-object v2, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    if-ne v2, v4, :cond_2

    sget-object v2, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    const-string v4, "[CarModeON] Show QuoteMark ..."

    invoke-static {v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getSecUi()Lcom/android/incallui/SecAnswerUi;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/incallui/SecAnswerUi;->showQuoteMark(Z)V

    goto/16 :goto_0

    :cond_6
    move v0, v3

    goto :goto_1
.end method

.method private processVideoUpgradeRequestCall(Lcom/android/incallui/Call;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/android/incallui/CallList;->addCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->showAnswerUi(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->showTargets(I)V

    return-void
.end method


# virtual methods
.method public checkAndHandleDuringEpdgCall(I)V
    .locals 4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "checkAndHandleDuringEpdgCall"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    invoke-virtual {v2, v3, p1}, Lcom/android/incallui/TelecomAdapter;->answerCall(Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/secservice/SecVideoCallManager;->getInstance()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->isEPDGCall(Lcom/android/incallui/Call;)Z

    move-result v1

    if-nez p1, :cond_1

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/incallui/AnswerPresenter;->hangUpThenAnswer(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    invoke-virtual {v2, v3, p1}, Lcom/android/incallui/TelecomAdapter;->answerCall(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public controlWaitingCall(I)V
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "controlWaitingCall"

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v5

    if-eqz v5, :cond_2

    move v1, v3

    :goto_0
    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v5

    if-eqz v5, :cond_3

    move v2, v3

    :goto_1
    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    const-string v3, "internalAnswerCall: answering (both lines in use!)..."

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/InCallUtils;->isCoverClosed(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isConnectedMirrorLink()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/incallui/AnswerPresenter;->hangUpThenAnswer(I)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    move v1, v4

    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/android/incallui/AnswerPresenter;->DisplayWaitingCallDialogWhenHaveHoldingCall()V

    goto :goto_2

    :cond_5
    if-eqz v1, :cond_9

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isEasyModeOn()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0, v4}, Lcom/android/incallui/AnswerPresenter;->hangUpThenAnswer(I)V

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/InCallUtils;->isCoverClosed(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isConnectedMirrorLink()Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "vzw_volte_ui"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_7
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/android/incallui/AnswerPresenter;->onAnswer(ILandroid/content/Context;)V

    goto :goto_2

    :cond_8
    invoke-direct {p0, p1}, Lcom/android/incallui/AnswerPresenter;->DisplayWaitingCallDialogWhenDoNotHaveHoldingCall(I)V

    goto :goto_2

    :cond_9
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    invoke-virtual {v3, v4, p1}, Lcom/android/incallui/TelecomAdapter;->answerCall(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getSecUi()Lcom/android/incallui/SecAnswerUi;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getSecUi()Lcom/android/incallui/SecAnswerUi;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/incallui/SecAnswerUi;->animateForAnswerCall(I)V

    goto :goto_2
.end method

.method public getSecUi()Lcom/android/incallui/SecAnswerUi;
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    instance-of v1, v0, Lcom/android/incallui/SecAnswerUi;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/incallui/SecAnswerUi;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hangUpThenAnswer(I)V
    .locals 7

    const/4 v6, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hangUpThenAnswer : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v0

    const/16 v4, 0x8

    if-ne v0, v4, :cond_0

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/android/incallui/TelecomAdapter;->storeSpeakerState(Z)V

    :cond_0
    packed-switch p1, :pswitch_data_0

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    if-eqz v3, :cond_1

    const-string v4, "us_volte_ui"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/secui/SecCall;->isPSDomain()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iput v4, p0, Lcom/android/incallui/AnswerPresenter;->mAnswerCallAfterThisDisconnect:I

    :goto_1
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/incallui/TelecomAdapter;->disconnectCall(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hangUpThenAnswer mAnswerCallAfterThisDisconnect: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/incallui/AnswerPresenter;->mAnswerCallAfterThisDisconnect:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    iput v6, p0, Lcom/android/incallui/AnswerPresenter;->mAnswerCallAfterThisDisconnect:I

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/incallui/AnswerPresenter;->onHangUpThenAnswer(Lcom/android/incallui/Call;)V

    goto :goto_0

    :pswitch_1
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iput v4, p0, Lcom/android/incallui/AnswerPresenter;->mAnswerCallAfterThisDisconnect:I

    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/incallui/AnswerPresenter;->onHangUpThenAnswer(Lcom/android/incallui/Call;)V

    goto :goto_0

    :cond_4
    iput v6, p0, Lcom/android/incallui/AnswerPresenter;->mAnswerCallAfterThisDisconnect:I

    goto :goto_2

    :pswitch_2
    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    const-string v4, "us_volte_ui"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/secui/SecCall;->isPSDomain()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/incallui/AnswerPresenter;->mAnswerCallAfterThisDisconnect:I

    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hangUpThenAnswer mAnswerCallAfterThisDisconnect: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/incallui/AnswerPresenter;->mAnswerCallAfterThisDisconnect:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    :cond_5
    invoke-virtual {p0, v1}, Lcom/android/incallui/AnswerPresenter;->onHangUpThenAnswer(Lcom/android/incallui/Call;)V

    invoke-virtual {p0, v3}, Lcom/android/incallui/AnswerPresenter;->onHangUpThenAnswer(Lcom/android/incallui/Call;)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v1}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/incallui/AnswerPresenter;->mAnswerCallAfterThisDisconnect:I

    goto :goto_3

    :cond_7
    const/4 v4, 0x2

    iput v4, p0, Lcom/android/incallui/AnswerPresenter;->mAnswerCallAfterThisDisconnect:I

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public hangUpThenAnswer(II)V
    .locals 0

    iput p2, p0, Lcom/android/incallui/AnswerPresenter;->mAnswerVideoStateAfterThisDisconnect:I

    invoke-virtual {p0, p1}, Lcom/android/incallui/AnswerPresenter;->hangUpThenAnswer(I)V

    return-void
.end method

.method public onAnswer()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/AnswerPresenter;->onAnswer(ILandroid/content/Context;)V

    return-void
.end method

.method public onAnswer(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/AnswerPresenter;->onAnswer(ILandroid/content/Context;)V

    return-void
.end method

.method public onAnswer(ILandroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAnswer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSessionModificationState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/incallui/InCallPresenter;->acceptUpgradeRequest(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    const-string v0, "epdg_call_for_vzw"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/incallui/AnswerPresenter;->checkAndHandleDuringEpdgCall(I)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getSecUi()Lcom/android/incallui/SecAnswerUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getSecUi()Lcom/android/incallui/SecAnswerUi;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/incallui/SecAnswerUi;->animateForAnswerCall(I)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/android/incallui/TelecomAdapter;->answerCall(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public onAnswerWithMerge()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAnswerWithMerge "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/TelecomAdapter;->answerCall(Ljava/lang/String;I)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->setMergeAfterAnswer(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getSecUi()Lcom/android/incallui/SecAnswerUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getSecUi()Lcom/android/incallui/SecAnswerUi;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/incallui/SecAnswerUi;->animateForAnswerCall(I)V

    goto :goto_0
.end method

.method public onAnswerWithMerge(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAnswerWithMerge "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAnswerWithMerge videoState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/android/incallui/TelecomAdapter;->answerCall(Ljava/lang/String;I)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->setMergeAfterAnswer(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getSecUi()Lcom/android/incallui/SecAnswerUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getSecUi()Lcom/android/incallui/SecAnswerUi;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/incallui/SecAnswerUi;->animateForAnswerCall(I)V

    goto :goto_0
.end method

.method public onAnswerWithWaitingCheck(I)V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnswerWithWaitingCheck "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/incallui/Call;

    const/high16 v2, 0x80000

    invoke-virtual {v1, v2}, Lcom/android/incallui/Call;->can(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/incallui/AnswerPresenter;->controlWaitingCall(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/incallui/AnswerPresenter;->onAnswer(I)V

    goto :goto_0
.end method

.method public onCallChanged(Lcom/android/incallui/Call;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getSecUi()Lcom/android/incallui/SecAnswerUi;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getSecUi()Lcom/android/incallui/SecAnswerUi;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/incallui/SecAnswerUi;->isAnswerAnimationRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->hasLiveCall()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Skip onCallChanged when answer animation is running"

    invoke-static {p0, v1, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallStateChange() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    invoke-virtual {v1, v2, p0}, Lcom/android/incallui/CallList;->removeCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    invoke-interface {v1, v3}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->showAnswerUi(Z)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/android/incallui/AnswerPresenter;->mHasTextMessages:Z

    const-string v1, "automatic_answering_machine"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallChanged : isAutoAnswered - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    invoke-interface {v1, v4}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->showAnswerUi(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getSecUi()Lcom/android/incallui/SecAnswerUi;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getSecUi()Lcom/android/incallui/SecAnswerUi;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/android/incallui/SecAnswerUi;->showRejectCallWithMessage(Z)V

    goto/16 :goto_0

    :cond_2
    iget-boolean v1, p0, Lcom/android/incallui/AnswerPresenter;->mHasTextMessages:Z

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/CallList;->getTextResponses(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/AnswerPresenter;->configureAnswerTargetsForSms(Lcom/android/incallui/Call;Ljava/util/List;)V

    goto/16 :goto_0
.end method

.method public onCallListChange(Lcom/android/incallui/CallList;)V
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCallListChange() => Showing incoming for call id: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    invoke-interface {v1, v2}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->showAnswerUi(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getSecUi()Lcom/android/incallui/SecAnswerUi;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getSecUi()Lcom/android/incallui/SecAnswerUi;

    move-result-object v4

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/android/incallui/Call;->can(I)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-interface {v4, v1}, Lcom/android/incallui/SecAnswerUi;->showRejectCallWithMessage(Z)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    invoke-interface {v1, v3}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->showAnswerUi(Z)V

    goto :goto_1
.end method

.method public onDecline()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDecline "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/incallui/TelecomAdapter;->rejectCall(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public onDisconnect(Lcom/android/incallui/Call;)V
    .locals 4

    const/4 v3, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisconnect() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/AnswerPresenter;->mAnswerCallAfterThisDisconnect:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, p0, Lcom/android/incallui/AnswerPresenter;->mAnswerCallAfterThisDisconnect:I

    if-lez v1, :cond_3

    iget v1, p0, Lcom/android/incallui/AnswerPresenter;->mAnswerCallAfterThisDisconnect:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/incallui/AnswerPresenter;->mAnswerCallAfterThisDisconnect:I

    iget v1, p0, Lcom/android/incallui/AnswerPresenter;->mAnswerCallAfterThisDisconnect:I

    if-nez v1, :cond_0

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/incallui/AnswerPresenter;->mAnswerCallAfterThisDisconnect:I

    iget v1, p0, Lcom/android/incallui/AnswerPresenter;->mAnswerVideoStateAfterThisDisconnect:I

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/incallui/AnswerPresenter;->onAnswer(ILandroid/content/Context;)V

    :cond_0
    :goto_0
    const-string v1, "automatic_answering_machine"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisconnect : isAutoAnswered - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->stopAnswerMemo()V

    invoke-static {v3}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->setAutoAnswered(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    invoke-interface {v1, v3}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->showAnswerUi(Z)V

    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/secui/SecUiAdapter;->getSecCallCardUi()Lcom/android/incallui/SecCallCardUi;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/incallui/SecCallCardUi;->clearAMView()V

    :cond_1
    const-string v1, "smart_auto_answering"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisconnect : isSmartAnswered - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->isSmartAnswered()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->isSmartAnswered()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->stopGuidance()V

    invoke-static {v3}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->setSmartAnswered(Z)V

    :cond_2
    return-void

    :cond_3
    iput v3, p0, Lcom/android/incallui/AnswerPresenter;->mAnswerVideoStateAfterThisDisconnect:I

    goto/16 :goto_0
.end method

.method public onDismissDialog()V
    .locals 1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->onDismissDialog()V

    return-void
.end method

.method public onHangUpThenAnswer(Lcom/android/incallui/Call;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/TelecomAdapter;->disconnectCall(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getSecUi()Lcom/android/incallui/SecAnswerUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getSecUi()Lcom/android/incallui/SecAnswerUi;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/incallui/SecAnswerUi;->animateForAnswerCall(I)V

    goto :goto_0
.end method

.method public onIncomingCall(Lcom/android/incallui/Call;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onIncomingCall: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/incallui/AnswerPresenter;->processIncomingCall(Lcom/android/incallui/Call;)V

    :cond_0
    return-void
.end method

.method public onText()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->silenceRinger()V

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    invoke-interface {v0}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->showMessageDialog()V

    :cond_0
    return-void
.end method

.method public onUiReady(Lcom/android/incallui/AnswerPresenter$AnswerUi;)V
    .locals 3

    const-string v2, "onUiReady()..."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiReady(Lcom/android/incallui/Ui;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/incallui/AnswerPresenter;->processIncomingCall(Lcom/android/incallui/Call;)V

    :cond_0
    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getVideoUpgradeRequestCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/android/incallui/AnswerPresenter;->processVideoUpgradeRequestCall(Lcom/android/incallui/Call;)V

    :cond_1
    invoke-virtual {v1, p0}, Lcom/android/incallui/CallList;->addListener(Lcom/android/incallui/CallList$Listener;)V

    return-void
.end method

.method public bridge synthetic onUiReady(Lcom/android/incallui/Ui;)V
    .locals 0

    check-cast p1, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    invoke-virtual {p0, p1}, Lcom/android/incallui/AnswerPresenter;->onUiReady(Lcom/android/incallui/AnswerPresenter$AnswerUi;)V

    return-void
.end method

.method public onUiResume()V
    .locals 1

    const-string v0, "onUiResume()-> for MultiSim"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onUiUnready(Lcom/android/incallui/AnswerPresenter$AnswerUi;)V
    .locals 2

    const-string v0, "onUiUnready()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiUnready(Lcom/android/incallui/Ui;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/CallList;->removeListener(Lcom/android/incallui/CallList$Listener;)V

    iget-object v0, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/android/incallui/CallList;->removeCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onUiUnready(Lcom/android/incallui/Ui;)V
    .locals 0

    check-cast p1, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    invoke-virtual {p0, p1}, Lcom/android/incallui/AnswerPresenter;->onUiUnready(Lcom/android/incallui/AnswerPresenter$AnswerUi;)V

    return-void
.end method

.method public rejectCallWithMessage(Ljava/lang/String;)V
    .locals 4

    const-string v1, "sendTextToDefaultActivity()..."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/BaseInCallComponent;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const-string v1, "rejectCallWithMessage DISMISS KEYGUARD for create MSG"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v1, 0x80000

    invoke-interface {v0, v1}, Lcom/android/incallui/BaseInCallComponent;->clearFlags(I)V

    const/high16 v1, 0x400000

    invoke-interface {v0, v1}, Lcom/android/incallui/BaseInCallComponent;->addFlags(I)V

    :cond_0
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/incallui/TelecomAdapter;->rejectCall(Ljava/lang/String;ZLjava/lang/String;)V

    const-string v1, "tablet_device"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/BaseInCallComponent;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/SecTabletInCallService;

    invoke-virtual {v1}, Lcom/android/incallui/SecTabletInCallService;->minimizeCallScreen()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->onDismissDialog()V

    return-void
.end method

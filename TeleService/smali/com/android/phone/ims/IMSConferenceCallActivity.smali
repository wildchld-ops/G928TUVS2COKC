.class public Lcom/android/phone/ims/IMSConferenceCallActivity;
.super Landroid/app/ListActivity;
.source "IMSConferenceCallActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/ims/IMSConferenceCallActivity$ActionModeCallback;,
        Lcom/android/phone/ims/IMSConferenceCallActivity$HolderCtl;,
        Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantHolder;,
        Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter;
    }
.end annotation


# static fields
.field private static final CALL_LOG_PROJECTION:[Ljava/lang/String;

.field private static activity:Lcom/android/phone/ims/IMSConferenceCallActivity;

.field public static bIsSameUser:Z

.field private static mDeleteList:Landroid/widget/ListView;

.field private static mParticipantsList:Landroid/widget/ListView;

.field private static mToastObj:Landroid/widget/Toast;


# instance fields
.field private final ENABLE_TOAST:I

.field private final LOG_TAG:Ljava/lang/String;

.field private final PHONE_NUMBER:Ljava/lang/String;

.field private final REQUEST_CALLERS:I

.field private final REQUEST_PHONE_MULTI:I

.field private final SELECTED_USERS:Ljava/lang/String;

.field private bToastShowInProgress:Z

.field private forcefinishing:Z

.field private icCM:Lcom/android/phone/ims/IMSConferenceCallMgr;

.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field private intent:Landroid/content/Intent;

.field private mActionMode:Landroid/view/ActionMode;

.field private mActionbarTitle:Landroid/widget/TextView;

.field private mAddUser:Z

.field private mBeforeText:Ljava/lang/String;

.field private mButton_Send:Landroid/widget/Button;

.field private mCheckedItemPositions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mContactButton:Landroid/widget/ImageButton;

.field private mDeleteOption:Landroid/view/MenuItem;

.field private mDisableCallers:Z

.field private mEnableCheckedView:Z

.field private mGenericErrorDialog:Landroid/app/AlertDialog;

.field private mHandler:Landroid/os/Handler;

.field private mHolderCtl:Lcom/android/phone/ims/IMSConferenceCallActivity$HolderCtl;

.field private mIsConfTypeVoice:Z

.field private mIsForegroundActivity:Z

.field private mIsSelectAllmode:Z

.field private mLayoutDeleteMode:Landroid/view/View;

.field private mLayoutParticipantsMode:Landroid/view/View;

.field private mLongClickActionMode:Z

.field private mModeCallback:Lcom/android/phone/ims/IMSConferenceCallActivity$ActionModeCallback;

.field private mOutUser:Z

.field private mParticipantsAdapter:Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter;

.field private mPlusButton:Landroid/widget/ImageButton;

.field private mPreviousCheckedNumber:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviousDeletableCount:I

.field private mPreviousState:I

.field private mRecipientsText:Landroid/widget/AutoCompleteTextView;

.field private mScreenState:I

.field private mSelectAllCheck:Landroid/view/View;

.field private mSelectAllContainer:Landroid/view/View;

.field private mSelectedNumber:Ljava/lang/String;

.field private mSkipClickSound:Z

.field private mSubjectView:Landroid/view/View;

.field private sTitleVal:Ljava/lang/String;

.field textwatcher:Landroid/text/TextWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x0

    sput-object v0, Lcom/android/phone/ims/IMSConferenceCallActivity;->activity:Lcom/android/phone/ims/IMSConferenceCallActivity;

    sput-object v0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mToastObj:Landroid/widget/Toast;

    sput-boolean v2, Lcom/android/phone/ims/IMSConferenceCallActivity;->bIsSameUser:Z

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "number"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/ims/IMSConferenceCallActivity;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    const/16 v0, 0x67

    iput v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->ENABLE_TOAST:I

    iput-boolean v2, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->bToastShowInProgress:Z

    const-string v0, "[IMSConferenceCallActivity]"

    iput-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->LOG_TAG:Ljava/lang/String;

    iput v3, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->REQUEST_CALLERS:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->REQUEST_PHONE_MULTI:I

    iput-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mButton_Send:Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->sTitleVal:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mSubjectView:Landroid/view/View;

    iput-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    iput-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mContactButton:Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mPlusButton:Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mDeleteOption:Landroid/view/MenuItem;

    iput-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->intent:Landroid/content/Intent;

    iput-boolean v2, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mAddUser:Z

    iput-boolean v2, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mOutUser:Z

    iput-boolean v3, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mDisableCallers:Z

    const-string v0, "SELECTED_USERS"

    iput-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->SELECTED_USERS:Ljava/lang/String;

    const-string v0, "PHONE_NUMBER_FROM_DIALER"

    iput-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->PHONE_NUMBER:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mGenericErrorDialog:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->icCM:Lcom/android/phone/ims/IMSConferenceCallMgr;

    iput-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mBeforeText:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mIsForegroundActivity:Z

    iput-boolean v2, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->forcefinishing:Z

    iput-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mParticipantsAdapter:Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter;

    iput-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mHolderCtl:Lcom/android/phone/ims/IMSConferenceCallActivity$HolderCtl;

    iput-boolean v2, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mIsConfTypeVoice:Z

    iput v2, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mScreenState:I

    iput v2, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mPreviousState:I

    iput-boolean v2, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mLongClickActionMode:Z

    iput-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mModeCallback:Lcom/android/phone/ims/IMSConferenceCallActivity$ActionModeCallback;

    iput-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mSelectedNumber:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mActionMode:Landroid/view/ActionMode;

    iput-boolean v2, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mIsSelectAllmode:Z

    iput-boolean v2, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mEnableCheckedView:Z

    iput v2, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mPreviousDeletableCount:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mPreviousCheckedNumber:Ljava/util/ArrayList;

    iput-boolean v2, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mSkipClickSound:Z

    new-instance v0, Lcom/android/phone/ims/IMSConferenceCallActivity$1;

    invoke-direct {v0, p0}, Lcom/android/phone/ims/IMSConferenceCallActivity$1;-><init>(Lcom/android/phone/ims/IMSConferenceCallActivity;)V

    iput-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/ims/IMSConferenceCallActivity$5;

    invoke-direct {v0, p0}, Lcom/android/phone/ims/IMSConferenceCallActivity$5;-><init>(Lcom/android/phone/ims/IMSConferenceCallActivity;)V

    iput-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->textwatcher:Landroid/text/TextWatcher;

    return-void
.end method

.method private InitiateConfCall()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->InitiateConfCall(Ljava/lang/String;)V

    return-void
.end method

.method private InitiateConfCall(Ljava/lang/String;)V
    .locals 9

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    const-string v7, "[InitiateConfCall] enter"

    invoke-direct {p0, v7}, Lcom/android/phone/ims/IMSConferenceCallActivity;->log(Ljava/lang/String;)V

    const-string v7, "out_participant_conference"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mOutUser:Z

    if-eqz v7, :cond_0

    const-string v7, "[InitiateConfCall] Do not prepareDial when out USER"

    invoke-direct {p0, v7}, Lcom/android/phone/ims/IMSConferenceCallActivity;->log(Ljava/lang/String;)V

    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[InitiateConfCall] number : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/phone/ims/IMSConferenceCallActivity;->englog(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mOutUser:Z

    if-eqz v7, :cond_3

    const-string v7, "out_participant_conference"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-boolean v7, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mIsConfTypeVoice:Z

    if-nez v7, :cond_2

    :goto_1
    invoke-static {p1, v5}, Lcom/android/phone/ims/IMSConferenceCallUtils;->outUserFromConfCall(Ljava/lang/String;Z)V

    iput-boolean v6, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mOutUser:Z

    :goto_2
    invoke-virtual {p0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->finish()V

    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-boolean v7, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mAddUser:Z

    iget-object v8, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->icCM:Lcom/android/phone/ims/IMSConferenceCallMgr;

    invoke-virtual {v8}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getDialedParticipantNumberList()Ljava/util/ArrayList;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/phone/ims/IMSConferenceCallUtils;->makeNumber(ZLjava/util/ArrayList;)Ljava/lang/String;

    move-result-object p1

    iget-object v7, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->icCM:Lcom/android/phone/ims/IMSConferenceCallMgr;

    iget-object v8, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->icCM:Lcom/android/phone/ims/IMSConferenceCallMgr;

    invoke-virtual {v8}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getConferenceCallConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/phone/ims/IMSConferenceCallMgr;->prepareDial(Lcom/android/internal/telephony/Connection;)V

    goto :goto_0

    :cond_1
    iget-object v7, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->icCM:Lcom/android/phone/ims/IMSConferenceCallMgr;

    iget-object v8, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->icCM:Lcom/android/phone/ims/IMSConferenceCallMgr;

    invoke-virtual {v8}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getConferenceCallConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v8

    invoke-virtual {v7, p1, v8}, Lcom/android/phone/ims/IMSConferenceCallMgr;->prepareDialNumber(Ljava/lang/String;Lcom/android/internal/telephony/Connection;)V

    goto :goto_0

    :cond_2
    move v5, v6

    goto :goto_1

    :cond_3
    iget-boolean v7, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mAddUser:Z

    if-eqz v7, :cond_5

    iget-boolean v7, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mIsConfTypeVoice:Z

    if-nez v7, :cond_4

    :goto_3
    invoke-static {p1, v5}, Lcom/android/phone/ims/IMSConferenceCallUtils;->addUserToConfCall(Ljava/lang/String;Z)V

    goto :goto_2

    :cond_4
    move v5, v6

    goto :goto_3

    :cond_5
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.CALL_PRIVILEGED"

    const-string v7, "tel"

    const/4 v8, 0x0

    invoke-static {v7, p1, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-boolean v6, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mIsConfTypeVoice:Z

    if-nez v6, :cond_6

    const-string v6, "videocall"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_6
    const-string v6, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {v4, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->getCallerListCount()I

    move-result v6

    if-gt v6, v5, :cond_7

    const-string v6, "ims_voice_conference_kddi"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    :cond_7
    const-string v6, "IS_CONF_CALL"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_8
    :goto_4
    const/high16 v6, 0x10000000

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[InitiateConfCall] phoneIsInUse :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->icCM:Lcom/android/phone/ims/IMSConferenceCallMgr;

    invoke-virtual {v7}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getConferenceCallConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/ims/IMSConferenceCallUtils;->phoneIsInUse(Lcom/android/internal/telephony/Connection;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/ims/IMSConferenceCallActivity;->log(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->icCM:Lcom/android/phone/ims/IMSConferenceCallMgr;

    invoke-virtual {v6}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getConferenceCallConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/ims/IMSConferenceCallUtils;->phoneIsInUse(Lcom/android/internal/telephony/Connection;)Z

    move-result v6

    if-eqz v6, :cond_b

    const-string v6, "Active Call running!! Do not allow conference Call as "

    invoke-direct {p0, v6}, Lcom/android/phone/ims/IMSConferenceCallActivity;->log(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mIsConfTypeVoice:Z

    if-eqz v6, :cond_a

    invoke-virtual {p0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0a065d

    invoke-static {v6, v7, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    :cond_9
    iget-boolean v6, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mIsConfTypeVoice:Z

    if-eqz v6, :cond_8

    const v6, 0x7f0a0661

    invoke-virtual {p0, v6}, Lcom/android/phone/ims/IMSConferenceCallActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/ims/IMSConferenceCallActivity;->showToast(Ljava/lang/String;)V

    goto :goto_4

    :cond_a
    invoke-virtual {p0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0a05fd

    invoke-static {v6, v7, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    :cond_b
    const-string v6, "No Active Call running!! Allow Conference Call"

    invoke-direct {p0, v6}, Lcom/android/phone/ims/IMSConferenceCallActivity;->log(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->icCM:Lcom/android/phone/ims/IMSConferenceCallMgr;

    invoke-virtual {v6, v5}, Lcom/android/phone/ims/IMSConferenceCallMgr;->setDirectConfCall(Z)V

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->icCM:Lcom/android/phone/ims/IMSConferenceCallMgr;

    invoke-virtual {v5}, Lcom/android/phone/ims/IMSConferenceCallMgr;->makeNameAndNumberForStartIMSConference()Ljava/lang/String;

    move-result-object v1

    const-string v5, "ims_voice_conference_kddi"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-direct {p0, v1}, Lcom/android/phone/ims/IMSConferenceCallActivity;->getGroupIdForVoiceparty(Ljava/lang/String;)I

    move-result v2

    const-string v5, "GROUP_ID_FOR_LOG"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_c
    :try_start_0
    invoke-virtual {p0, v4}, Lcom/android/phone/ims/IMSConferenceCallActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    const-string v5, "[IMSConferenceCallActivity]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No activity found for intent : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_2
.end method

.method private InitiateConfCallUI()V
    .locals 10

    const v3, 0x102000a

    const/4 v2, 0x0

    const-string v1, "inside InitiateConfCallUI()"

    invoke-direct {p0, v1}, Lcom/android/phone/ims/IMSConferenceCallActivity;->log(Ljava/lang/String;)V

    const v1, 0x7f04004e

    invoke-virtual {p0, v1}, Lcom/android/phone/ims/IMSConferenceCallActivity;->setContentView(I)V

    const v1, 0x7f1000e6

    invoke-virtual {p0, v1}, Lcom/android/phone/ims/IMSConferenceCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mLayoutParticipantsMode:Landroid/view/View;

    const v1, 0x7f1000ef

    invoke-virtual {p0, v1}, Lcom/android/phone/ims/IMSConferenceCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mLayoutDeleteMode:Landroid/view/View;

    iget-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mLayoutParticipantsMode:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    sput-object v1, Lcom/android/phone/ims/IMSConferenceCallActivity;->mParticipantsList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mLayoutDeleteMode:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    sput-object v1, Lcom/android/phone/ims/IMSConferenceCallActivity;->mDeleteList:Landroid/widget/ListView;

    const v1, 0x7f1000ea

    invoke-virtual {p0, v1}, Lcom/android/phone/ims/IMSConferenceCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mContactButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mContactButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v1, "support_second_screen"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mContactButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0d012a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v9, v1

    iget-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mContactButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout$LayoutParams;

    iput v9, v8, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mContactButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v8}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    const v1, 0x7f1000eb

    invoke-virtual {p0, v1}, Lcom/android/phone/ims/IMSConferenceCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mPlusButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mPlusButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f1000ee

    invoke-virtual {p0, v1}, Lcom/android/phone/ims/IMSConferenceCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mButton_Send:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mButton_Send:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->show_SendButton()V

    const v1, 0x7f1000e9

    invoke-virtual {p0, v1}, Lcom/android/phone/ims/IMSConferenceCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/AutoCompleteTextView;

    iput-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1, p0}, Landroid/widget/AutoCompleteTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f1000e8

    invoke-virtual {p0, v1}, Lcom/android/phone/ims/IMSConferenceCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mSubjectView:Landroid/view/View;

    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/phone/ims/IMSConferenceCallActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    iget-object v3, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->textwatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v3}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    const v3, 0x10000006

    invoke-virtual {v1, v3}, Landroid/widget/AutoCompleteTextView;->setImeOptions(I)V

    iget-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    iget-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0060

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/AutoCompleteTextView;->setHintTextColor(I)V

    iget-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0061

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/AutoCompleteTextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d012b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Landroid/widget/AutoCompleteTextView;->setDropDownVerticalOffset(I)V

    new-instance v0, Lcom/android/phone/ims/IMSConferenceCallActivity$2;

    invoke-virtual {p0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/phone/ims/IMSConferenceCallActivity$2;-><init>(Lcom/android/phone/ims/IMSConferenceCallActivity;Landroid/content/ContentResolver;)V

    const/4 v1, -0x1

    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->icCM:Lcom/android/phone/ims/IMSConferenceCallMgr;

    if-eqz v1, :cond_1

    new-instance v1, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter;

    iget-object v3, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->icCM:Lcom/android/phone/ims/IMSConferenceCallMgr;

    invoke-direct {v1, p0, v3}, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter;-><init>(Lcom/android/phone/ims/IMSConferenceCallActivity;Lcom/android/phone/ims/IMSConferenceCallMgr;)V

    iput-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mParticipantsAdapter:Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter;

    sget-object v1, Lcom/android/phone/ims/IMSConferenceCallActivity;->mParticipantsList:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mParticipantsAdapter:Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    sget-object v1, Lcom/android/phone/ims/IMSConferenceCallActivity;->mDeleteList:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mParticipantsAdapter:Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_1
    sget-object v1, Lcom/android/phone/ims/IMSConferenceCallActivity;->mParticipantsList:Landroid/widget/ListView;

    new-instance v3, Lcom/android/phone/ims/IMSConferenceCallActivity$3;

    invoke-direct {v3, p0}, Lcom/android/phone/ims/IMSConferenceCallActivity$3;-><init>(Lcom/android/phone/ims/IMSConferenceCallActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    new-instance v1, Lcom/android/phone/ims/IMSConferenceCallActivity$ActionModeCallback;

    invoke-direct {v1, p0, v2}, Lcom/android/phone/ims/IMSConferenceCallActivity$ActionModeCallback;-><init>(Lcom/android/phone/ims/IMSConferenceCallActivity;Lcom/android/phone/ims/IMSConferenceCallActivity$1;)V

    iput-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mModeCallback:Lcom/android/phone/ims/IMSConferenceCallActivity$ActionModeCallback;

    sget-object v1, Lcom/android/phone/ims/IMSConferenceCallActivity;->mDeleteList:Landroid/widget/ListView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    sget-object v1, Lcom/android/phone/ims/IMSConferenceCallActivity;->mDeleteList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mModeCallback:Lcom/android/phone/ims/IMSConferenceCallActivity$ActionModeCallback;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    iget-boolean v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mIsConfTypeVoice:Z

    if-eqz v1, :cond_3

    const-string v1, "ims_voice_conference_kddi"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f0a07b0

    invoke-virtual {p0, v1}, Lcom/android/phone/ims/IMSConferenceCallActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->sTitleVal:Ljava/lang/String;

    :goto_0
    return-void

    :cond_2
    const v1, 0x7f0a0657

    invoke-virtual {p0, v1}, Lcom/android/phone/ims/IMSConferenceCallActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->sTitleVal:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const v1, 0x7f0a051c

    invoke-virtual {p0, v1}, Lcom/android/phone/ims/IMSConferenceCallActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->sTitleVal:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/android/phone/ims/IMSConferenceCallActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->bToastShowInProgress:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/phone/ims/IMSConferenceCallActivity;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mGenericErrorDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/phone/ims/IMSConferenceCallActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/ims/IMSConferenceCallActivity;->englog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/phone/ims/IMSConferenceCallActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mGenericErrorDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/phone/ims/IMSConferenceCallActivity;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/ims/IMSConferenceCallActivity;->addCallerList(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/phone/ims/IMSConferenceCallActivity;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mContactButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/phone/ims/IMSConferenceCallActivity;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mPlusButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/phone/ims/IMSConferenceCallActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mBeforeText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/phone/ims/IMSConferenceCallActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mBeforeText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/phone/ims/IMSConferenceCallActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/ims/IMSConferenceCallActivity;->showToast(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/phone/ims/IMSConferenceCallActivity;)Landroid/widget/AutoCompleteTextView;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/phone/ims/IMSConferenceCallActivity;)Lcom/android/phone/ims/IMSConferenceCallActivity$HolderCtl;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mHolderCtl:Lcom/android/phone/ims/IMSConferenceCallActivity$HolderCtl;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/phone/ims/IMSConferenceCallActivity;Lcom/android/phone/ims/IMSConferenceCallActivity$HolderCtl;)Lcom/android/phone/ims/IMSConferenceCallActivity$HolderCtl;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mHolderCtl:Lcom/android/phone/ims/IMSConferenceCallActivity$HolderCtl;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/phone/ims/IMSConferenceCallActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mPreviousDeletableCount:I

    return v0
.end method

.method static synthetic access$1802(Lcom/android/phone/ims/IMSConferenceCallActivity;I)I
    .locals 0

    iput p1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mPreviousDeletableCount:I

    return p1
.end method

.method static synthetic access$1900(Lcom/android/phone/ims/IMSConferenceCallActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->setDeleteOption()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/ims/IMSConferenceCallActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/ims/IMSConferenceCallActivity;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/phone/ims/IMSConferenceCallActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->show_SendButton()V

    return-void
.end method

.method static synthetic access$2100()Landroid/widget/ListView;
    .locals 1

    sget-object v0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mDeleteList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/phone/ims/IMSConferenceCallActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mPreviousCheckedNumber:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/phone/ims/IMSConferenceCallActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mEnableCheckedView:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/phone/ims/IMSConferenceCallActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mPreviousState:I

    return v0
.end method

.method static synthetic access$2500(Lcom/android/phone/ims/IMSConferenceCallActivity;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/phone/ims/IMSConferenceCallActivity;->onAdapterButtonClicked(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/phone/ims/IMSConferenceCallActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->deleteConfCallerList()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/phone/ims/IMSConferenceCallActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mCheckedItemPositions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/phone/ims/IMSConferenceCallActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mCheckedItemPositions:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$2802(Lcom/android/phone/ims/IMSConferenceCallActivity;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mActionbarTitle:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/android/phone/ims/IMSConferenceCallActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mSelectAllCheck:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/android/phone/ims/IMSConferenceCallActivity;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mSelectAllCheck:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/phone/ims/IMSConferenceCallActivity;Landroid/database/Cursor;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/ims/IMSConferenceCallActivity;->createCursorAdapter(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/phone/ims/IMSConferenceCallActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mSelectAllContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/android/phone/ims/IMSConferenceCallActivity;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mSelectAllContainer:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/android/phone/ims/IMSConferenceCallActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mSkipClickSound:Z

    return v0
.end method

.method static synthetic access$3102(Lcom/android/phone/ims/IMSConferenceCallActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mSkipClickSound:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/android/phone/ims/IMSConferenceCallActivity;)Landroid/view/ActionMode;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/android/phone/ims/IMSConferenceCallActivity;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/android/phone/ims/IMSConferenceCallActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mIsSelectAllmode:Z

    return v0
.end method

.method static synthetic access$3400(Lcom/android/phone/ims/IMSConferenceCallActivity;)Lcom/android/phone/ims/IMSConferenceCallMgr;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->icCM:Lcom/android/phone/ims/IMSConferenceCallMgr;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/phone/ims/IMSConferenceCallActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mIsForegroundActivity:Z

    return v0
.end method

.method static synthetic access$3600(Lcom/android/phone/ims/IMSConferenceCallActivity;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->imm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/ims/IMSConferenceCallActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mScreenState:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/phone/ims/IMSConferenceCallActivity;)Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mParticipantsAdapter:Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/ims/IMSConferenceCallActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mSelectedNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/phone/ims/IMSConferenceCallActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mSelectedNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/phone/ims/IMSConferenceCallActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mLongClickActionMode:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/phone/ims/IMSConferenceCallActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mLongClickActionMode:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/phone/ims/IMSConferenceCallActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/ims/IMSConferenceCallActivity;->setScreenState(I)V

    return-void
.end method

.method private addCallerList(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->addCallerList(Ljava/util/ArrayList;)V

    return-void
.end method

.method private addCallerList(Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v9, "inside addCallerList()"

    invoke-direct {p0, v9}, Lcom/android/phone/ims/IMSConferenceCallActivity;->log(Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "button_clir_key"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v7, :cond_1

    move v5, v7

    :goto_0
    if-eqz p1, :cond_9

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v4, v9, :cond_9

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/android/phone/ims/IMSConferenceCallUtils;->makeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/android/phone/ims/IMSConferenceCallUtils;->getSIMNumber()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const v9, 0x7f0a0601

    invoke-direct {p0, v9}, Lcom/android/phone/ims/IMSConferenceCallActivity;->showToast(I)V

    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    move v5, v8

    goto :goto_0

    :cond_2
    iget-object v9, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->icCM:Lcom/android/phone/ims/IMSConferenceCallMgr;

    invoke-virtual {v9, v6}, Lcom/android/phone/ims/IMSConferenceCallMgr;->alreadyAddedUser(Ljava/lang/String;)Lcom/android/phone/ims/Participant;

    move-result-object v9

    if-eqz v9, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const-string v9, "ims_voice_conference_kddi"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {p0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v6}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const-string v9, "ims_voice_conference_kddi"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    const-string v9, "184"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "186"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    :cond_5
    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const-string v9, "ims_voice_conference_kddi"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    if-eqz v5, :cond_0

    :cond_7
    iget-object v9, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->icCM:Lcom/android/phone/ims/IMSConferenceCallMgr;

    invoke-virtual {v9}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v9

    invoke-direct {p0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->getMaxUserCount()I

    move-result v10

    if-ge v9, v10, :cond_8

    iget-object v9, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->icCM:Lcom/android/phone/ims/IMSConferenceCallMgr;

    sget-object v10, Lcom/android/phone/ims/Participant$State;->IDLE:Lcom/android/phone/ims/Participant$State;

    const/4 v11, 0x0

    invoke-virtual {v9, v6, v10, v11}, Lcom/android/phone/ims/IMSConferenceCallMgr;->addParticipant(Ljava/lang/String;Lcom/android/phone/ims/Participant$State;Lcom/android/internal/telephony/Connection;)Z

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[addCallerList]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/phone/ims/IMSConferenceCallActivity;->englog(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    const/4 v2, 0x1

    :cond_9
    if-eqz v3, :cond_b

    const v7, 0x7f0a051a

    invoke-direct {p0, v7}, Lcom/android/phone/ims/IMSConferenceCallActivity;->showToast(I)V

    :cond_a
    :goto_3
    invoke-virtual {p0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->updateScreen()V

    return-void

    :cond_b
    if-eqz v2, :cond_c

    const v9, 0x7f0a0518

    new-array v7, v7, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->getMaxUserCount()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v8

    invoke-virtual {p0, v9, v7}, Lcom/android/phone/ims/IMSConferenceCallActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/phone/ims/IMSConferenceCallActivity;->showToast(Ljava/lang/String;)V

    goto :goto_3

    :cond_c
    if-eqz v0, :cond_d

    const v7, 0x7f0a0765

    invoke-direct {p0, v7}, Lcom/android/phone/ims/IMSConferenceCallActivity;->showToast(I)V

    goto :goto_3

    :cond_d
    if-eqz v1, :cond_e

    const v7, 0x7f0a0766

    invoke-direct {p0, v7}, Lcom/android/phone/ims/IMSConferenceCallActivity;->showToast(I)V

    goto :goto_3

    :cond_e
    if-nez v5, :cond_a

    const v7, 0x7f0a0767

    invoke-direct {p0, v7}, Lcom/android/phone/ims/IMSConferenceCallActivity;->showToast(I)V

    goto :goto_3
.end method

.method private createCursorAdapter(Landroid/database/Cursor;)V
    .locals 2

    new-instance v0, Lcom/android/phone/ims/RecipientsAutoCompleteCursorAdapter;

    invoke-direct {v0, p0, p1}, Lcom/android/phone/ims/RecipientsAutoCompleteCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iget-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void
.end method

.method private deleteConfCallerList()V
    .locals 7

    sget-object v5, Lcom/android/phone/ims/IMSConferenceCallActivity;->mDeleteList:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getCount()I

    move-result v2

    const/4 v0, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    sget-object v5, Lcom/android/phone/ims/IMSConferenceCallActivity;->mDeleteList:Landroid/widget/ListView;

    invoke-virtual {v5, v3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v5, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mParticipantsAdapter:Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter;

    invoke-virtual {v5, v3}, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter;->getItem(I)Lcom/android/phone/ims/Participant;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    iget-object v5, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->icCM:Lcom/android/phone/ims/IMSConferenceCallMgr;

    if-eqz v5, :cond_2

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    iget-object v6, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->icCM:Lcom/android/phone/ims/IMSConferenceCallMgr;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/phone/ims/Participant;

    invoke-virtual {v6, v5}, Lcom/android/phone/ims/IMSConferenceCallMgr;->removeParticipant(Lcom/android/phone/ims/Participant;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private englog(Ljava/lang/String;)V
    .locals 2

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "[IMSConferenceCallActivity]"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private getCallerListCount()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->icCM:Lcom/android/phone/ims/IMSConferenceCallMgr;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->icCM:Lcom/android/phone/ims/IMSConferenceCallMgr;

    invoke-virtual {v1}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getCallerListCount] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/ims/IMSConferenceCallActivity;->englog(Ljava/lang/String;)V

    return v0
.end method

.method private getCircledDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 13

    const/4 v3, 0x0

    :try_start_0
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v9, 0x0

    invoke-static {v0, p2, p2, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const v2, -0xffff01

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    new-instance v7, Landroid/graphics/Rect;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    invoke-direct {v7, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v1, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    invoke-virtual {v1, v9, v10, v11, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    new-instance v9, Landroid/graphics/PorterDuffXfermode;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v10}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v1, v0, v7, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    :goto_0
    return-object v4

    :catch_0
    move-exception v5

    const-string v9, "[IMSConferenceCallActivity]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getCircledDrawable: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    goto :goto_0
.end method

.method private getGroupIdForVoiceparty(Ljava/lang/String;)I
    .locals 9

    const/4 v8, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getGroupIdForVoiceparty... first caller number is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/ims/IMSConferenceCallActivity;->log(Ljava/lang/String;)V

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "number"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "duration"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "type"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "sec_groupid"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "content://logs/call"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v6, "add_groupid"

    const-string v7, "true"

    invoke-virtual {v5, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    const-string v4, "sec_groupid"

    invoke-virtual {v2, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getGroupIdForVoiceparty groupId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/ims/IMSConferenceCallActivity;->log(Ljava/lang/String;)V

    return v0
.end method

.method private getInitialListFromIntent(Landroid/content/Intent;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v6, 0x0

    const-string v5, "[getInitialListFromIntent] enter"

    invoke-direct {p0, v5}, Lcom/android/phone/ims/IMSConferenceCallActivity;->log(Ljava/lang/String;)V

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const-string v5, "DEL_USER_FRM_CONF"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v5, "ConferenceFromContacts"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    const-string v5, "ConferenceFromCallLog"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v0, :cond_2

    if-nez v4, :cond_2

    if-nez v3, :cond_2

    const-string v5, "PHONE_NUMBER_FROM_DIALER"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v5, "SELECTED_USERS"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "SELECTED_USERS"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    :cond_3
    const-string v5, "PHONE_NUMBER_FROM_DIALER"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "PHONE_NUMBER_FROM_DIALER"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getInitialListFromIntentbyGroupID(Landroid/content/Intent;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    const-string v1, "[getInitialListFromIntentbyGroupID] enter"

    invoke-direct {p0, v1}, Lcom/android/phone/ims/IMSConferenceCallActivity;->log(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string v1, "[getInitialListFromIntentbyGroupID] intent is null"

    invoke-direct {p0, v1}, Lcom/android/phone/ims/IMSConferenceCallActivity;->log(Ljava/lang/String;)V

    :goto_0
    return-object v2

    :cond_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "group_id"

    const/4 v4, -0x1

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    if-gez v8, :cond_1

    const-string v1, "[getInitialListFromIntentbyGroupID] groupID is wrong"

    invoke-direct {p0, v1}, Lcom/android/phone/ims/IMSConferenceCallActivity;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/phone/ims/IMSConferenceCallActivity$4;

    invoke-virtual {p0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1, v9}, Lcom/android/phone/ims/IMSConferenceCallActivity$4;-><init>(Lcom/android/phone/ims/IMSConferenceCallActivity;Landroid/content/ContentResolver;Ljava/util/ArrayList;)V

    const-string v1, "content://logs/call_group"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p0, v8}, Lcom/android/phone/ims/IMSConferenceCallActivity;->getCallLogGroupEntryUris(I)Ljava/lang/String;

    move-result-object v5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getInitialListFromIntentbyGroupID] "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " selection : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/ims/IMSConferenceCallActivity;->englog(Ljava/lang/String;)V

    const/4 v1, 0x0

    sget-object v4, Lcom/android/phone/ims/IMSConferenceCallActivity;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    const-string v7, "date DESC"

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v9

    goto :goto_0
.end method

.method private getMaxUserCount()I
    .locals 3

    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mIsConfTypeVoice:Z

    if-eqz v1, :cond_0

    const-string v1, "ims_voice_conference_cmcc"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x5

    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMaxUserCount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/ims/IMSConferenceCallActivity;->englog(Ljava/lang/String;)V

    return v0

    :cond_1
    const-string v1, "ims_voice_conference_kddi"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x1d

    goto :goto_0

    :cond_2
    const/16 v0, 0x9

    goto :goto_0
.end method

.method private loadTabs()V
    .locals 5

    new-instance v1, Landroid/content/Intent;

    const-string v2, "intent.action.INTERACTION_TOPMENU"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "additional"

    const-string v3, "phone-multi"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "existingRecipientCount"

    iget-object v3, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->icCM:Lcom/android/phone/ims/IMSConferenceCallMgr;

    invoke-virtual {v3}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "isGroupConference"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-boolean v2, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mIsConfTypeVoice:Z

    if-eqz v2, :cond_2

    const-string v2, "ims_voice_conference_cmcc"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "maxRecipientCount"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_0
    const/16 v2, 0xa

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/android/phone/ims/IMSConferenceCallActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    const-string v2, "ims_voice_conference_kddi"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "maxRecipientCount"

    const/16 v3, 0x1d

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const-string v2, "maxRecipientCount"

    const/16 v3, 0x9

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    const-string v2, "maxRecipientCount"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "[IMSConferenceCallActivity]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ActivityNotFoundException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "[IMSConferenceCallActivity]"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onAdapterButtonClicked(Landroid/view/View;I)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v1, "[IMSConferenceCallActivity]"

    const-string v2, "btn_dial"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->icCM:Lcom/android/phone/ims/IMSConferenceCallMgr;

    invoke-virtual {v1, p2}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getParticipant(I)Lcom/android/phone/ims/Participant;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "[IMSConferenceCallActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onAdapterButtonClicked] btn_dial - position"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "out_participant_conference"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/phone/ims/Participant;->mStatus:Lcom/android/phone/ims/Participant$Status;

    invoke-virtual {v1}, Lcom/android/phone/ims/Participant$Status;->isCONNECTED()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/android/phone/ims/Participant;->mStatus:Lcom/android/phone/ims/Participant$Status;

    invoke-virtual {v1}, Lcom/android/phone/ims/Participant$Status;->isCONNECTING()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string v1, "[IMSConferenceCallActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onAdapterButtonClicked] info.mNumber"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/phone/ims/Participant;->mNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mOutUser:Z

    :cond_2
    iget-object v1, v0, Lcom/android/phone/ims/Participant;->mNumber:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/phone/ims/IMSConferenceCallActivity;->InitiateConfCall(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f1000fd
        :pswitch_0
    .end packed-switch
.end method

.method private setDeleteOption()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mDeleteOption:Landroid/view/MenuItem;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mScreenState:I

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->icCM:Lcom/android/phone/ims/IMSConferenceCallMgr;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->icCM:Lcom/android/phone/ims/IMSConferenceCallMgr;

    invoke-virtual {v1}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getDeletableCount()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mDeleteOption:Landroid/view/MenuItem;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mDeleteOption:Landroid/view/MenuItem;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mDeleteOption:Landroid/view/MenuItem;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private setElapsedTime(Landroid/widget/TextView;J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p2, p3}, Lcom/android/phone/ims/PhoneDateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setScreenState(I)V
    .locals 3

    const/16 v1, 0x8

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mScreenState:I

    iput v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mPreviousState:I

    iput p1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mScreenState:I

    iget v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mScreenState:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mLayoutParticipantsMode:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mLayoutDeleteMode:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const-string v0, "ims_voice_conference_kddi"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->icCM:Lcom/android/phone/ims/IMSConferenceCallMgr;

    invoke-virtual {v0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->isActiveGroupCall()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "setScreenState :: Do not showSoftInput when it is active group call..."

    invoke-direct {p0, v0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->log(Ljava/lang/String;)V

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->updateScreen()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->imm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mLayoutParticipantsMode:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mLayoutDeleteMode:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->imm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_3
    sget-object v0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mDeleteList:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->twShowMultiChoiceMode(Z)V

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mParticipantsAdapter:Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mParticipantsAdapter:Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter;

    invoke-virtual {v0}, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter;->notifyDataSetChanged()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setStatusText(Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantHolder;Lcom/android/phone/ims/Participant;)V
    .locals 4

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mHolderCtl:Lcom/android/phone/ims/IMSConferenceCallActivity$HolderCtl;

    iget-boolean v0, v0, Lcom/android/phone/ims/IMSConferenceCallActivity$HolderCtl;->showConnectionInfo:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p2, Lcom/android/phone/ims/Participant;->mStatus:Lcom/android/phone/ims/Participant$Status;

    invoke-virtual {v0}, Lcom/android/phone/ims/Participant$Status;->isCONNECTED()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantHolder;->mElapsedTimeView:Landroid/widget/TextView;

    iget-wide v2, p2, Lcom/android/phone/ims/Participant;->mElapsedTime:J

    invoke-direct {p0, v0, v2, v3}, Lcom/android/phone/ims/IMSConferenceCallActivity;->setElapsedTime(Landroid/widget/TextView;J)V

    goto :goto_0

    :cond_2
    iget-object v0, p2, Lcom/android/phone/ims/Participant;->mStatus:Lcom/android/phone/ims/Participant$Status;

    invoke-virtual {v0}, Lcom/android/phone/ims/Participant$Status;->isCONNECTING()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantHolder;->mStatusView:Landroid/widget/TextView;

    const v1, 0x7f0a0659

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p2, Lcom/android/phone/ims/Participant;->mStatus:Lcom/android/phone/ims/Participant$Status;

    invoke-virtual {v0}, Lcom/android/phone/ims/Participant$Status;->isDISCONNECTED()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantHolder;->mStatusView:Landroid/widget/TextView;

    const v1, 0x7f0a065a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p2, Lcom/android/phone/ims/Participant;->mStatus:Lcom/android/phone/ims/Participant$Status;

    invoke-virtual {v0}, Lcom/android/phone/ims/Participant$Status;->isFAILED()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantHolder;->mStatusView:Landroid/widget/TextView;

    const v1, 0x7f0a065b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private showEmptyToast(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->bToastShowInProgress:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mToastObj:Landroid/widget/Toast;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mToastObj:Landroid/widget/Toast;

    :goto_1
    sget-object v0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mToastObj:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mToastObj:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    goto :goto_1
.end method

.method private showToast(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->bToastShowInProgress:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mToastObj:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mToastObj:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mToastObj:Landroid/widget/Toast;

    sget-object v0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mToastObj:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->bToastShowInProgress:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mToastObj:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mToastObj:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mToastObj:Landroid/widget/Toast;

    sget-object v0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mToastObj:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private show_SendButton()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mIsConfTypeVoice:Z

    if-eqz v0, :cond_1

    const-string v0, "ims_voice_conference_kddi"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mButton_Send:Landroid/widget/Button;

    const v1, 0x7f0a03e4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->icCM:Lcom/android/phone/ims/IMSConferenceCallMgr;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->icCM:Lcom/android/phone/ims/IMSConferenceCallMgr;

    invoke-virtual {v0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getDeletableCount()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mButton_Send:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mButton_Send:Landroid/widget/Button;

    const v1, 0x7f0a0657

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mButton_Send:Landroid/widget/Button;

    const v1, 0x7f0a051c

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mButton_Send:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1
.end method

.method private updateUIForSelectedCallerCount()V
    .locals 3

    invoke-direct {p0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->getCallerListCount()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->sTitleVal:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->getMaxUserCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/ims/IMSConferenceCallActivity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public deInitializeMgr()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->icCM:Lcom/android/phone/ims/IMSConferenceCallMgr;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->icCM:Lcom/android/phone/ims/IMSConferenceCallMgr;

    invoke-virtual {v0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->stopTimer()V

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->icCM:Lcom/android/phone/ims/IMSConferenceCallMgr;

    invoke-virtual {v0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getAliveStateCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->icCM:Lcom/android/phone/ims/IMSConferenceCallMgr;

    invoke-virtual {v0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->initParticipantsList()V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->icCM:Lcom/android/phone/ims/IMSConferenceCallMgr;

    invoke-virtual {v0, v2}, Lcom/android/phone/ims/IMSConferenceCallMgr;->setActivity(Lcom/android/phone/ims/IMSConferenceCallActivity;)V

    iget-boolean v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mAddUser:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->icCM:Lcom/android/phone/ims/IMSConferenceCallMgr;

    invoke-virtual {v0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->cleanParticipantsList()V

    :cond_1
    iput-object v2, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->icCM:Lcom/android/phone/ims/IMSConferenceCallMgr;

    :cond_2
    iput-object v2, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mParticipantsAdapter:Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter;

    iput-object v2, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mHolderCtl:Lcom/android/phone/ims/IMSConferenceCallActivity$HolderCtl;

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchKeyEvent(event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/ims/IMSConferenceCallActivity;->log(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public getCallLogGroupEntryUris(I)Ljava/lang/String;
    .locals 3

    const/16 v2, 0x22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sec_groupid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getCallLogGroupEntryUris] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/ims/IMSConferenceCallActivity;->englog(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public initializeMgr(Lcom/android/phone/ims/IMSConferenceCallMgr;)V
    .locals 2

    iput-object p1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->icCM:Lcom/android/phone/ims/IMSConferenceCallMgr;

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->icCM:Lcom/android/phone/ims/IMSConferenceCallMgr;

    sget-object v1, Lcom/android/phone/ims/IMSConferenceCallActivity;->activity:Lcom/android/phone/ims/IMSConferenceCallActivity;

    invoke-virtual {v0, v1}, Lcom/android/phone/ims/IMSConferenceCallMgr;->setActivity(Lcom/android/phone/ims/IMSConferenceCallActivity;)V

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->icCM:Lcom/android/phone/ims/IMSConferenceCallMgr;

    invoke-virtual {v0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->resetLastLog()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 12

    const v11, 0x7f0a051b

    const/16 v10, 0x3b

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v8, -0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onActivityResult() : requestCode(REQUEST_CALLERS)="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "); resultCode(RESULT_OK)="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "); data="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/ims/IMSConferenceCallActivity;->log(Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onActivityResult(IILandroid/content/Intent;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-ne p1, v7, :cond_2

    if-ne p2, v8, :cond_2

    iput-boolean v9, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mDisableCallers:Z

    sget-boolean v5, Lcom/android/phone/ims/IMSConferenceCallActivity;->bIsSameUser:Z

    if-eqz v5, :cond_0

    sput-boolean v9, Lcom/android/phone/ims/IMSConferenceCallActivity;->bIsSameUser:Z

    invoke-direct {p0, v11}, Lcom/android/phone/ims/IMSConferenceCallActivity;->showToast(I)V

    :cond_0
    if-eqz p3, :cond_1

    const-string v5, "result"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "result"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "inside onActivityResult() : RESULT_OK ->USER_LIST = size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/ims/IMSConferenceCallActivity;->log(Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/android/phone/ims/IMSConferenceCallActivity;->addCallerList(Ljava/util/ArrayList;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/16 v5, 0xa

    if-ne p1, v5, :cond_7

    if-ne p2, v8, :cond_7

    const-string v5, "[IMSConferenceCallActivity]"

    const-string v6, "onActivityResult(REQUEST_PHONE_MULTI & RESULT_OK)"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_1

    const-string v5, "result"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "result"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_6

    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-eq v5, v8, :cond_3

    invoke-virtual {v1, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    const-string v5, "P"

    const-string v6, ","

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "-"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "W"

    const-string v7, ";"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v5, v6, :cond_6

    invoke-direct {p0, v11}, Lcom/android/phone/ims/IMSConferenceCallActivity;->showToast(I)V

    :cond_6
    iput-boolean v9, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mDisableCallers:Z

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1

    invoke-direct {p0, v4}, Lcom/android/phone/ims/IMSConferenceCallActivity;->addCallerList(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :cond_7
    const-string v5, "onActivityResult() : don\'t doing anything!!!"

    invoke-direct {p0, v5}, Lcom/android/phone/ims/IMSConferenceCallActivity;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9

    const v8, 0x7f0a051c

    const v7, 0x7f0a0519

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const-string v2, "[IMSConferenceCallActivity]"

    const-string v3, "add contact for VT-conference"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->icCM:Lcom/android/phone/ims/IMSConferenceCallMgr;

    invoke-virtual {v2}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v2

    invoke-direct {p0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->getMaxUserCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mIsConfTypeVoice:Z

    if-eqz v2, :cond_1

    new-array v2, v6, [Ljava/lang/Object;

    const v3, 0x7f0a0657

    invoke-virtual {p0, v3}, Lcom/android/phone/ims/IMSConferenceCallActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-direct {p0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->getMaxUserCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v7, v2}, Lcom/android/phone/ims/IMSConferenceCallActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/ims/IMSConferenceCallActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p0, v8}, Lcom/android/phone/ims/IMSConferenceCallActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-direct {p0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->getMaxUserCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v7, v2}, Lcom/android/phone/ims/IMSConferenceCallActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/ims/IMSConferenceCallActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->loadTabs()V

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/ims/IMSConferenceCallUtils;->isDialable(Ljava/lang/String;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->icCM:Lcom/android/phone/ims/IMSConferenceCallMgr;

    invoke-virtual {v2}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v2

    invoke-direct {p0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->getMaxUserCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mIsConfTypeVoice:Z

    if-eqz v2, :cond_3

    new-array v2, v6, [Ljava/lang/Object;

    const v3, 0x7f0a0657

    invoke-virtual {p0, v3}, Lcom/android/phone/ims/IMSConferenceCallActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-direct {p0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->getMaxUserCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v7, v2}, Lcom/android/phone/ims/IMSConferenceCallActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/ims/IMSConferenceCallActivity;->showToast(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p0, v8}, Lcom/android/phone/ims/IMSConferenceCallActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-direct {p0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->getMaxUserCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v7, v2}, Lcom/android/phone/ims/IMSConferenceCallActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/ims/IMSConferenceCallActivity;->showToast(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    if-eqz v1, :cond_5

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    iput-boolean v4, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mDisableCallers:Z

    invoke-direct {p0, v0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->addCallerList(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_5
    const-string v2, "feature_kor"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const v2, 0x7f0a051d

    invoke-direct {p0, v2}, Lcom/android/phone/ims/IMSConferenceCallActivity;->showToast(I)V

    goto/16 :goto_0

    :cond_6
    const v2, 0x7f0a051e

    invoke-direct {p0, v2}, Lcom/android/phone/ims/IMSConferenceCallActivity;->showToast(I)V

    goto/16 :goto_0

    :pswitch_3
    const-string v2, "[IMSConferenceCallActivity]"

    const-string v3, "btnSend"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->icCM:Lcom/android/phone/ims/IMSConferenceCallMgr;

    invoke-virtual {v2}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getDeletableCount()I

    move-result v2

    if-ge v2, v5, :cond_7

    const v2, 0x7f0a051f

    invoke-direct {p0, v2}, Lcom/android/phone/ims/IMSConferenceCallActivity;->showEmptyToast(I)V

    goto/16 :goto_0

    :cond_7
    iget-object v2, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mButton_Send:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->InitiateConfCall()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f1000ea
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onConferenceDisconnect()V
    .locals 3

    const-string v1, "[IMSConferenceCallActivity]"

    const-string v2, "inside IMSConferenceCallActivity Handler : finishing activity..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/phone/ims/IMSConferenceCallActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    sget-object v1, Lcom/android/phone/ims/IMSConferenceCallActivity;->activity:Lcom/android/phone/ims/IMSConferenceCallActivity;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/phone/ims/IMSConferenceCallActivity;->activity:Lcom/android/phone/ims/IMSConferenceCallActivity;

    invoke-virtual {v1}, Lcom/android/phone/ims/IMSConferenceCallActivity;->finish()V

    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v1, "tablet_device"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mSubjectView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0113

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mSubjectView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12

    const/16 v7, 0x400

    const/16 v11, 0x3b

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v6, "tablet_device"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p0, v10}, Lcom/android/phone/ims/IMSConferenceCallActivity;->setRequestedOrientation(I)V

    :cond_0
    const-string v6, "tablet_l_osup"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v7, v7}, Landroid/view/Window;->setFlags(II)V

    :cond_1
    iput-boolean v9, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->forcefinishing:Z

    invoke-virtual {p0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->intent:Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->intent:Landroid/content/Intent;

    const-string v7, "CONF_TYPE_VOICE"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->intent:Landroid/content/Intent;

    const-string v7, "CONF_TYPE_VOICE"

    invoke-virtual {v6, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mIsConfTypeVoice:Z

    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isRoamingArea()Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "inside onCreate() : cannot proceed group videocall. Here is Roaming Area"

    invoke-direct {p0, v6}, Lcom/android/phone/ims/IMSConferenceCallActivity;->log(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mIsConfTypeVoice:Z

    if-eqz v6, :cond_4

    const v6, 0x7f0a065f

    invoke-static {p0, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    :goto_0
    iput-boolean v10, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->forcefinishing:Z

    invoke-virtual {p0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->finish()V

    :cond_3
    :goto_1
    return-void

    :cond_4
    const v6, 0x7f0a0450

    invoke-static {p0, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isSimCardReady()Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "Inside onCreate() : Not on LTE..returning"

    invoke-direct {p0, v6}, Lcom/android/phone/ims/IMSConferenceCallActivity;->log(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mIsConfTypeVoice:Z

    if-eqz v6, :cond_6

    const v6, 0x7f0a065e

    invoke-static {p0, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    :goto_2
    iput-boolean v10, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->forcefinishing:Z

    invoke-virtual {p0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->finish()V

    goto :goto_1

    :cond_6
    const v6, 0x7f0a0517

    invoke-static {p0, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_7
    const-string v6, "feature_lgt"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-static {}, Lcom/android/phone/ims/IMSConferenceCallUtils;->isDeviceOnLTE()Z

    move-result v6

    if-nez v6, :cond_9

    const-string v6, "Inside onCreate() : Not on LTE..returning"

    invoke-direct {p0, v6}, Lcom/android/phone/ims/IMSConferenceCallActivity;->log(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mIsConfTypeVoice:Z

    if-eqz v6, :cond_8

    const v6, 0x7f0a0660

    invoke-static {p0, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    :goto_3
    iput-boolean v10, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->forcefinishing:Z

    invoke-virtual {p0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->finish()V

    goto :goto_1

    :cond_8
    const v6, 0x7f0a0522

    invoke-static {p0, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_3

    :cond_9
    sput-object p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->activity:Lcom/android/phone/ims/IMSConferenceCallActivity;

    invoke-static {}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getInstance()Lcom/android/phone/ims/IMSConferenceCallMgr;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/phone/ims/IMSConferenceCallActivity;->initializeMgr(Lcom/android/phone/ims/IMSConferenceCallMgr;)V

    iget-object v6, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->icCM:Lcom/android/phone/ims/IMSConferenceCallMgr;

    invoke-virtual {v6}, Lcom/android/phone/ims/IMSConferenceCallMgr;->isIncomingCall()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {p0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->finish()V

    goto :goto_1

    :cond_a
    iput-boolean v9, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mAddUser:Z

    const-string v6, "out_participant_conference"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    iput-boolean v9, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mOutUser:Z

    :cond_b
    iget-object v6, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->intent:Landroid/content/Intent;

    const-string v7, "ADD_USER_TO_CONF"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->intent:Landroid/content/Intent;

    const-string v7, "ADD_USER_TO_CONF"

    invoke-virtual {v6, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mAddUser:Z

    :cond_c
    :goto_4
    iget-object v6, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->intent:Landroid/content/Intent;

    const-string v7, "result"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14

    iput-boolean v10, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mIsConfTypeVoice:Z

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "result"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_12

    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_d

    invoke-virtual {v2, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_e

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_e

    const-string v6, "P"

    const-string v7, ","

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "-"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "W"

    const-string v8, ";"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    const/4 v4, 0x0

    goto :goto_5

    :cond_f
    iget-object v6, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->icCM:Lcom/android/phone/ims/IMSConferenceCallMgr;

    invoke-virtual {v6}, Lcom/android/phone/ims/IMSConferenceCallMgr;->isAvailableAddUser()Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->icCM:Lcom/android/phone/ims/IMSConferenceCallMgr;

    invoke-virtual {v6}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getAliveStateCount()I

    move-result v6

    invoke-direct {p0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->getMaxUserCount()I

    move-result v7

    if-ge v6, v7, :cond_10

    iput-boolean v10, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mAddUser:Z

    goto/16 :goto_4

    :cond_10
    const v6, 0x7f0a0518

    new-array v7, v10, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->getMaxUserCount()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {p0, v6, v7}, Lcom/android/phone/ims/IMSConferenceCallActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/ims/IMSConferenceCallActivity;->showToast(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->finish()V

    goto/16 :goto_1

    :cond_11
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-le v6, v7, :cond_12

    const v6, 0x7f0a051b

    invoke-direct {p0, v6}, Lcom/android/phone/ims/IMSConferenceCallActivity;->showToast(I)V

    :cond_12
    iput-boolean v9, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mDisableCallers:Z

    if-eqz v5, :cond_13

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_13

    invoke-direct {p0, v5}, Lcom/android/phone/ims/IMSConferenceCallActivity;->addCallerList(Ljava/util/ArrayList;)V

    :cond_13
    invoke-direct {p0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->InitiateConfCall()V

    :cond_14
    iget-boolean v6, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mAddUser:Z

    iput-boolean v6, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mDisableCallers:Z

    const-string v6, "inside onCreate()"

    invoke-direct {p0, v6}, Lcom/android/phone/ims/IMSConferenceCallActivity;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->InitiateConfCallUI()V

    invoke-direct {p0, v9}, Lcom/android/phone/ims/IMSConferenceCallActivity;->setScreenState(I)V

    iget-object v6, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->icCM:Lcom/android/phone/ims/IMSConferenceCallMgr;

    invoke-virtual {v6}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getConferenceCallConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-boolean v6, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mAddUser:Z

    if-eqz v6, :cond_16

    iget-object v6, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->icCM:Lcom/android/phone/ims/IMSConferenceCallMgr;

    invoke-virtual {v6}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v6

    if-ge v6, v10, :cond_15

    iget-object v6, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->icCM:Lcom/android/phone/ims/IMSConferenceCallMgr;

    invoke-static {v0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->isIMSConfCall(Lcom/android/internal/telephony/Connection;)Z

    move-result v6

    if-nez v6, :cond_15

    iget-object v6, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->icCM:Lcom/android/phone/ims/IMSConferenceCallMgr;

    invoke-virtual {v6}, Lcom/android/phone/ims/IMSConferenceCallMgr;->initParticipantsList()V

    iget-object v6, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->icCM:Lcom/android/phone/ims/IMSConferenceCallMgr;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/android/phone/ims/Participant$State;->WAITING:Lcom/android/phone/ims/Participant$State;

    invoke-virtual {v6, v7, v8, v0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->addParticipant(Ljava/lang/String;Lcom/android/phone/ims/Participant$State;Lcom/android/internal/telephony/Connection;)Z

    :cond_15
    iget-object v6, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->icCM:Lcom/android/phone/ims/IMSConferenceCallMgr;

    invoke-virtual {v6}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getActiveCount()I

    move-result v6

    if-lez v6, :cond_3

    iget-object v6, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->icCM:Lcom/android/phone/ims/IMSConferenceCallMgr;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/phone/ims/IMSConferenceCallMgr;->startTimer(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_1

    :cond_16
    iget-object v6, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->icCM:Lcom/android/phone/ims/IMSConferenceCallMgr;

    invoke-virtual {v6}, Lcom/android/phone/ims/IMSConferenceCallMgr;->initParticipantsList()V

    const-string v6, "ims_voice_conference_kddi"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_17

    iget-object v6, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->intent:Landroid/content/Intent;

    invoke-direct {p0, v6}, Lcom/android/phone/ims/IMSConferenceCallActivity;->getInitialListFromIntentbyGroupID(Landroid/content/Intent;)Ljava/util/ArrayList;

    goto/16 :goto_1

    :cond_17
    iget-object v6, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->intent:Landroid/content/Intent;

    invoke-direct {p0, v6}, Lcom/android/phone/ims/IMSConferenceCallActivity;->getInitialListFromIntent(Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/ims/IMSConferenceCallActivity;->addCallerList(Ljava/util/ArrayList;)V

    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f120003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f100205

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mDeleteOption:Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->setDeleteOption()V

    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    const-string v1, "inside ondestroy()"

    invoke-direct {p0, v1}, Lcom/android/phone/ims/IMSConferenceCallActivity;->log(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->forcefinishing:Z

    if-eqz v1, :cond_0

    const-string v1, "onDestroy - activity was forcely finished"

    invoke-direct {p0, v1}, Lcom/android/phone/ims/IMSConferenceCallActivity;->log(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "tablet_device"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->icCM:Lcom/android/phone/ims/IMSConferenceCallMgr;

    invoke-virtual {v1}, Lcom/android/phone/ims/IMSConferenceCallMgr;->isAvailableAddUser()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->icCM:Lcom/android/phone/ims/IMSConferenceCallMgr;

    invoke-virtual {v1}, Lcom/android/phone/ims/IMSConferenceCallMgr;->isDirectConfCall()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "com.android.incallui"

    const-string v2, "com.android.incallui.SecTabletInCallService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const-string v1, "tablet_l_osup"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "com.android.incallui"

    const-string v2, "com.android.incallui.OverlayPopupService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->stopService(Landroid/content/Intent;)Z

    :cond_2
    :goto_1
    sput-object v3, Lcom/android/phone/ims/IMSConferenceCallActivity;->activity:Lcom/android/phone/ims/IMSConferenceCallActivity;

    invoke-virtual {p0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->deInitializeMgr()V

    iput-object v3, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mButton_Send:Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->sTitleVal:Ljava/lang/String;

    sput-object v3, Lcom/android/phone/ims/IMSConferenceCallActivity;->mToastObj:Landroid/widget/Toast;

    iput-object v3, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->intent:Landroid/content/Intent;

    iput-object v3, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mContactButton:Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mPlusButton:Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    iput-object v3, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mSubjectView:Landroid/view/View;

    sput-object v3, Lcom/android/phone/ims/IMSConferenceCallActivity;->mDeleteList:Landroid/widget/ListView;

    sput-object v3, Lcom/android/phone/ims/IMSConferenceCallActivity;->mParticipantsList:Landroid/widget/ListView;

    iput-object v3, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mLayoutParticipantsMode:Landroid/view/View;

    iput-object v3, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mLayoutDeleteMode:Landroid/view/View;

    goto :goto_0

    :cond_3
    const-string v1, "com.android.incallui"

    const-string v2, "com.android.incallui.SecVideoPopupService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->stopService(Landroid/content/Intent;)Z

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :sswitch_0
    iget v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mScreenState:I

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->finish()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0, v0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->setScreenState(I)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f100205 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    const-string v0, "inside onPause()"

    invoke-direct {p0, v0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->log(Ljava/lang/String;)V

    sget-object v0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mToastObj:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mToastObj:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    iput-boolean v2, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mIsForegroundActivity:Z

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    const-string v0, "onPrepareOptionsMenu"

    invoke-direct {p0, v0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->englog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->setDeleteOption()V

    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    const-string v0, "inside onResume()"

    invoke-direct {p0, v0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mIsForegroundActivity:Z

    invoke-virtual {p0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->updateKeypad()V

    invoke-virtual {p0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->updateScreen()V

    iget v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mScreenState:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mActionMode:Landroid/view/ActionMode;

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onWindowFocusChanged(Z)V

    const-string v0, "ims_voice_conference_kddi"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->icCM:Lcom/android/phone/ims/IMSConferenceCallMgr;

    invoke-virtual {v0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->isActiveGroupCall()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "onWindowFocusChanged :: Do not showSoftInput when it is active group call..."

    invoke-direct {p0, v0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->log(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mScreenState:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0
.end method

.method public selectAllList()V
    .locals 3

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mCheckedItemPositions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mParticipantsAdapter:Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter;

    invoke-virtual {v1}, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mParticipantsAdapter:Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter;

    invoke-virtual {v1}, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mIsSelectAllmode:Z

    :goto_1
    sget-object v1, Lcom/android/phone/ims/IMSConferenceCallActivity;->mDeleteList:Landroid/widget/ListView;

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-boolean v2, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mIsSelectAllmode:Z

    goto :goto_1

    :cond_1
    return-void
.end method

.method public setHolderCtl(Lcom/android/phone/ims/Participant;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mScreenState:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mHolderCtl:Lcom/android/phone/ims/IMSConferenceCallActivity$HolderCtl;

    iput-boolean v1, v0, Lcom/android/phone/ims/IMSConferenceCallActivity$HolderCtl;->showContactImage:Z

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mHolderCtl:Lcom/android/phone/ims/IMSConferenceCallActivity$HolderCtl;

    iput-boolean v2, v0, Lcom/android/phone/ims/IMSConferenceCallActivity$HolderCtl;->showConnectionInfo:Z

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mHolderCtl:Lcom/android/phone/ims/IMSConferenceCallActivity$HolderCtl;

    iput-boolean v2, v0, Lcom/android/phone/ims/IMSConferenceCallActivity$HolderCtl;->showButton:Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mHolderCtl:Lcom/android/phone/ims/IMSConferenceCallActivity$HolderCtl;

    iput-boolean v1, v0, Lcom/android/phone/ims/IMSConferenceCallActivity$HolderCtl;->showContactImage:Z

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mHolderCtl:Lcom/android/phone/ims/IMSConferenceCallActivity$HolderCtl;

    iput-boolean v1, v0, Lcom/android/phone/ims/IMSConferenceCallActivity$HolderCtl;->showConnectionInfo:Z

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mHolderCtl:Lcom/android/phone/ims/IMSConferenceCallActivity$HolderCtl;

    iput-boolean v1, v0, Lcom/android/phone/ims/IMSConferenceCallActivity$HolderCtl;->showButton:Z

    goto :goto_0
.end method

.method public setHolderData(Landroid/view/View;Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantHolder;Lcom/android/phone/ims/Participant;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0, p3}, Lcom/android/phone/ims/IMSConferenceCallActivity;->setHolderCtl(Lcom/android/phone/ims/Participant;)V

    iget-object v2, p2, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantHolder;->mNameView:Landroid/widget/TextView;

    iget-object v3, p3, Lcom/android/phone/ims/Participant;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p2, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantHolder;->mNumberView:Landroid/widget/TextView;

    iget-object v3, p3, Lcom/android/phone/ims/Participant;->mNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p2, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantHolder;->mButton_Dial:Landroid/widget/Button;

    const v3, 0x7f0a0658

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    iget-object v2, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mHolderCtl:Lcom/android/phone/ims/IMSConferenceCallActivity$HolderCtl;

    iget-boolean v2, v2, Lcom/android/phone/ims/IMSConferenceCallActivity$HolderCtl;->showContactImage:Z

    if-eqz v2, :cond_1

    iget-object v2, p3, Lcom/android/phone/ims/Participant;->mPhoto_Uri:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/phone/ims/IMSConferenceCallUtils;->getContactImage(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d011c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020053

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_0
    invoke-direct {p0, v1, v0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->getCircledDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p2, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantHolder;->mContactView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p2, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantHolder;->mContactView:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget v2, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mScreenState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    iget-object v2, p2, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantHolder;->mCheckedView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p2, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantHolder;->mCheckedView:Landroid/view/View;

    check-cast v2, Landroid/widget/Checkable;

    iget-boolean v3, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mEnableCheckedView:Z

    invoke-interface {v2, v3}, Landroid/widget/Checkable;->setChecked(Z)V

    :goto_0
    return-void

    :cond_2
    iget-object v2, p2, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantHolder;->mCheckedView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setParticipantHolder(Landroid/view/View;Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantHolder;)V
    .locals 2

    const/16 v1, 0x8

    const v0, 0x7f1000f3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p2, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantHolder;->mLayoutListItem:Landroid/widget/LinearLayout;

    const v0, 0x7f1000f5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantHolder;->mContactView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mHolderCtl:Lcom/android/phone/ims/IMSConferenceCallActivity$HolderCtl;

    iget-boolean v0, v0, Lcom/android/phone/ims/IMSConferenceCallActivity$HolderCtl;->showContactImage:Z

    if-nez v0, :cond_0

    iget-object v0, p2, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantHolder;->mContactView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    const v0, 0x7f100023

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p2, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantHolder;->mCheckedView:Landroid/view/View;

    const v0, 0x7f1000f9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantHolder;->mNameView:Landroid/widget/TextView;

    const v0, 0x7f1000f7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantHolder;->mNumberView:Landroid/widget/TextView;

    const v0, 0x7f1000fb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantHolder;->mStatusView:Landroid/widget/TextView;

    const v0, 0x7f1000fc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantHolder;->mElapsedTimeView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mHolderCtl:Lcom/android/phone/ims/IMSConferenceCallActivity$HolderCtl;

    iget-boolean v0, v0, Lcom/android/phone/ims/IMSConferenceCallActivity$HolderCtl;->showConnectionInfo:Z

    if-nez v0, :cond_1

    iget-object v0, p2, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantHolder;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p2, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantHolder;->mElapsedTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    const v0, 0x7f1000fd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p2, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantHolder;->mButton_Dial:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mHolderCtl:Lcom/android/phone/ims/IMSConferenceCallActivity$HolderCtl;

    iget-boolean v0, v0, Lcom/android/phone/ims/IMSConferenceCallActivity$HolderCtl;->showButton:Z

    if-nez v0, :cond_2

    iget-object v0, p2, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantHolder;->mButton_Dial:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public showParticipantHolder(Landroid/view/View;Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantHolder;Lcom/android/phone/ims/Participant;)V
    .locals 5

    const v4, 0x7f0a0764

    const/16 v3, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mHolderCtl:Lcom/android/phone/ims/IMSConferenceCallActivity$HolderCtl;

    iget-boolean v0, v0, Lcom/android/phone/ims/IMSConferenceCallActivity$HolderCtl;->showButton:Z

    if-eqz v0, :cond_4

    iget-object v0, p3, Lcom/android/phone/ims/Participant;->mState:Lcom/android/phone/ims/Participant$State;

    invoke-virtual {v0}, Lcom/android/phone/ims/Participant$State;->isWAITING()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mAddUser:Z

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p2, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantHolder;->mButton_Dial:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    invoke-direct {p0, p2, p3}, Lcom/android/phone/ims/IMSConferenceCallActivity;->setStatusText(Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantHolder;Lcom/android/phone/ims/Participant;)V

    iget-object v0, p3, Lcom/android/phone/ims/Participant;->mStatus:Lcom/android/phone/ims/Participant$Status;

    invoke-virtual {v0}, Lcom/android/phone/ims/Participant$Status;->isCONNECTED()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "out_participant_conference"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mHolderCtl:Lcom/android/phone/ims/IMSConferenceCallActivity$HolderCtl;

    iget-boolean v0, v0, Lcom/android/phone/ims/IMSConferenceCallActivity$HolderCtl;->showConnectionInfo:Z

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantHolder;->mElapsedTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    iget-object v0, p2, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantHolder;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p2, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantHolder;->mButton_Dial:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p2, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantHolder;->mButton_Dial:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p2, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantHolder;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p2, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantHolder;->mNumberView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v0, p2, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantHolder;->mButton_Dial:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p2, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantHolder;->mButton_Dial:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_5
    iget-object v0, p3, Lcom/android/phone/ims/Participant;->mStatus:Lcom/android/phone/ims/Participant$Status;

    invoke-virtual {v0}, Lcom/android/phone/ims/Participant$Status;->isCONNECTING()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "out_participant_conference"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mHolderCtl:Lcom/android/phone/ims/IMSConferenceCallActivity$HolderCtl;

    iget-boolean v0, v0, Lcom/android/phone/ims/IMSConferenceCallActivity$HolderCtl;->showConnectionInfo:Z

    if-eqz v0, :cond_6

    iget-object v0, p2, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantHolder;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_6
    iget-object v0, p2, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantHolder;->mElapsedTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p2, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantHolder;->mButton_Dial:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p2, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantHolder;->mButton_Dial:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p2, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantHolder;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p2, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantHolder;->mNumberView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1

    :cond_7
    iget-object v0, p3, Lcom/android/phone/ims/Participant;->mStatus:Lcom/android/phone/ims/Participant$Status;

    invoke-virtual {v0}, Lcom/android/phone/ims/Participant$Status;->isCONNECTED()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mHolderCtl:Lcom/android/phone/ims/IMSConferenceCallActivity$HolderCtl;

    iget-boolean v0, v0, Lcom/android/phone/ims/IMSConferenceCallActivity$HolderCtl;->showConnectionInfo:Z

    if-eqz v0, :cond_8

    iget-object v0, p2, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantHolder;->mElapsedTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_8
    iget-object v0, p2, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantHolder;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p2, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantHolder;->mButton_Dial:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p2, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantHolder;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p2, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantHolder;->mNumberView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1

    :cond_9
    iget-object v0, p3, Lcom/android/phone/ims/Participant;->mStatus:Lcom/android/phone/ims/Participant$Status;

    invoke-virtual {v0}, Lcom/android/phone/ims/Participant$Status;->isWAITING()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p2, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantHolder;->mElapsedTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p2, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantHolder;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p2, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantHolder;->mButton_Dial:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p2, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantHolder;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p2, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantHolder;->mNumberView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_1

    :cond_a
    iget-object v0, p3, Lcom/android/phone/ims/Participant;->mStatus:Lcom/android/phone/ims/Participant$Status;

    invoke-virtual {v0}, Lcom/android/phone/ims/Participant$Status;->isIDLE()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p2, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantHolder;->mElapsedTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p2, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantHolder;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p2, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantHolder;->mButton_Dial:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p2, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantHolder;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p2, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantHolder;->mNumberView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_1

    :cond_b
    iget-object v0, p3, Lcom/android/phone/ims/Participant;->mStatus:Lcom/android/phone/ims/Participant$Status;

    invoke-virtual {v0}, Lcom/android/phone/ims/Participant$Status;->isCONNECTING()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p2, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantHolder;->mButton_Dial:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p2, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantHolder;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p2, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantHolder;->mNumberView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_2
    iget-object v0, p3, Lcom/android/phone/ims/Participant;->mStatus:Lcom/android/phone/ims/Participant$Status;

    invoke-virtual {v0}, Lcom/android/phone/ims/Participant$Status;->isFAILED()Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "out_participant_conference"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p2, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantHolder;->mButton_Dial:Landroid/widget/Button;

    const v1, 0x7f0a0658

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    :cond_c
    iget-object v0, p2, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantHolder;->mElapsedTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mHolderCtl:Lcom/android/phone/ims/IMSConferenceCallActivity$HolderCtl;

    iget-boolean v0, v0, Lcom/android/phone/ims/IMSConferenceCallActivity$HolderCtl;->showConnectionInfo:Z

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantHolder;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_d
    iget-object v0, p2, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantHolder;->mButton_Dial:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p2, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantHolder;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p2, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantHolder;->mNumberView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_2
.end method

.method public storeCheckedItem()V
    .locals 5

    iget v3, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mScreenState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    sget-object v3, Lcom/android/phone/ims/IMSConferenceCallActivity;->mDeleteList:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v1

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mPreviousCheckedNumber:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    sget-object v3, Lcom/android/phone/ims/IMSConferenceCallActivity;->mDeleteList:Landroid/widget/ListView;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mParticipantsAdapter:Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter;

    invoke-virtual {v3, v2}, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter;->getItem(I)Lcom/android/phone/ims/Participant;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mPreviousCheckedNumber:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mParticipantsAdapter:Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter;

    invoke-virtual {v4, v2}, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter;->getItem(I)Lcom/android/phone/ims/Participant;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/ims/Participant;->mNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public unSelectAllList()V
    .locals 1

    sget-object v0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mDeleteList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->clearChoices()V

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mCheckedItemPositions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mParticipantsAdapter:Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter;

    invoke-virtual {v0}, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->updateSelectionMenu()V

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    :cond_0
    return-void
.end method

.method public updateDeletableParticipant()V
    .locals 3

    iget v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mScreenState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->icCM:Lcom/android/phone/ims/IMSConferenceCallMgr;

    invoke-virtual {v1}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getDeletableCount()I

    move-result v0

    iget v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mPreviousDeletableCount:I

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/android/phone/ims/IMSConferenceCallActivity;->mDeleteList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->clearChoices()V

    iget-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mCheckedItemPositions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mParticipantsAdapter:Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mParticipantsAdapter:Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter;

    invoke-virtual {v1}, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public updateKeypad()V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/phone/ims/IMSConferenceCallActivity$6;

    invoke-direct {v1, p0}, Lcom/android/phone/ims/IMSConferenceCallActivity$6;-><init>(Lcom/android/phone/ims/IMSConferenceCallActivity;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public updateScreen()V
    .locals 1

    const-string v0, "updateScreen  enter"

    invoke-direct {p0, v0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->log(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mScreenState:I

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->updateUIForSelectedCallerCount()V

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mParticipantsAdapter:Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mParticipantsAdapter:Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter;

    invoke-virtual {v0}, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public updateSelectionMenu()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mCheckedItemPositions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const v2, 0x7f0a06d8

    invoke-virtual {p0, v2}, Lcom/android/phone/ims/IMSConferenceCallActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mActionbarTitle:Landroid/widget/TextView;

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mSelectAllCheck:Landroid/view/View;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/phone/ims/IMSConferenceCallActivity;->mDeleteList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    sget-object v3, Lcom/android/phone/ims/IMSConferenceCallActivity;->mDeleteList:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v3

    sub-int/2addr v2, v3

    if-ne v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mSelectAllCheck:Landroid/view/View;

    check-cast v2, Landroid/widget/Checkable;

    invoke-interface {v2, v6}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/phone/ims/IMSConferenceCallActivity;->mSelectAllCheck:Landroid/view/View;

    check-cast v2, Landroid/widget/Checkable;

    invoke-interface {v2, v5}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_0
.end method

.class public Lcom/android/incallui/SecEndCallButtonFragment;
.super Lcom/android/incallui/SecCallButtonFragment;
.source "SecEndCallButtonFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/SecCallButtonFragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/view/View$OnLongClickListener;"
    }
.end annotation


# instance fields
.field private SIM_SLOT_1:I

.field private SIM_SLOT_2:I

.field private comp_action:Ljava/lang/String;

.field private isUiEntery:Z

.field private mAction:Ljava/lang/String;

.field protected mAddEventButton:Landroid/widget/Button;

.field protected mCallPlus:Landroid/widget/Button;

.field protected mCreateContactButton:Landroid/widget/Button;

.field protected mEndCallButtonContainer:Landroid/widget/RelativeLayout;

.field protected mEndCallButtonsLayout:Landroid/widget/RelativeLayout;

.field protected mEndCallButtonsMiddle:Landroid/view/ViewGroup;

.field protected mEndCallButtonsMiddleStub:Landroid/view/ViewStub;

.field protected mEndCallButtonsUnder:Landroid/view/ViewGroup;

.field protected mEndCallButtonsUpper:Landroid/view/ViewGroup;

.field private mHandler:Landroid/os/Handler;

.field private mIsEnabled:Z

.field protected mMessageButton:Landroid/widget/Button;

.field protected mUpdateContactButton:Landroid/widget/Button;

.field private mUri:Ljava/lang/String;

.field protected mVideoCallButton:Landroid/widget/Button;

.field protected mVideoCallButtonStub:Landroid/view/ViewStub;

.field protected mViewContactButton:Landroid/widget/Button;

.field protected mVoiceCallButton:Landroid/widget/Button;

.field protected mVoiceCallMultiSimCallBtnStub:Landroid/view/ViewStub;

.field protected mVoiceCallSim1Button:Landroid/widget/Button;

.field protected mVoiceCallSim2Button:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/incallui/SecCallButtonFragment;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/SecEndCallButtonFragment;->comp_action:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/incallui/SecEndCallButtonFragment;->isUiEntery:Z

    iput-object v0, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mAction:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mUri:Ljava/lang/String;

    iput v1, p0, Lcom/android/incallui/SecEndCallButtonFragment;->SIM_SLOT_1:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/incallui/SecEndCallButtonFragment;->SIM_SLOT_2:I

    new-instance v0, Lcom/android/incallui/SecEndCallButtonFragment$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/SecEndCallButtonFragment$1;-><init>(Lcom/android/incallui/SecEndCallButtonFragment;)V

    iput-object v0, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/SecEndCallButtonFragment;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private addEventClicked()V
    .locals 9

    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/incallui/SecEndCallButtonFragment;->setEnabled(Z)V

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7, v8}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SecEndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v5, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    if-nez v5, :cond_1

    iget-object v5, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/SecEndCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d01bf

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "%s"

    invoke-virtual {v6, v7, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3}, Lcom/android/incallui/SecEndCallButtonFragment;->getEmail(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;

    move-result-object v2

    :cond_2
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.INSERT"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "android.intent.category.DEFAULT"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "vnd.android.cursor.item/event"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v6, 0x30000000

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v6, "event_create"

    const/4 v7, 0x1

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v6, "title"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "android.intent.extra.EMAIL"

    invoke-virtual {v4, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addEventClicked title : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addEventClicked email : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/incallui/SecEndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startActivity() failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private getEmail(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;
    .locals 12

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/SecEndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "data1"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "contact_id = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v10, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->personId:J

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " AND "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "mimetype"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "data1"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const/4 v0, -0x1

    if-eq v7, v0, :cond_0

    if-eqz v6, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_1
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    goto :goto_0

    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v8, 0x0

    :cond_3
    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v8, 0x0

    :cond_4
    return-object v6

    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v8, 0x0

    throw v0
.end method

.method private getPaddingSide(I)I
    .locals 3

    invoke-virtual {p0}, Lcom/android/incallui/SecEndCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0173

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecEndCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0174

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecEndCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0172

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    goto :goto_0
.end method

.method private isCapableVideoCall()Z
    .locals 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v3}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return v3

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isAvailablePSVT()Z

    move-result v1

    sget v5, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL_VIDEO:I

    invoke-static {v5}, Lcom/android/incallui/InCallUtils;->checkIMSCapability(I)Z

    move-result v5

    if-nez v5, :cond_1

    const/high16 v5, 0x40000

    invoke-virtual {v0, v5}, Lcom/android/incallui/Call;->can(I)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    move v2, v4

    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isVTReg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/ modifyCall: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v4}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Z)V

    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    :goto_2
    move v3, v4

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    :cond_3
    move v4, v3

    goto :goto_2
.end method

.method private queryForCallPlus()V
    .locals 6

    const/4 v5, 0x1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getDisconnectingCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/incallui/Call;

    move-result-object v1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QueryForCallPlus :call : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QueryForCallPlus msisdn : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "ARG_MSISDN"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "ARG_COLUMNS"

    sget-object v4, Lcom/android/incallui/UIEntryPointsContract;->UI_ENTRY_POINTS_UNANSWERED_COLUMNS:[Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecEndCallButtonFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    invoke-virtual {v3, v5, v0, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/SecEndCallButtonFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/LoaderManager;->destroyLoader(I)V

    goto :goto_0
.end method

.method private updateMultiSimEndCallButtonDrawable()V
    .locals 6

    const/16 v5, 0x14

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/SecEndCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/incallui/SecEndCallButtonFragment;->SIM_SLOT_1:I

    invoke-static {v3, v5}, Lcom/android/incallui/InCallUtilsMultiSIM;->getSimImage(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/SecEndCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/incallui/SecEndCallButtonFragment;->SIM_SLOT_2:I

    invoke-static {v3, v5}, Lcom/android/incallui/InCallUtilsMultiSIM;->getSimImage(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mVoiceCallSim1Button:Landroid/widget/Button;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mVoiceCallSim1Button:Landroid/widget/Button;

    invoke-virtual {v2, v4, v0, v4, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mVoiceCallSim2Button:Landroid/widget/Button;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mVoiceCallSim2Button:Landroid/widget/Button;

    invoke-virtual {v2, v4, v1, v4, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method private updatePaddingInternal(Landroid/view/ViewGroup;)V
    .locals 5

    const/4 v4, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-direct {p0, v0}, Lcom/android/incallui/SecEndCallButtonFragment;->getPaddingSide(I)I

    move-result v2

    invoke-virtual {p1, v2, v4, v2, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_0
.end method

.method private voiceCallClicked(I)V
    .locals 10

    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/incallui/SecEndCallButtonFragment;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/SecEndCallButtonFragment;->getNumber()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v6, "disable_call"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {p1}, Lcom/android/incallui/InCallUtilsMultiSIM;->isBoltSIM(I)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "SecEndCallButtonFragment"

    const-string v7, "Not support call for Bolt network operator"

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecEndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/incallui/SecEndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d0227

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.CALL_PRIVILEGED"

    const-string v7, "tel"

    const/4 v8, 0x0

    invoke-static {v7, v3, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v6, 0x10000000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/incallui/SecEndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "telecom"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telecom/TelecomManager;

    invoke-virtual {v5}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/PhoneAccountHandle;

    const-string v6, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v6, "disable_call"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "simSlot"

    invoke-virtual {v2, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_2
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/incallui/SecEndCallButtonFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/CallList;->clearDisconnectedTimeoutEvent()Z

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startActivity() failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public arrangeLayoutForVideoCall()V
    .locals 5

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isOnehandModeOn()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/secui/SecUiAdapter;->getCurrentOrientation()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    const/4 v2, 0x1

    :goto_1
    iget-object v3, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mEndCallButtonsUpper:Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mEndCallButtonsUpper:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/SecEndCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0184

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :goto_2
    iget-object v3, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mEndCallButtonsUpper:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object v3, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mEndCallButtonsUnder:Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mEndCallButtonsUnder:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/android/incallui/SecEndCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0186

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v3, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mEndCallButtonsUnder:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/SecEndCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0185

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_2
.end method

.method protected changeMessageIcon()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isImsRegistered()Z

    move-result v1

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT:I

    invoke-static {v3}, Lcom/android/incallui/InCallUtils;->checkIMSCapability(I)Z

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isIMSReg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isIMSCapa: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v6}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Z)V

    const-string v3, "tmo_volte_ui"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const-string v3, "changeMessageIcon()"

    invoke-static {p0, v3, v6}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/SecEndCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02017a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mMessageButton:Landroid/widget/Button;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mMessageButton:Landroid/widget/Button;

    invoke-virtual {v3, v5, v2, v5, v5}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method protected changeVideoCallIcon()V
    .locals 6

    const/4 v3, 0x1

    const/4 v5, 0x0

    const-string v2, "common_vt"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/incallui/SecEndCallButtonFragment;->showVideoCall(Z)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "supportIMS_VT: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v3}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/android/incallui/SecEndCallButtonFragment;->isCapableVideoCall()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/SecEndCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02017d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {v2, v5, v1, v5, v5}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/SecEndCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02017c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {v2, v5, v1, v5, v5}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method protected createContactClicked()V
    .locals 11

    const/16 v10, 0x20

    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/incallui/SecEndCallButtonFragment;->setEnabled(Z)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8, v9}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/SecEndCallButtonFragment;->getNumber()Ljava/lang/String;

    move-result-object v6

    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.intent.action.INSERT"

    sget-object v8, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v4, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    if-eqz v6, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getCnapName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_2

    move-object v3, v1

    const-string v5, " "

    :goto_0
    const-string v7, "name"

    invoke-virtual {v4, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "data2"

    invoke-virtual {v4, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "data3"

    invoke-virtual {v4, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "sip"

    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    :goto_1
    const-string v7, "finishActivityOnSaveCompleted"

    const/4 v8, 0x1

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0}, Lcom/android/incallui/SecEndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-void

    :cond_2
    invoke-virtual {v1, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    invoke-virtual {v1, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_3
    const-string v7, "phone"

    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :catch_0
    move-exception v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "startActivity() failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/SecEndCallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method protected getNumber()Ljava/lang/String;
    .locals 7

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecEndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v4, "emergency_find_lost_phone"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->originalNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->originalNumber:Ljava/lang/String;

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    iget-object v4, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->originalNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-boolean v4, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isEmergency:Z

    if-nez v4, :cond_2

    iget-boolean v4, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isVoiceMail:Z

    if-eqz v4, :cond_3

    :cond_2
    const-string v4, "getNumber(), set original number"

    const/4 v5, 0x1

    invoke-static {p0, v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->originalNumber:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v4, "roaming_auto_dial"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isRoamingArea()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "feature_lgt"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "disable_roaming_multi_imsi"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isCallNumberConverted()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getOriginalNumber()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_4
    iget-object v2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/incallui/SecEndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/contacts/common/util/TelephonyManagerUtils;->getVoiceMailAlphaTag(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecEndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/InCallUtils;->getVoiceMailNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method protected getPersonId()J
    .locals 7

    const-wide/16 v2, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecEndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-wide v2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->personId:J

    :cond_0
    return-wide v2
.end method

.method protected hideDelayedEndCallButtonsLayout()V
    .locals 5

    const/16 v4, 0x64

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mEndCallButtonsLayout:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mEndCallButtonsLayout:Landroid/widget/RelativeLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return-void

    :cond_1
    const-string v1, "SecEndCallButtonFragment"

    const-string v2, "hideDelayedEndCallButtonsLayout send SHOW_DELAYED_ENDCALL_BUTTONS"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/SecEndCallButtonFragment;->updateEndCallButtons()V

    goto :goto_0
.end method

.method protected messageClicked()V
    .locals 9

    const/4 v8, 0x0

    const/high16 v7, 0x10000000

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/incallui/SecEndCallButtonFragment;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/SecEndCallButtonFragment;->getNumber()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.SENDTO"

    const-string v5, "smsto"

    const-string v6, ""

    invoke-static {v5, v6, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecEndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/android/incallui/InCallUtils;->isIntentRegistered(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.SENDTO"

    const-string v5, "sms"

    invoke-static {v5, v3, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v4, "support_oem_message_for_kk"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "com.android.mms"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {v2, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0}, Lcom/android/incallui/SecEndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startActivity() failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.sec.android.app.popupuireceiver"

    const-string v5, "com.sec.android.app.popupuireceiver.DisableApp"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "app_package_name"

    const-string v5, "com.android.mms"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_1
    invoke-virtual {p0}, Lcom/android/incallui/SecEndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startActivity() failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/incallui/SecCallButtonFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick(View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sparse-switch v0, :sswitch_data_0

    const-string v1, "onClick: unexpected"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcom/android/incallui/SecEndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.android.incallui"

    const-string v3, "EVCB"

    const-string v4, "EVOC"

    invoke-static {v1, v2, v3, v4}, Lcom/android/incallui/secutils/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecEndCallButtonFragment;->voiceCallClicked()V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/android/incallui/SecEndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.android.incallui"

    const-string v3, "EVCB"

    const-string v4, "EVOC"

    invoke-static {v1, v2, v3, v4}, Lcom/android/incallui/secutils/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/android/incallui/SecEndCallButtonFragment;->SIM_SLOT_1:I

    invoke-direct {p0, v1}, Lcom/android/incallui/SecEndCallButtonFragment;->voiceCallClicked(I)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/android/incallui/SecEndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.android.incallui"

    const-string v3, "EVCB"

    const-string v4, "EVOC"

    invoke-static {v1, v2, v3, v4}, Lcom/android/incallui/secutils/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/android/incallui/SecEndCallButtonFragment;->SIM_SLOT_2:I

    invoke-direct {p0, v1}, Lcom/android/incallui/SecEndCallButtonFragment;->voiceCallClicked(I)V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0}, Lcom/android/incallui/SecEndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.android.incallui"

    const-string v3, "EVCB"

    const-string v4, "EVIC"

    invoke-static {v1, v2, v3, v4}, Lcom/android/incallui/secutils/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "canada_volte_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/incallui/SecEndCallButtonFragment;->isCapableVideoCall()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecEndCallButtonFragment;->videoCallClicked()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/SecEndCallButtonFragment;->voiceCallClicked()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/SecEndCallButtonFragment;->videoCallClicked()V

    goto :goto_0

    :sswitch_4
    invoke-virtual {p0}, Lcom/android/incallui/SecEndCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecEndCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    iget-object v2, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mAction:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mUri:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/incallui/CallButtonPresenter;->CallPlusClicked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_5
    invoke-virtual {p0}, Lcom/android/incallui/SecEndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.android.incallui"

    const-string v3, "EVCB"

    const-string v4, "EMSG"

    invoke-static {v1, v2, v3, v4}, Lcom/android/incallui/secutils/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecEndCallButtonFragment;->messageClicked()V

    goto/16 :goto_0

    :sswitch_6
    invoke-virtual {p0}, Lcom/android/incallui/SecEndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.android.incallui"

    const-string v3, "EVCB"

    const-string v4, "ECCO"

    invoke-static {v1, v2, v3, v4}, Lcom/android/incallui/secutils/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecEndCallButtonFragment;->createContactClicked()V

    goto/16 :goto_0

    :sswitch_7
    invoke-virtual {p0}, Lcom/android/incallui/SecEndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.android.incallui"

    const-string v3, "EVCB"

    const-string v4, "EUCO"

    invoke-static {v1, v2, v3, v4}, Lcom/android/incallui/secutils/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecEndCallButtonFragment;->updateContactClicked()V

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p0}, Lcom/android/incallui/SecEndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.android.incallui"

    const-string v3, "EVCB"

    const-string v4, "EVCO"

    invoke-static {v1, v2, v3, v4}, Lcom/android/incallui/secutils/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecEndCallButtonFragment;->viewContactClicked()V

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p0}, Lcom/android/incallui/SecEndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.android.incallui"

    const-string v3, "EVCB"

    const-string v4, "EAEO"

    invoke-static {v1, v2, v3, v4}, Lcom/android/incallui/secutils/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/incallui/SecEndCallButtonFragment;->addEventClicked()V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f100095 -> :sswitch_1
        0x7f100096 -> :sswitch_2
        0x7f100097 -> :sswitch_3
        0x7f1000d9 -> :sswitch_4
        0x7f1001b0 -> :sswitch_8
        0x7f1001b1 -> :sswitch_6
        0x7f1001b2 -> :sswitch_7
        0x7f1001b4 -> :sswitch_3
        0x7f1001b5 -> :sswitch_0
        0x7f1001b7 -> :sswitch_5
        0x7f1001b8 -> :sswitch_9
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/incallui/SecCallButtonFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "ims_callplus"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/SecEndCallButtonFragment;->queryForCallPlus()V

    :cond_0
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    const-string v0, "ARG_MSISDN"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "ARG_COLUMNS"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    packed-switch p1, :pswitch_data_0

    move-object v0, v4

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/android/incallui/UIEntryPointsContract;->UI_ENTRY_POINTS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v0, Landroid/content/CursorLoader;

    invoke-virtual {p0}, Lcom/android/incallui/SecEndCallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    const v1, 0x7f040098

    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f040099

    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    :cond_0
    const v1, 0x7f1001ae

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mEndCallButtonsLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f1001af

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mEndCallButtonsUpper:Landroid/view/ViewGroup;

    const v1, 0x7f1001b3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mEndCallButtonsUnder:Landroid/view/ViewGroup;

    const v1, 0x7f1001b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mVoiceCallButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const v1, 0x7f1001b4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f1001b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mMessageButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mMessageButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v1, "ims_callplus"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f1001b9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iput-object v1, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mEndCallButtonsMiddleStub:Landroid/view/ViewStub;

    iget-object v1, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mEndCallButtonsMiddleStub:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v1, 0x7f1001bb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mEndCallButtonsMiddle:Landroid/view/ViewGroup;

    const v1, 0x7f1000d9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mCallPlus:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mCallPlus:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const-string v1, "change_order_of_endcall_buttons"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    :cond_2
    const v1, 0x7f1001b6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iput-object v1, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mVideoCallButtonStub:Landroid/view/ViewStub;

    iget-object v1, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mVideoCallButtonStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mVideoCallButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mVideoCallButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v1, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    const v1, 0x7f100097

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_3
    const v1, 0x7f1001b1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mCreateContactButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mCreateContactButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f1001b2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mUpdateContactButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mUpdateContactButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f1001b0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mViewContactButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mViewContactButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f1001b8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mAddEventButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mAddEventButton:Landroid/widget/Button;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mAddEventButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    const-string v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isRTLMode()Z

    move-result v1

    if-eqz v1, :cond_9

    move v1, v2

    :goto_0
    iput v1, p0, Lcom/android/incallui/SecEndCallButtonFragment;->SIM_SLOT_1:I

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isRTLMode()Z

    move-result v1

    if-eqz v1, :cond_a

    :goto_1
    iput v3, p0, Lcom/android/incallui/SecEndCallButtonFragment;->SIM_SLOT_2:I

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecEndCallButtonFragment;->updateMultiSimEndCallButton(Landroid/view/View;)V

    :cond_5
    const-string v1, "att_volte_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "tmo_volte_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "mpcs_volte_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "canada_volte_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/SecEndCallButtonFragment;->changeVideoCallIcon()V

    invoke-virtual {p0}, Lcom/android/incallui/SecEndCallButtonFragment;->changeMessageIcon()V

    invoke-virtual {p0}, Lcom/android/incallui/SecEndCallButtonFragment;->updatePadding()V

    :cond_7
    invoke-virtual {p0}, Lcom/android/incallui/SecEndCallButtonFragment;->hideDelayedEndCallButtonsLayout()V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableWhitepages"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/android/incallui/SecEndCallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/whitepages/nameid/NameIDHelper;->isNameIDInstalledAndEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/android/incallui/SecEndCallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/whitepages/nameid/NameIDHelper;->init(Landroid/content/Context;)V

    :cond_8
    return-object v0

    :cond_9
    move v1, v3

    goto :goto_0

    :cond_a
    move v3, v2

    goto :goto_1
.end method

.method public onDestroyView()V
    .locals 2

    const/16 v1, 0x64

    iget-object v0, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    invoke-super {p0}, Lcom/android/incallui/SecCallButtonFragment;->onDestroyView()V

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0, p2}, Lcom/android/incallui/SecEndCallButtonFragment;->updateView(Landroid/database/Cursor;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/SecEndCallButtonFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecEndCallButtonFragment;->updateView(Landroid/database/Cursor;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLongClick(View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v1, 0x0

    return v1

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/incallui/SecEndCallButtonFragment;->voiceCallLongClicked()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f1001b5
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/android/incallui/SecCallButtonFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/incallui/SecCallButtonFragment;->onResume()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mIsEnabled:Z

    iget-object v0, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mVoiceCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mMessageButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mMessageButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mCreateContactButton:Landroid/widget/Button;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mCreateContactButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mUpdateContactButton:Landroid/widget/Button;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mUpdateContactButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mViewContactButton:Landroid/widget/Button;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mViewContactButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mAddEventButton:Landroid/widget/Button;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mAddEventButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_6
    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mVoiceCallSim1Button:Landroid/widget/Button;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mVoiceCallSim1Button:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_7
    iget-object v0, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mVoiceCallSim2Button:Landroid/widget/Button;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mVoiceCallSim2Button:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_8
    return-void
.end method

.method protected showCreateContact(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mCreateContactButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mCreateContactButton:Landroid/widget/Button;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showDelayedEndCallButtonsLayout()V
    .locals 3

    const/16 v2, 0x64

    const-string v0, "SecEndCallButtonFragment"

    const-string v1, "showDelayedEndCallButtonsLayout"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasLiveCall()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SecEndCallButtonFragment"

    const-string v1, "hasLiveCall(), mEndCallButtonsLayout is GONE"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mEndCallButtonsLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "SecEndCallButtonFragment"

    const-string v1, "showDelayedEndCallButtonsLayout remove SHOW_DELAYED_ENDCALL_BUTTONS"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/SecEndCallButtonFragment;->updateEndCallButtons()V

    goto :goto_0
.end method

.method protected showUpdateContact(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mUpdateContactButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mUpdateContactButton:Landroid/widget/Button;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected showVideoCall(Z)V
    .locals 4

    const/16 v2, 0x8

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showVideoCall = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-static {p0, v0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mVideoCallButtonStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mVideoCallButtonStub:Landroid/view/ViewStub;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    if-eqz p1, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method protected showViewContact(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mViewContactButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mViewContactButton:Landroid/widget/Button;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected updateContactClicked()V
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecEndCallButtonFragment;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/SecEndCallButtonFragment;->getNumber()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.INSERT_OR_EDIT"

    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v3, "hidecreatelabel"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz v2, :cond_0

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "sip"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    :goto_0
    const-string v3, "vnd.android.cursor.item/raw_contact"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x30000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0}, Lcom/android/incallui/SecEndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_1
    const-string v3, "phone"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "phone_type"

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "SecEndCallButtonFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startActivity() failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected updateEndCallButtons()V
    .locals 25

    const-string v20, "SecEndCallButtonFragment"

    const-string v21, "updateEndCallButtons()..."

    invoke-static/range {v20 .. v21}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v4

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecEndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v20

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isUltraPowerSavingMode()Z

    move-result v15

    if-eqz v7, :cond_2

    iget-boolean v9, v7, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isEmergency:Z

    iget-boolean v5, v7, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    iget v0, v7, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->presentation:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1

    iget v0, v7, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->presentation:I

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_21

    :cond_1
    const/4 v12, 0x0

    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecEndCallButtonFragment;->mEndCallButtonsLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v20, v0

    if-eqz v20, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecEndCallButtonFragment;->mEndCallButtonsLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v21, v0

    if-eqz v12, :cond_23

    const/16 v20, 0x0

    :goto_2
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v20

    const-string v21, "CscFeature_Contact_EnableWhitepages"

    invoke-virtual/range {v20 .. v21}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecEndCallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/whitepages/nameid/NameIDHelper;->isNameIDInstalledAndEnabled(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_4

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Whitepages Enabled, isNameIDContact : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecEndCallButtonFragment;->getPersonId()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Lcom/whitepages/nameid/NameIDHelper;->isNameIDContact(J)Z

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecEndCallButtonFragment;->getPersonId()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Lcom/whitepages/nameid/NameIDHelper;->isNameIDContact(J)Z

    move-result v20

    if-eqz v20, :cond_4

    const/4 v5, 0x0

    :cond_4
    const-string v20, "ims_callplus"

    invoke-static/range {v20 .. v20}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/incallui/SecEndCallButtonFragment;->isUiEntery:Z

    move/from16 v20, v0

    if-eqz v20, :cond_24

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/incallui/CallList;->isUnansweredCall()Z

    move-result v20

    if-eqz v20, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecEndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    move-object/from16 v20, v0

    if-eqz v20, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecEndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setVisibility(I)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecEndCallButtonFragment;->mCallPlus:Landroid/widget/Button;

    move-object/from16 v20, v0

    if-eqz v20, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecEndCallButtonFragment;->mCallPlus:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setVisibility(I)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecEndCallButtonFragment;->mEndCallButtonsMiddle:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    if-eqz v20, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecEndCallButtonFragment;->mEndCallButtonsMiddle:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_7
    :goto_3
    const-string v20, "support_safetycare"

    invoke-static/range {v20 .. v20}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_8

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isSafetyAssistanceMode()Z

    move-result v13

    :cond_8
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "isEmergency : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "contactExists : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "isNumberExists : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "isSafetyAssistanceMode : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "isUltraPowerSavingMode : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v5, :cond_27

    const/16 v20, 0x1

    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecEndCallButtonFragment;->showCreateContact(Z)V

    if-nez v5, :cond_28

    const/16 v20, 0x1

    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecEndCallButtonFragment;->showUpdateContact(Z)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/incallui/SecEndCallButtonFragment;->showViewContact(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecEndCallButtonFragment;->mAddEventButton:Landroid/widget/Button;

    move-object/from16 v20, v0

    if-eqz v20, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecEndCallButtonFragment;->mAddEventButton:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setVisibility(I)V

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecEndCallButtonFragment;->arrangeLayoutForVideoCall()V

    if-nez v9, :cond_a

    if-nez v13, :cond_a

    if-eqz v15, :cond_29

    :cond_a
    const/4 v8, 0x1

    :goto_6
    const/16 v20, 0x40

    invoke-static/range {v20 .. v20}, Lcom/android/incallui/InCallUtils;->needToDisableForKnox(I)Z

    move-result v20

    or-int v8, v8, v20

    if-eqz v8, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecEndCallButtonFragment;->mCreateContactButton:Landroid/widget/Button;

    move-object/from16 v20, v0

    if-eqz v20, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecEndCallButtonFragment;->mCreateContactButton:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, 0x4

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setVisibility(I)V

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecEndCallButtonFragment;->mUpdateContactButton:Landroid/widget/Button;

    move-object/from16 v20, v0

    if-eqz v20, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecEndCallButtonFragment;->mUpdateContactButton:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, 0x4

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setVisibility(I)V

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecEndCallButtonFragment;->mViewContactButton:Landroid/widget/Button;

    move-object/from16 v20, v0

    if-eqz v20, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecEndCallButtonFragment;->mViewContactButton:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, 0x4

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setVisibility(I)V

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecEndCallButtonFragment;->mAddEventButton:Landroid/widget/Button;

    move-object/from16 v20, v0

    if-eqz v20, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecEndCallButtonFragment;->mAddEventButton:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, 0x4

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setVisibility(I)V

    :cond_e
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOnEnhanced()Z

    move-result v20

    if-eqz v20, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecEndCallButtonFragment;->mAddEventButton:Landroid/widget/Button;

    move-object/from16 v20, v0

    if-eqz v20, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecEndCallButtonFragment;->mAddEventButton:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setVisibility(I)V

    :cond_f
    if-nez v9, :cond_2a

    if-eqz v12, :cond_2a

    const/4 v6, 0x1

    :goto_7
    if-eqz v4, :cond_10

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v20

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/android/incallui/CallList;->isNotUpdatingCall(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_10

    const-string v20, "updateEndCallButtons - disable buttons becauase conference call is under disconnecting"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    :cond_10
    const-string v20, "video_call_not_support"

    invoke-static/range {v20 .. v20}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_11

    const-string v20, "feature_kor"

    invoke-static/range {v20 .. v20}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_11

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecEndCallButtonFragment;->showVideoCall(Z)V

    :cond_11
    const-string v20, "video_call_button_disable"

    invoke-static/range {v20 .. v20}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_12

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecEndCallButtonFragment;->showVideoCall(Z)V

    :cond_12
    const-string v20, "vzw_volte_ui"

    invoke-static/range {v20 .. v20}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_30

    const/high16 v20, 0x40000

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/android/incallui/Call;->can(I)Z

    move-result v17

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isAvailablePSVT()Z

    move-result v16

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->getTtySetting()I

    move-result v20

    if-nez v20, :cond_2b

    const/4 v14, 0x1

    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecEndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/incallui/InCallUtils;->isUltraPowerSavingMode(Landroid/content/Context;)Z

    move-result v20

    if-nez v20, :cond_2c

    const/4 v11, 0x1

    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecEndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/incallui/InCallUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v20

    if-nez v20, :cond_2d

    const/4 v10, 0x1

    :goto_a
    if-eqz v6, :cond_2e

    if-eqz v17, :cond_2e

    if-eqz v16, :cond_2e

    if-eqz v14, :cond_2e

    if-eqz v11, :cond_2e

    if-eqz v10, :cond_2e

    const/16 v19, 0x1

    :goto_b
    if-eqz v19, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecEndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    move-object/from16 v20, v0

    if-eqz v20, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecEndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecEndCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f020180

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {v20 .. v24}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_13
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecEndCallButtonFragment;->showVideoCall(Z)V

    :goto_c
    const-string v20, "showVideoCall - modifyCall : %b, isVTReg : %b, isTtyOff : %b, isNotUPSM : %b, isNotEM : %b"

    const/16 v21, 0x5

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x2

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x3

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x4

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_14
    :goto_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/incallui/SecEndCallButtonFragment;->setEnabled(Z)V

    const/16 v20, 0x80

    invoke-static/range {v20 .. v20}, Lcom/android/incallui/InCallUtils;->needToDisableForKnox(I)Z

    move-result v20

    if-eqz v20, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecEndCallButtonFragment;->mVoiceCallButton:Landroid/widget/Button;

    move-object/from16 v20, v0

    if-eqz v20, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecEndCallButtonFragment;->mVoiceCallButton:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecEndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    move-object/from16 v20, v0

    if-eqz v20, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecEndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecEndCallButtonFragment;->mMessageButton:Landroid/widget/Button;

    move-object/from16 v20, v0

    if-eqz v20, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecEndCallButtonFragment;->mMessageButton:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecEndCallButtonFragment;->mVoiceCallSim1Button:Landroid/widget/Button;

    move-object/from16 v20, v0

    if-eqz v20, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecEndCallButtonFragment;->mVoiceCallSim1Button:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecEndCallButtonFragment;->mVoiceCallSim2Button:Landroid/widget/Button;

    move-object/from16 v20, v0

    if-eqz v20, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecEndCallButtonFragment;->mVoiceCallSim2Button:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_19
    const-string v20, "feature_lgt"

    invoke-static/range {v20 .. v20}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_1a

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isRoamingArea()Z

    move-result v20

    if-eqz v20, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecEndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecEndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecEndCallButtonFragment;->updateVolteEndCallButtonIcon()V

    const-string v20, "emergency_find_lost_phone"

    invoke-static/range {v20 .. v20}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_1f

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecEndCallButtonFragment;->getNumber()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/incallui/InCallUtils;->isFindServiceNumber(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-nez v20, :cond_1b

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isFindService()Ljava/lang/Boolean;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-eqz v20, :cond_1f

    :cond_1b
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecEndCallButtonFragment;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecEndCallButtonFragment;->mCreateContactButton:Landroid/widget/Button;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecEndCallButtonFragment;->mCreateContactButton:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, 0x4

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecEndCallButtonFragment;->mUpdateContactButton:Landroid/widget/Button;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecEndCallButtonFragment;->mUpdateContactButton:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, 0x4

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecEndCallButtonFragment;->mViewContactButton:Landroid/widget/Button;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecEndCallButtonFragment;->mViewContactButton:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, 0x4

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecEndCallButtonFragment;->mAddEventButton:Landroid/widget/Button;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecEndCallButtonFragment;->mAddEventButton:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, 0x4

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1f
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v20

    const-string v21, "CscFeature_Common_Sprint_Vowifi"

    invoke-virtual/range {v20 .. v21}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecEndCallButtonFragment;->mVoiceCallButton:Landroid/widget/Button;

    move-object/from16 v20, v0

    if-eqz v20, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecEndCallButtonFragment;->mVoiceCallButton:Landroid/widget/Button;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecEndCallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/incallui/VoWifiStateTracker;->getInstance(Landroid/content/Context;)Lcom/android/incallui/VoWifiStateTracker;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/incallui/VoWifiStateTracker;->isVoWiFiRegistered()Z

    move-result v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/SecEndCallButtonFragment;->updateVoiceCallButton(Landroid/widget/Button;Z)V

    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecEndCallButtonFragment;->updatePadding()V

    goto/16 :goto_0

    :cond_21
    iget-object v0, v7, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_22

    iget-object v0, v7, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2

    iget-object v0, v7, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    if-nez v20, :cond_2

    :cond_22
    const/4 v12, 0x0

    goto/16 :goto_1

    :cond_23
    const/16 v20, 0x4

    goto/16 :goto_2

    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecEndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    move-object/from16 v20, v0

    if-eqz v20, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecEndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setVisibility(I)V

    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecEndCallButtonFragment;->mCallPlus:Landroid/widget/Button;

    move-object/from16 v20, v0

    if-eqz v20, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecEndCallButtonFragment;->mCallPlus:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setVisibility(I)V

    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecEndCallButtonFragment;->mEndCallButtonsMiddle:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    if-eqz v20, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecEndCallButtonFragment;->mEndCallButtonsMiddle:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_3

    :cond_27
    const/16 v20, 0x0

    goto/16 :goto_4

    :cond_28
    const/16 v20, 0x0

    goto/16 :goto_5

    :cond_29
    const/4 v8, 0x0

    goto/16 :goto_6

    :cond_2a
    const/4 v6, 0x0

    goto/16 :goto_7

    :cond_2b
    const/4 v14, 0x0

    goto/16 :goto_8

    :cond_2c
    const/4 v11, 0x0

    goto/16 :goto_9

    :cond_2d
    const/4 v10, 0x0

    goto/16 :goto_a

    :cond_2e
    const/16 v19, 0x0

    goto/16 :goto_b

    :cond_2f
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecEndCallButtonFragment;->showVideoCall(Z)V

    goto/16 :goto_c

    :cond_30
    const-string v20, "att_volte_ui"

    invoke-static/range {v20 .. v20}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_31

    const-string v20, "tmo_volte_ui"

    invoke-static/range {v20 .. v20}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_31

    const-string v20, "mpcs_volte_ui"

    invoke-static/range {v20 .. v20}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_31

    const-string v20, "canada_volte_ui"

    invoke-static/range {v20 .. v20}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_32

    :cond_31
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecEndCallButtonFragment;->changeVideoCallIcon()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecEndCallButtonFragment;->changeMessageIcon()V

    goto/16 :goto_d

    :cond_32
    const-string v20, "feature_chn"

    invoke-static/range {v20 .. v20}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_33

    const-string v20, "feature_hktw"

    invoke-static/range {v20 .. v20}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_14

    :cond_33
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isAvailablePSVT()Z

    move-result v20

    if-eqz v20, :cond_34

    const/16 v20, 0x1

    :goto_e
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecEndCallButtonFragment;->showVideoCall(Z)V

    goto/16 :goto_d

    :cond_34
    const/16 v20, 0x0

    goto :goto_e
.end method

.method protected updateMultiSimEndCallButton(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/android/incallui/InCallUtilsMultiSIM;->checkMultiSim()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f1001ba

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mVoiceCallMultiSimCallBtnStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mVoiceCallMultiSimCallBtnStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mVoiceCallMultiSimCallBtnStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v0, 0x7f100095

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mVoiceCallSim1Button:Landroid/widget/Button;

    const v0, 0x7f100096

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mVoiceCallSim2Button:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mVoiceCallSim1Button:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mVoiceCallSim1Button:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mVoiceCallSim2Button:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mVoiceCallSim2Button:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/SecEndCallButtonFragment;->updateMultiSimEndCallButtonDrawable()V

    iget-object v0, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mVoiceCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mVoiceCallButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method protected updatePadding()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mEndCallButtonsUpper:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mEndCallButtonsUpper:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/android/incallui/SecEndCallButtonFragment;->updatePaddingInternal(Landroid/view/ViewGroup;)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mEndCallButtonsUnder:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mEndCallButtonsUnder:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/android/incallui/SecEndCallButtonFragment;->updatePaddingInternal(Landroid/view/ViewGroup;)V

    :cond_1
    return-void
.end method

.method public updateView(Landroid/database/Cursor;)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mAction:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mUri:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mAction:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/SecEndCallButtonFragment;->isUiEntery:Z

    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/SecEndCallButtonFragment;->updateEndCallButtons()V

    :cond_0
    return-void

    :cond_1
    iput-boolean v1, p0, Lcom/android/incallui/SecEndCallButtonFragment;->isUiEntery:Z

    goto :goto_0
.end method

.method protected updateVoiceCallButton(Landroid/widget/Button;Z)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecEndCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02033d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v2, v0, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SecEndCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020181

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v2, v0, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected updateVolteEndCallButtonIcon()V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVolteIconPossible()Z

    move-result v0

    const-string v2, "feature_kor"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "common_volte"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isChecked3GHDVoiceForKT()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x0

    const-string v2, "feature_skt"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/SecEndCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02015e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mVoiceCallButton:Landroid/widget/Button;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v2, v4, v1, v4, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mVoiceCallButton:Landroid/widget/Button;

    const v3, 0x7f0d01be

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    const-string v2, "feature_lgt"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/SecEndCallButtonFragment;->mVoiceCallButton:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setAllCaps(Z)V

    :cond_1
    return-void

    :cond_2
    const-string v2, "feature_ktt"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/SecEndCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02015c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_3
    const-string v2, "feature_lgt"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/SecEndCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02015d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/SecEndCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02015a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method protected videoCallClicked()V
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecEndCallButtonFragment;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/SecEndCallButtonFragment;->getNumber()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    const-string v4, "tel"

    const/4 v5, 0x0

    invoke-static {v4, v2, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v3, "videocall"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0}, Lcom/android/incallui/SecEndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v3, "SecEndCallButtonFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startActivity() failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected viewContactClicked()V
    .locals 8

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecEndCallButtonFragment;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/SecEndCallButtonFragment;->getPersonId()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v3, "content://com.android.contacts/contacts/"

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v2, v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v3, 0x30000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0}, Lcom/android/incallui/SecEndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v3, "SecEndCallButtonFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startActivity() failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected voiceCallClicked()V
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecEndCallButtonFragment;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/SecEndCallButtonFragment;->getNumber()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    const-string v4, "tel"

    const/4 v5, 0x0

    invoke-static {v4, v2, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v3, "roaming_auto_dial"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isRoamingArea()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "feature_lgt"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "disable_roaming_multi_imsi"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v4, "RADDialOption"

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isCallNumberConverted()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "korea"

    :goto_0
    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string v3, "feature_multisim"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecEndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/incallui/InCallUtilsMultiSIM;->setAvailablePhoneAccountHandle(Landroid/content/Intent;Landroid/content/Context;)Landroid/content/Intent;

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/incallui/SecEndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    return-void

    :cond_3
    const-string v3, "abroad"

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "SecEndCallButtonFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startActivity() failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public voiceCallLongClicked()V
    .locals 6

    const-string v3, "ims_support_multimedia_caller_id"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isDeviceOnLTE()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isAvailableVoLTE()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecEndCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "emergency_mode"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecEndCallButtonFragment;->getNumber()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.phone"

    const-string v4, "com.android.phone.photoring.PhotoRingScreen"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "dest_number"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/incallui/SecEndCallButtonFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startActivity() failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

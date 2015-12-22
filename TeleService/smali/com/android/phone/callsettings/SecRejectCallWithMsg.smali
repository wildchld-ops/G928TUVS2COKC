.class public Lcom/android/phone/callsettings/SecRejectCallWithMsg;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "SecRejectCallWithMsg.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;
    }
.end annotation


# static fields
.field private static FROM:[Ljava/lang/String;


# instance fields
.field AddButton:Landroid/widget/ImageView;

.field emptyText:Landroid/widget/LinearLayout;

.field private handler:Landroid/os/Handler;

.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field istoastshowing:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContentObserver:Landroid/database/ContentObserver;

.field mCounterText:Landroid/widget/TextView;

.field mCreateEdit:Landroid/widget/EditText;

.field private mEdited:I

.field private mEdittextBlockEnd:I

.field private mEdittextBlockStart:I

.field private mIsForeground:Z

.field protected mIsLandscape:Z

.field mListView:Landroid/widget/ListView;

.field private mRejectMsgAdpater:Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;

.field private mSelectedItem:I

.field private mSelectedItemForEdit:I

.field private mState:I

.field private mTempEditString:Ljava/lang/String;

.field private final mTextViewKeyListener:Landroid/view/View$OnKeyListener;

.field private mUpdateScreen:Z

.field private mUpdated:Z

.field private prevString:Ljava/lang/String;

.field private rejectMsgList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private rejectMsgListID:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "reject_message"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "edit_checked"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "remind_time"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->FROM:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    iput-boolean v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mUpdated:Z

    iput-boolean v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mUpdateScreen:Z

    iput-boolean v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mIsForeground:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->istoastshowing:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->rejectMsgListID:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/phone/callsettings/SecRejectCallWithMsg$1;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg$1;-><init>(Lcom/android/phone/callsettings/SecRejectCallWithMsg;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/callsettings/SecRejectCallWithMsg$2;

    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->handler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/callsettings/SecRejectCallWithMsg$2;-><init>(Lcom/android/phone/callsettings/SecRejectCallWithMsg;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mContentObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/phone/callsettings/SecRejectCallWithMsg$11;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg$11;-><init>(Lcom/android/phone/callsettings/SecRejectCallWithMsg;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mTextViewKeyListener:Landroid/view/View$OnKeyListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/callsettings/SecRejectCallWithMsg;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mIsForeground:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/phone/callsettings/SecRejectCallWithMsg;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mUpdateScreen:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/phone/callsettings/SecRejectCallWithMsg;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->imm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/callsettings/SecRejectCallWithMsg;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->rejectMsgListID:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/callsettings/SecRejectCallWithMsg;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->deleteRejectMessage(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/callsettings/SecRejectCallWithMsg;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->updateRejectMessage()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/callsettings/SecRejectCallWithMsg;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->refreshRejectList()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/phone/callsettings/SecRejectCallWithMsg;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method private addRejectMessage(Ljava/lang/String;I)J
    .locals 8

    const/4 v7, 0x1

    iput v7, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mEdited:I

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "reject_message"

    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "edit_checked"

    iget v6, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mEdited:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "remind_time"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/phone/callsettings/ProviderConstants;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteReadOnlyDatabaseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v2

    :cond_0
    :goto_0
    return-wide v2

    :catch_0
    move-exception v0

    const-string v5, "SQLiteReadOnlyDatabaseException is thrown"

    invoke-direct {p0, v5, v7}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->log(Ljava/lang/String;Z)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v5, "SQLiteException is thrown"

    invoke-direct {p0, v5, v7}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->log(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private checkAlreadyInUse(Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mUpdated:Z

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mSelectedItemForEdit:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mTempEditString:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_1
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_1
.end method

.method private deleteRejectMessage()V
    .locals 5

    :try_start_0
    sget-object v1, Lcom/android/phone/callsettings/ProviderConstants;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/phone/callsettings/ProviderConstants;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "SecRejectCallWithMsg"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception is  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0
.end method

.method private deleteRejectMessage(I)V
    .locals 6

    sget-object v2, Lcom/android/phone/callsettings/ProviderConstants;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    int-to-long v4, p1

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "SecRejectCallWithMsg"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception is  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0
.end method

.method private displayToast(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private getRejectMessage()Landroid/database/Cursor;
    .locals 6

    const/4 v3, 0x0

    const-string v5, "_id desc"

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/callsettings/ProviderConstants;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->FROM:[Ljava/lang/String;

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private initLayout(Landroid/view/View;)V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v2, 0x1

    const v1, 0x7f1001b1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    const v1, 0x7f1001b2

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->emptyText:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getRejectMessage()Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->showRejectMessage(Landroid/database/Cursor;)V

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    iput v2, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mState:I

    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->emptyText:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mState:I

    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setVisibility(I)V

    :goto_0
    new-instance v1, Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;-><init>(Lcom/android/phone/callsettings/SecRejectCallWithMsg;Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mRejectMsgAdpater:Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;

    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mRejectMsgAdpater:Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->emptyText:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "SecRejectCallWithMsg"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method

.method private refreshRejectList()V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getRejectMessage()Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->showRejectMessage(Landroid/database/Cursor;)V

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->emptyText:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mState:I

    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    :goto_0
    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mRejectMsgAdpater:Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;-><init>(Lcom/android/phone/callsettings/SecRejectCallWithMsg;Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mRejectMsgAdpater:Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;

    :cond_1
    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mRejectMsgAdpater:Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->isAvailableAddbutton()V

    :cond_2
    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->emptyText:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setVisibility(I)V

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mState:I

    goto :goto_0
.end method

.method private showRejectMessage(Landroid/database/Cursor;)V
    .locals 13

    const/4 v1, 0x0

    const/4 v10, 0x1

    iput v10, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mEdited:I

    iget-object v10, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    iget-object v10, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->rejectMsgListID:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_0

    :goto_0
    const/4 v10, 0x0

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v10, 0x2

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mEdited:I

    iget v10, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mEdited:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    const/4 v5, 0x1

    :goto_1
    const/4 v6, 0x0

    if-eqz v5, :cond_3

    const/4 v10, 0x1

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v10, "Edited"

    const/4 v11, 0x1

    invoke-direct {p0, v10, v11}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->log(Ljava/lang/String;Z)V

    :goto_2
    const-string v10, "SecRejectCallWithMsg"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "RejectMsg idx"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "ID = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "isChanged "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    const/4 v10, 0x3

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iget-object v10, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v10, v1, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v10, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->rejectMsgListID:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, 0x1

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v1, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-nez v10, :cond_5

    move v1, v4

    :cond_0
    const/4 v10, 0x6

    if-le v1, v10, :cond_1

    invoke-direct {p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->deleteRejectMessage()V

    :cond_1
    return-void

    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    const-wide/16 v10, 0x1

    sub-long v8, v2, v10

    const-string v10, "modify_reject_message_for_kor"

    invoke-static {v10}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    sget-object v10, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->defaultRejectMsgListKor:[I

    long-to-int v11, v8

    aget v0, v10, v11

    :goto_3
    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v10, "SecRejectCallWithMsg"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Not Edited, Use Default valuerejectMessage = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_2

    :cond_4
    sget-object v10, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->defaultRejectMsgList:[I

    long-to-int v11, v8

    aget v0, v10, v11

    goto :goto_3

    :cond_5
    move v1, v4

    goto/16 :goto_0
.end method

.method private updateRejectMessage()V
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v1, :cond_0

    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mState:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current mState = :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->log(Ljava/lang/String;Z)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private updateRejectMessage(Ljava/lang/String;II)V
    .locals 7

    const/4 v6, 0x1

    iput v6, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mEdited:I

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "reject_message"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "edit_checked"

    iget v4, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mEdited:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "remind_time"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :try_start_0
    sget-object v3, Lcom/android/phone/callsettings/ProviderConstants;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    int-to-long v4, p2

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteReadOnlyDatabaseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v3, "SQLiteReadOnlyDatabaseException is thrown"

    invoke-direct {p0, v3, v6}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->log(Ljava/lang/String;Z)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v3, "SQLiteException is thrown"

    invoke-direct {p0, v3, v6}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->log(Ljava/lang/String;Z)V

    goto :goto_0
.end method


# virtual methods
.method public ClickAddButton()V
    .locals 5

    iget-object v2, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const v2, 0x7f0a031c

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->displayToast(Ljava/lang/String;)V

    :goto_0
    iget-object v2, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mUpdated:Z

    invoke-virtual {p0, v1, v0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->saveRejectMessage(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 12

    const/16 v11, 0x46

    const/4 v10, 0x3

    const/4 v7, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v5, "SecRejectCallWithMsg"

    const-string v6, "============== afterTextChanged ============== :"

    invoke-static {v5, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "display_reject_message_limit_for_kor"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    const-string v5, "SecRejectCallWithMsg"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getStringByteSize(text)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getStringByteSize(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0x50

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getStringByteSize(Ljava/lang/String;)I

    move-result v6

    if-ge v5, v6, :cond_1

    const v5, 0x7f0a02ae

    invoke-virtual {p0, v5}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->prevString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->prevString:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setSelection(I)V

    iget-boolean v5, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->istoastshowing:Z

    if-eqz v5, :cond_0

    iput-boolean v8, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->istoastshowing:Z

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->displayToast(Ljava/lang/String;)V

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/android/phone/callsettings/SecRejectCallWithMsg$10;

    invoke-direct {v5, p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg$10;-><init>(Lcom/android/phone/callsettings/SecRejectCallWithMsg;)V

    const-wide/16 v6, 0x7d0

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->prevString:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v5, "dcm_reject_call_msg_limit"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v8}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;Z)[I

    move-result-object v1

    const/4 v5, 0x4

    new-array v2, v5, [I

    fill-array-data v2, :array_0

    const/4 v0, 0x0

    aget v5, v1, v10

    if-ne v5, v10, :cond_4

    invoke-static {v3, v8, v9}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)[I

    move-result-object v2

    aget v5, v2, v7

    aget v6, v2, v9

    add-int/2addr v5, v6

    if-ge v11, v5, :cond_3

    const-string v5, "SecRejectCallWithMsg"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SmsMessage Full Size = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->prevString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->prevString:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setSelection(I)V

    const v5, 0x7f0a02af

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p0, v5, v6}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->displayToast(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iput-object v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->prevString:Ljava/lang/String;

    goto :goto_0

    :cond_4
    invoke-static {v3, v8}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;Z)[I

    move-result-object v2

    const/16 v5, 0xa0

    aget v6, v2, v7

    aget v7, v2, v9

    add-int/2addr v6, v7

    if-ge v5, v6, :cond_5

    const-string v5, "SecRejectCallWithMsg"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SmsMessage Half Size = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->prevString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->prevString:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setSelection(I)V

    const v5, 0x7f0a02af

    new-array v6, v9, [Ljava/lang/Object;

    const/16 v7, 0xa0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p0, v5, v6}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->displayToast(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    iput-object v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->prevString:Ljava/lang/String;

    goto/16 :goto_0

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public getStringByteSize(Ljava/lang/String;)I
    .locals 10

    const/16 v9, 0x7f

    const/4 v6, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v3, v6

    :cond_0
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "phone"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    const/4 v7, 0x5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "45006"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-le v6, v9, :cond_2

    add-int/lit8 v1, v1, 0x2

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    move v3, v1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v2, :cond_5

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-le v6, v9, :cond_6

    :cond_5
    if-ne v0, v2, :cond_7

    move v3, v1

    goto :goto_0

    :cond_6
    const/16 v6, 0x1b

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm(C)I

    move-result v7

    if-eq v6, v7, :cond_5

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    mul-int/lit8 v3, v6, 0x2

    goto :goto_0
.end method

.method public goToEditRejectMsgScreen(I)V
    .locals 6

    iput p1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mSelectedItem:I

    iget v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mSelectedItem:I

    iput v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mSelectedItemForEdit:I

    iget-object v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mTempEditString:Ljava/lang/String;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v0, "SELECTED_MESSAGE"

    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mTempEditString:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "UPDATE_MODE"

    const/4 v1, 0x1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const v5, 0x7f0a02ad

    const-class v0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    return-void
.end method

.method public isAvailableAddbutton()V
    .locals 6

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getRejectMessage()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x6

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->AddButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->AddButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->AddButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setFocusable(Z)V

    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->AddButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->AddButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->AddButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->AddButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setFocusable(Z)V

    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->AddButton:Landroid/widget/ImageView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->AddButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->AddButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->AddButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setFocusable(Z)V

    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->AddButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    const-string v2, "REJECT_MESSAGE_RESULT_Intent"

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->log(Ljava/lang/String;Z)V

    const-string v2, "EDITED_MESSAGE"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "EDITED_REMINDTIME"

    invoke-virtual {p3, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "UPDATED"

    invoke-virtual {p3, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mUpdated:Z

    invoke-virtual {p0, v1, v0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->saveRejectMessage(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const/4 v0, 0x1

    const-string v1, "Configuration"

    const-string v2, "changed "

    invoke-static {v1, v2, v0}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mIsLandscape:Z

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/android/phone/callsettings/ProviderConstants;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mIsLandscape:Z

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    const/4 v8, 0x1

    const/4 v5, 0x0

    const v3, 0x7f0400a9

    invoke-virtual {p1, v3, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f1001ad

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    const v3, 0x7f1001ae

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCounterText:Landroid/widget/TextView;

    const v3, 0x7f10011d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->AddButton:Landroid/widget/ImageView;

    if-eqz p3, :cond_0

    const-string v3, "editString"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mTempEditString:Ljava/lang/String;

    const-string v3, "edittext_block_start"

    invoke-virtual {p3, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mEdittextBlockStart:I

    const-string v3, "edittext_block_end"

    invoke-virtual {p3, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mEdittextBlockEnd:I

    :cond_0
    iget-object v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    const-string v3, "feature_lgt"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    const-string v4, "disableEmoticonInput=true"

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    :cond_1
    iget-object v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->updateTextCounter(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->handler:Landroid/os/Handler;

    new-instance v4, Lcom/android/phone/callsettings/SecRejectCallWithMsg$3;

    invoke-direct {v4, p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg$3;-><init>(Lcom/android/phone/callsettings/SecRejectCallWithMsg;)V

    const-wide/16 v6, 0xc8

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->AddButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setHoverPopupType(I)V

    iget-object v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->AddButton:Landroid/widget/ImageView;

    new-instance v4, Lcom/android/phone/callsettings/SecRejectCallWithMsg$4;

    invoke-direct {v4, p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg$4;-><init>(Lcom/android/phone/callsettings/SecRejectCallWithMsg;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->isAvailableAddbutton()V

    new-instance v0, Lcom/android/phone/callsettings/SecRejectCallWithMsg$5;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg$5;-><init>(Lcom/android/phone/callsettings/SecRejectCallWithMsg;)V

    new-array v1, v8, [Landroid/text/InputFilter;

    const-string v3, "dcm_reject_call_msg_limit"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    aput-object v0, v1, v5

    iget-object v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->prevString:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mTextViewKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    :cond_3
    :goto_0
    const-string v3, "display_reject_message_limit_for_kor"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getActivity()Landroid/app/Activity;

    const-string v3, "input_method"

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    iput-object v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    new-instance v4, Lcom/android/phone/callsettings/SecRejectCallWithMsg$7;

    invoke-direct {v4, p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg$7;-><init>(Lcom/android/phone/callsettings/SecRejectCallWithMsg;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_5
    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->initLayout(Landroid/view/View;)V

    return-object v2

    :cond_6
    new-instance v3, Lcom/android/phone/callsettings/SecRejectCallWithMsg$6;

    const/16 v4, 0xa0

    invoke-direct {v3, p0, v4}, Lcom/android/phone/callsettings/SecRejectCallWithMsg$6;-><init>(Lcom/android/phone/callsettings/SecRejectCallWithMsg;I)V

    aput-object v3, v1, v5

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onDestroy()V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onDestroyView()V

    const-string v0, "SecRejectCallWithMsg"

    const-string v1, "onDestroyView()"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mIsForeground:Z

    const-string v0, "SecRejectCallWithMsg"

    const-string v1, "onPause "

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method

.method public onResume()V
    .locals 6

    const-wide/16 v4, 0xc8

    const/4 v0, 0x1

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    iput-boolean v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mIsForeground:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current mState in onResume = :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->log(Ljava/lang/String;Z)V

    iget v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mState:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v1, v0, :cond_0

    const/4 v0, 0x2

    :cond_0
    iput v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mState:I

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/callsettings/SecRejectCallWithMsg$9;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg$9;-><init>(Lcom/android/phone/callsettings/SecRejectCallWithMsg;)V

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mUpdateScreen:Z

    return-void

    :pswitch_0
    iget-boolean v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mUpdateScreen:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mEdittextBlockStart:I

    iget v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mEdittextBlockEnd:I

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    iget v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mEdittextBlockEnd:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/callsettings/SecRejectCallWithMsg$8;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg$8;-><init>(Lcom/android/phone/callsettings/SecRejectCallWithMsg;)V

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-direct {p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->refreshRejectList()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "editString"

    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mTempEditString:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "edittext_block_start"

    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "edittext_block_end"

    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->isAvailableAddbutton()V

    iget-object v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->updateTextCounter(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public saveRejectMessage(Ljava/lang/String;I)V
    .locals 11

    move-object v4, p1

    const-wide/16 v2, 0x0

    iget-object v6, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    iput v6, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mState:I

    invoke-direct {p0, v4}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->checkAlreadyInUse(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f0a0319

    invoke-virtual {p0, v7}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->displayToast(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    const/4 v6, 0x2

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    const v6, 0x7f0a031c

    invoke-virtual {p0, v6}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->displayToast(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v6, " "

    const-string v7, ""

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "\n"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const v6, 0x7f0a031c

    invoke-virtual {p0, v6}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->displayToast(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget v6, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mSelectedItem:I

    const/4 v7, -0x1

    if-le v6, v7, :cond_6

    iget-boolean v6, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mUpdated:Z

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget v7, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mSelectedItem:I

    if-le v6, v7, :cond_4

    iget-object v6, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    iget v7, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mSelectedItem:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_4
    iget-object v6, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    iget v7, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mSelectedItem:I

    invoke-virtual {v6, v7, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v6, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->rejectMsgListID:Ljava/util/ArrayList;

    iget v7, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mSelectedItem:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {p0, v4, v5, p2}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->updateRejectMessage(Ljava/lang/String;II)V

    const/4 v6, -0x1

    iput v6, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mSelectedItem:I

    :cond_5
    :goto_2
    iget-object v6, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mRejectMsgAdpater:Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;

    invoke-virtual {v6}, Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;->notifyDataSetInvalidated()V

    iget-object v6, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_9

    iget-object v6, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->emptyText:Landroid/widget/LinearLayout;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mListView:Landroid/widget/ListView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setVisibility(I)V

    :goto_3
    const/4 v6, 0x2

    iput v6, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mState:I

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->isAvailableAddbutton()V

    goto/16 :goto_1

    :cond_6
    invoke-direct {p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getRejectMessage()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v6, 0x6

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-le v6, v7, :cond_7

    iget-object v6, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-direct {p0, v4, p2}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->addRejectMessage(Ljava/lang/String;I)J

    move-result-wide v2

    iget-object v6, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->rejectMsgListID:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v6, "RejectCallWithMsg"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Added ID = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    :cond_7
    iget-object v6, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x6

    if-ne v6, v7, :cond_8

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0a0262

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->displayToast(Ljava/lang/String;)V

    const-string v6, "RejectCallWithMsg"

    const-string v7, "max in saveRejectMessage - no add"

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    :cond_8
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    :cond_9
    iget-object v6, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->emptyText:Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mListView:Landroid/widget/ListView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setVisibility(I)V

    goto/16 :goto_3
.end method

.method public updateTextCounter(Ljava/lang/CharSequence;)V
    .locals 9

    const/16 v8, 0xa0

    const/4 v4, 0x3

    const/4 v7, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCounterText:Landroid/widget/TextView;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x0

    const-string v3, "dcm_reject_call_msg_limit"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;Z)[I

    move-result-object v0

    const/4 v3, 0x4

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    aget v3, v0, v4

    if-ne v3, v4, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6, v7}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)[I

    move-result-object v1

    const-string v3, "%d/%d"

    new-array v4, v5, [Ljava/lang/Object;

    aget v5, v1, v5

    rsub-int/lit8 v5, v5, 0x46

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    const/16 v5, 0x46

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    iget-object v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCounterText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;Z)[I

    move-result-object v1

    const-string v3, "%d/%d"

    new-array v4, v5, [Ljava/lang/Object;

    aget v5, v1, v5

    rsub-int v5, v5, 0xa0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    const-string v3, "display_reject_message_limit_for_kor"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "%d/%d"

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getStringByteSize(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    const/16 v5, 0x50

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_4
    const-string v3, "%d/%d"

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->length()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.class public Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "SecAutoRejectVideoCallList.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectItem;,
        Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter;,
        Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$QueryThread;
    }
.end annotation


# static fields
.field private static final CONTACT_IMPORT_INTENT:Landroid/content/Intent;

.field private static final FROM:[Ljava/lang/String;

.field private static final NUM_PROJECTION:[Ljava/lang/String;


# instance fields
.field AddButton:Landroid/widget/ImageView;

.field ContactsButton:Landroid/widget/Button;

.field LogsButton:Landroid/widget/Button;

.field final MATCH_EQUAL:I

.field private final QUERY_COMPLETE:I

.field private autoreject_maxcount:I

.field private contactQueryThread:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$QueryThread;

.field final defaultIndex:I

.field private defaultName:Ljava/lang/String;

.field editBox:Landroid/widget/EditText;

.field private handler:Landroid/os/Handler;

.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field private mAutoRejectAdapter:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter;

.field private mAutoRejectItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectItem;",
            ">;"
        }
    .end annotation
.end field

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContentURI:Landroid/net/Uri;

.field private mFirstVisibleItem:I

.field mHandler:Landroid/os/Handler;

.field private mIsForeground:Z

.field private mIsOutgoing:Z

.field private mListView:Landroid/widget/ListView;

.field private mMatchCriteria:I

.field mToast:Landroid/widget/Toast;

.field private mUpdateScreen:Z

.field private match_MODE:I

.field private previous_NUM:Ljava/lang/String;

.field private previous_match_MODE:I

.field private select_NUM:Ljava/lang/String;

.field private update_ID:I

.field private update_MODE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "reject_number"

    aput-object v1, v0, v4

    const-string v1, "reject_checked"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "reject_match"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->FROM:[Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    sget-object v0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    const-string v1, "vnd.android.cursor.dir/phone_v2"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "display_name"

    aput-object v1, v0, v3

    const-string v1, "data1"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->NUM_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->defaultName:Ljava/lang/String;

    iput v1, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->mFirstVisibleItem:I

    iput-boolean v1, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->mIsOutgoing:Z

    iput-boolean v1, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->mUpdateScreen:Z

    iput-boolean v1, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->mIsForeground:Z

    sget-object v0, Lcom/android/phone/callsettings/ProviderConstants;->AUTOREJECT_VIDEOCALL_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->mContentURI:Landroid/net/Uri;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->mAutoRejectItemList:Ljava/util/ArrayList;

    iput v1, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->MATCH_EQUAL:I

    iput v1, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->defaultIndex:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->QUERY_COMPLETE:I

    new-instance v0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$1;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$1;-><init>(Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$2;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$2;-><init>(Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$3;

    iget-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$3;-><init>(Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;)Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->mAutoRejectAdapter:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->stopContactQuery()V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;I)I
    .locals 0

    iput p1, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->mFirstVisibleItem:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->deleteAutoRejectNumber(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->makeScreen()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->mIsForeground:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->mUpdateScreen:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->mAutoRejectItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->defaultName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->imm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->displayToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900()Landroid/content/Intent;
    .locals 1

    sget-object v0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    return-object v0
.end method

.method private addAutoRejectNumber(Ljava/lang/String;I)J
    .locals 8

    const/4 v7, 0x1

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "reject_number"

    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "reject_checked"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "reject_match"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->mContentURI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    const-wide/16 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    :cond_0
    return-wide v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDiskIOException;->printStackTrace()V

    goto :goto_0
.end method

.method private addUnknownItem()V
    .locals 8

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "unknown_videocall_mode"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const v6, 0x7f0a0085

    const-string v0, "feature_vzw"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v6, 0x7f0a0586

    :cond_0
    iget-object v7, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->mAutoRejectItemList:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectItem;

    invoke-virtual {p0, v6}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectItem;-><init>(Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private checkAlreadyInUse(Ljava/lang/String;)Z
    .locals 10

    const/4 v9, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->getAutoRejectNumber()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v6, "SecAutoRejectVideoCallList"

    const-string v7, "checkAlreadyInUse : cursor is null"

    invoke-static {v6, v7}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    :goto_0
    return v6

    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_1
    move-object v4, p1

    const/4 v6, 0x1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->previous_NUM:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget v6, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->previous_match_MODE:I

    if-ne v6, v3, :cond_4

    :cond_2
    :goto_1
    if-eq v2, v9, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_1

    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    :goto_2
    move v6, v2

    goto :goto_0

    :cond_4
    :try_start_1
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "SecAutoRejectVideoCallList"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkAlreadyInUse : MATCH_EQUAL, rejectNumber : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    const-string v6, "SecAutoRejectVideoCallList"

    const-string v7, "NumberFormatException"

    invoke-static {v6, v7, v1}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    goto :goto_2

    :catchall_0
    move-exception v6

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    throw v6
.end method

.method private deleteAutoRejectNumber(I)V
    .locals 6

    iget-object v2, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->mContentURI:Landroid/net/Uri;

    int-to-long v4, p1

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v2, "SecAutoRejectVideoCallList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RuntimeException is  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0
.end method

.method private displayToast(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method private getAutoRejectNumber()Landroid/database/Cursor;
    .locals 6

    const/4 v3, 0x0

    const-string v5, "_id desc"

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->mContentURI:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->FROM:[Ljava/lang/String;

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private initLayout(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f10002b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$11;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$11;-><init>(Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$12;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$12;-><init>(Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method private isAvaliableNumber(Ljava/lang/String;)Z
    .locals 4

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isReallyDialable(C)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SecAutoRejectVideoCallList"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "SecAutoRejectVideoCallList"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method

.method private makeScreen()V
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x0

    const-string v0, "makeScreen"

    invoke-direct {p0, v0, v12}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->log(Ljava/lang/String;Z)V

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->mAutoRejectItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->addUnknownItem()V

    iput-boolean v11, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->mUpdateScreen:Z

    invoke-direct {p0}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->getAutoRejectNumber()Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AutoRejectNum idx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Number "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "checked ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->log(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->mAutoRejectItemList:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectItem;

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectItem;-><init>(Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->mAutoRejectAdapter:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter;

    if-nez v0, :cond_3

    new-instance v0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->mAutoRejectItemList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v3}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter;-><init>(Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->mAutoRejectAdapter:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter;

    :cond_3
    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->mAutoRejectAdapter:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-direct {p0}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->updateTitleBar()V

    invoke-direct {p0}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->startContactQuery()V

    return-void
.end method

.method private startContactQuery()V
    .locals 4

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->contactQueryThread:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$QueryThread;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$QueryThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$QueryThread;-><init>(Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$1;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->contactQueryThread:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$QueryThread;

    const-string v0, "SecAutoRejectVideoCallList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID of contactQueryThread = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->contactQueryThread:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$QueryThread;

    invoke-virtual {v2}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$QueryThread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->contactQueryThread:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$QueryThread;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$QueryThread;->start()V

    :cond_0
    return-void
.end method

.method private stopContactQuery()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->contactQueryThread:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$QueryThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->contactQueryThread:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$QueryThread;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$QueryThread;->interrupt()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->contactQueryThread:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$QueryThread;

    :cond_0
    return-void
.end method

.method private updateAutoRejectNumber(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;I)V
    .locals 6

    const/4 v3, 0x0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "reject_number"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "reject_checked"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "reject_match"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->mContentURI:Landroid/net/Uri;

    int-to-long v4, p4

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private updateTitleBar()V
    .locals 3

    const v2, 0x7f0a0294

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "call_block_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "separate_call_reject"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0a0434

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const-string v1, "call_block_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0a0432

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public clickSaveBtn()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v0, "SecAutoRejectVideoCallList"

    const-string v1, "clickSaveBtn"

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->editBox:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->checkAlreadyInUse(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->editBox:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0a0319

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->displayToast(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->editBox:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f0a031a

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->displayToast(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->editBox:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->isAvaliableNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const v0, 0x7f0a031b

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->displayToast(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->update_MODE:Z

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->editBox:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->update_ID:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->updateAutoRejectNumber(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;I)V

    :goto_1
    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->editBox:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->makeScreen()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->editBox:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->addAutoRejectNumber(Ljava/lang/String;I)J

    goto :goto_1
.end method

.method public isAvailableAddbutton()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->editBox:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->editBox:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->AddButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->AddButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->AddButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->AddButton:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->AddButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->AddButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->AddButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->AddButton:Landroid/widget/ImageView;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0
.end method

.method isUnknownNumber(Ljava/lang/String;)Z
    .locals 5

    const-string v2, "-1"

    const-string v1, "-2"

    const-string v0, "-3"

    const/4 v3, 0x0

    const-string v4, "-2"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "-3"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "-1"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v3, 0x1

    :cond_1
    return v3
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 10

    const/4 v9, 0x0

    const/4 v0, -0x1

    const/4 v3, 0x0

    const/16 v8, 0x64

    invoke-super {p0, p1, p2, p3}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const-string v7, ""

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$10;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$10;-><init>(Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->editBox:Landroid/widget/EditText;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_1
    :goto_1
    return-void

    :pswitch_0
    if-ne p2, v0, :cond_0

    const-string v0, "SecAutoRejectVideoCallList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LogsPickerActivity.onActivityResult] uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "NUMBER"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->isUnknownNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "SecAutoRejectVideoCallList"

    const-string v1, "unknwon number from log"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v8, :cond_3

    invoke-virtual {v7, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    :cond_3
    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->editBox:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    if-ne p2, v0, :cond_8

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->NUM_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_4
    const-string v0, "SecAutoRejectVideoCallList"

    const-string v1, "onActivityResult: bad contact data, no results found."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v8, :cond_7

    invoke-virtual {v7, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    :cond_7
    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->editBox:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_8
    const-string v0, "SecAutoRejectVideoCallList"

    const-string v1, "onActivityResult: cancelled."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const-string v0, "SecAutoRejectVideoCallList"

    const-string v1, "changed "

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v2, "SecAutoRejectVideoCallList"

    const-string v3, "onCreate "

    invoke-static {v2, v3, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "autoreject_maxcount"

    const/16 v4, 0x64

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->autoreject_maxcount:I

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0277

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->defaultName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "isOutgoing"

    invoke-virtual {v1, v2, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->mIsOutgoing:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getArgument : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->mIsOutgoing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->log(Ljava/lang/String;)V

    :cond_0
    iget-boolean v2, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->mIsOutgoing:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/phone/callsettings/ProviderConstants;->AUTOREJECT_OUTGOINGCALL_CONTENT_URI:Landroid/net/Uri;

    iput-object v2, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->mContentURI:Landroid/net/Uri;

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->mContentURI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_1
    invoke-virtual {p0, v5}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->setHasOptionsMenu(Z)V

    return-void

    :cond_2
    sget-object v2, Lcom/android/phone/callsettings/ProviderConstants;->AUTOREJECT_VIDEOCALL_CONTENT_URI:Landroid/net/Uri;

    iput-object v2, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->mContentURI:Landroid/net/Uri;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const v4, 0x7f0400a2

    invoke-virtual {p1, v4, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->getActivity()Landroid/app/Activity;

    const-string v4, "input_method"

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    iput-object v4, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->imm:Landroid/view/inputmethod/InputMethodManager;

    const v4, 0x7f10003b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->editBox:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->editBox:Landroid/widget/EditText;

    if-nez v4, :cond_0

    const-string v4, "SecAutoRejectVideoCallList"

    const-string v5, "onCreateView() - editBox is null !!"

    invoke-static {v4, v5}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v3

    :cond_0
    iget-object v4, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->editBox:Landroid/widget/EditText;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->editBox:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v4, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->editBox:Landroid/widget/EditText;

    invoke-virtual {v4, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v4, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->editBox:Landroid/widget/EditText;

    new-instance v5, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$4;

    invoke-direct {v5, p0}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$4;-><init>(Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_1
    iget-object v4, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->handler:Landroid/os/Handler;

    new-instance v5, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$5;

    invoke-direct {v5, p0}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$5;-><init>(Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;)V

    const-wide/16 v6, 0xc8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const v4, 0x7f10011d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->AddButton:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->AddButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setHoverPopupType(I)V

    iget-object v4, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->AddButton:Landroid/widget/ImageView;

    new-instance v5, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$6;

    invoke-direct {v5, p0}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$6;-><init>(Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->isAvailableAddbutton()V

    const v4, 0x7f1001c6

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->LogsButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->LogsButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$7;

    invoke-direct {v5, p0}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$7;-><init>(Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f1001c7

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->ContactsButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->ContactsButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$8;

    invoke-direct {v5, p0}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$8;-><init>(Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v4, "UPDATE_MODE"

    invoke-virtual {v0, v4, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->update_MODE:Z

    iget-boolean v4, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->update_MODE:Z

    if-ne v4, v9, :cond_2

    const-string v4, "UPDATE_ID"

    invoke-virtual {v0, v4, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->update_ID:I

    const-string v4, "MATCH_MODE"

    invoke-virtual {v0, v4, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->match_MODE:I

    const-string v4, "SELECT_NUMBER"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->select_NUM:Ljava/lang/String;

    iget v4, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->match_MODE:I

    iput v4, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->mMatchCriteria:I

    iget v4, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->match_MODE:I

    iput v4, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->previous_match_MODE:I

    iget-object v4, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->select_NUM:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->previous_NUM:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->select_NUM:Ljava/lang/String;

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->select_NUM:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->editBox:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->select_NUM:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->editBox:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v4, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->editBox:Landroid/widget/EditText;

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setSelection(I)V

    :cond_2
    const-string v4, "isOutgoing"

    invoke-virtual {v0, v4, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :goto_1
    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->initLayout(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->makeScreen()V

    goto/16 :goto_0

    :cond_3
    iput v8, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->mMatchCriteria:I

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onDestroy()V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onPause()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPause()V

    const-string v0, "SecAutoRejectVideoCallList"

    const-string v1, "onPause "

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->editBox:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iput-boolean v3, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->mIsForeground:Z

    invoke-direct {p0}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->stopContactQuery()V

    return-void
.end method

.method public onResume()V
    .locals 4

    const/4 v2, 0x1

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    const-string v0, "SecAutoRejectVideoCallList"

    const-string v1, "onResume "

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iput-boolean v2, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->mIsForeground:Z

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->editBox:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$9;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$9;-><init>(Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->mUpdateScreen:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->stopContactQuery()V

    invoke-direct {p0}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->makeScreen()V

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->mListView:Landroid/widget/ListView;

    iget v1, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->mFirstVisibleItem:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->updateTitleBar()V

    invoke-direct {p0}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->startContactQuery()V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "SecAutoRejectVideoCallList"

    const-string v1, "onSaveInstanceState "

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->editBox:Landroid/widget/EditText;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->isAvailableAddbutton()V

    goto :goto_0
.end method

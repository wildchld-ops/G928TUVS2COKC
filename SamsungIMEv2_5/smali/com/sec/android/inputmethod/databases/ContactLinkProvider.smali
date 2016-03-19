.class public Lcom/sec/android/inputmethod/databases/ContactLinkProvider;
.super Ljava/lang/Object;
.source "ContactLinkProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/inputmethod/databases/ContactLinkProvider$1;,
        Lcom/sec/android/inputmethod/databases/ContactLinkProvider$QueryThread;,
        Lcom/sec/android/inputmethod/databases/ContactLinkProvider$ContactTimer;,
        Lcom/sec/android/inputmethod/databases/ContactLinkProvider$contactInfoItem;
    }
.end annotation


# static fields
.field private static final CONTACT_INFO_ITEM_SIZE:I = 0x5

.field private static final CONTACT_NAME_LENGTH_MAX:I = 0x6

.field private static final MAX_CANDIDATE_NUM:I = 0x14

.field private static final PROJECTION_PHONE:[Ljava/lang/String;

.field private static final START_CONTACT_TIMEOUT:I = 0x32


# instance fields
.field addedCandList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mContactData:[Lcom/sec/android/inputmethod/databases/ContactLinkProvider$contactInfoItem;

.field private mContactDataCount:I

.field private mContext:Landroid/content/Context;

.field private mInputManager:Lcom/ime/framework/common/InputManager;

.field private mQueryThread:Lcom/sec/android/inputmethod/databases/ContactLinkProvider$QueryThread;

.field private mSelectedContact:I

.field private mTimer:Lcom/sec/android/inputmethod/databases/ContactLinkProvider$ContactTimer;

.field private mUIhandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "data2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "data3"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "mimetype"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/inputmethod/databases/ContactLinkProvider;->PROJECTION_PHONE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/ime/framework/common/InputManager;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sec/android/inputmethod/databases/ContactLinkProvider$contactInfoItem;

    iput-object v0, p0, Lcom/sec/android/inputmethod/databases/ContactLinkProvider;->mContactData:[Lcom/sec/android/inputmethod/databases/ContactLinkProvider$contactInfoItem;

    iput v1, p0, Lcom/sec/android/inputmethod/databases/ContactLinkProvider;->mContactDataCount:I

    iput v1, p0, Lcom/sec/android/inputmethod/databases/ContactLinkProvider;->mSelectedContact:I

    iput-object p1, p0, Lcom/sec/android/inputmethod/databases/ContactLinkProvider;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/inputmethod/databases/ContactLinkProvider;->mInputManager:Lcom/ime/framework/common/InputManager;

    new-instance v0, Lcom/sec/android/inputmethod/databases/ContactLinkProvider$ContactTimer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/inputmethod/databases/ContactLinkProvider$ContactTimer;-><init>(Lcom/sec/android/inputmethod/databases/ContactLinkProvider;Lcom/sec/android/inputmethod/databases/ContactLinkProvider$1;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/databases/ContactLinkProvider;->mTimer:Lcom/sec/android/inputmethod/databases/ContactLinkProvider$ContactTimer;

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/inputmethod/databases/ContactLinkProvider;)Lcom/sec/android/inputmethod/databases/ContactLinkProvider$QueryThread;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/inputmethod/databases/ContactLinkProvider;->mQueryThread:Lcom/sec/android/inputmethod/databases/ContactLinkProvider$QueryThread;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/inputmethod/databases/ContactLinkProvider;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/inputmethod/databases/ContactLinkProvider;->mUIhandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/inputmethod/databases/ContactLinkProvider;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/inputmethod/databases/ContactLinkProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/inputmethod/databases/ContactLinkProvider;->PROJECTION_PHONE:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/inputmethod/databases/ContactLinkProvider;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/inputmethod/databases/ContactLinkProvider;->mContactDataCount:I

    return v0
.end method

.method static synthetic access$508(Lcom/sec/android/inputmethod/databases/ContactLinkProvider;)I
    .locals 2

    iget v0, p0, Lcom/sec/android/inputmethod/databases/ContactLinkProvider;->mContactDataCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/android/inputmethod/databases/ContactLinkProvider;->mContactDataCount:I

    return v0
.end method


# virtual methods
.method public commitContactDialogData(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/inputmethod/databases/ContactLinkProvider;->mContactData:[Lcom/sec/android/inputmethod/databases/ContactLinkProvider$contactInfoItem;

    iget v1, p0, Lcom/sec/android/inputmethod/databases/ContactLinkProvider;->mSelectedContact:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/sec/android/inputmethod/databases/ContactLinkProvider$contactInfoItem;->data:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/databases/ContactLinkProvider;->commitResultText(Ljava/lang/String;)V

    return-void
.end method

.method public commitResultText(Ljava/lang/String;)V
    .locals 4

    sget-boolean v1, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "SamsungIME_UnifiedIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "commitResultText resultText="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string p1, ""

    :cond_2
    iget-object v1, p0, Lcom/sec/android/inputmethod/databases/ContactLinkProvider;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_5

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "SamsungIME_UnifiedIME"

    const-string v2, "commitResultText commitText getCurrentInputConnection()=null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    invoke-static {}, Lcom/ime/framework/engine/InputEngineManagerImpl;->getInstance()Lcom/ime/framework/engine/InputEngineManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    return-void

    :cond_4
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "SamsungIME_UnifiedIME"

    const-string v2, "commitResultText finishComposingText getCurrentInputConnection()=null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    const-string v1, "SamsungIME_UnifiedIME"

    const-string v2, "commitResultText getCurrentInputConnection()=null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getContactData()[Lcom/sec/android/inputmethod/databases/ContactLinkProvider$contactInfoItem;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/inputmethod/databases/ContactLinkProvider;->mContactData:[Lcom/sec/android/inputmethod/databases/ContactLinkProvider$contactInfoItem;

    return-object v0
.end method

.method public getContactNames()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/inputmethod/databases/ContactLinkProvider;->addedCandList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getContactProviderStatus()I
    .locals 8

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v7, -0x1

    iget-object v0, p0, Lcom/sec/android/inputmethod/databases/ContactLinkProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$ProviderStatus;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "status"

    aput-object v4, v2, v5

    const/4 v4, 0x1

    const-string v5, "data1"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_3

    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_0

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :goto_0
    sget-boolean v0, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "SamsungIME_UnifiedIME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getContactProviderStatus : providerStatus : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v7

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_3
    const-string v0, "SamsungIME_UnifiedIME"

    const-string v1, "getContactProviderStatus : cursor is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/inputmethod/databases/ContactLinkProvider;->mContactDataCount:I

    iget-object v1, p0, Lcom/sec/android/inputmethod/databases/ContactLinkProvider;->mTimer:Lcom/sec/android/inputmethod/databases/ContactLinkProvider$ContactTimer;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/databases/ContactLinkProvider$ContactTimer;->stop()V

    iget-object v1, p0, Lcom/sec/android/inputmethod/databases/ContactLinkProvider;->mQueryThread:Lcom/sec/android/inputmethod/databases/ContactLinkProvider$QueryThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/inputmethod/databases/ContactLinkProvider;->mQueryThread:Lcom/sec/android/inputmethod/databases/ContactLinkProvider$QueryThread;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/databases/ContactLinkProvider$QueryThread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/inputmethod/databases/ContactLinkProvider;->mQueryThread:Lcom/sec/android/inputmethod/databases/ContactLinkProvider$QueryThread;

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/inputmethod/databases/ContactLinkProvider;->mContactData:[Lcom/sec/android/inputmethod/databases/ContactLinkProvider$contactInfoItem;

    new-instance v2, Lcom/sec/android/inputmethod/databases/ContactLinkProvider$contactInfoItem;

    invoke-direct {v2}, Lcom/sec/android/inputmethod/databases/ContactLinkProvider$contactInfoItem;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/inputmethod/databases/ContactLinkProvider;->addedCandList:Ljava/util/ArrayList;

    return-void
.end method

.method public setUIHandler(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/inputmethod/databases/ContactLinkProvider;->mUIhandler:Landroid/os/Handler;

    return-void
.end method

.method public startThread(Ljava/lang/String;)I
    .locals 3

    sget-boolean v0, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SamsungIME_UnifiedIME"

    const-string v1, "----updateContactInfoToCandidate(). "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/databases/ContactLinkProvider;->reset()V

    new-instance v0, Lcom/sec/android/inputmethod/databases/ContactLinkProvider$QueryThread;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/inputmethod/databases/ContactLinkProvider$QueryThread;-><init>(Lcom/sec/android/inputmethod/databases/ContactLinkProvider;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/databases/ContactLinkProvider;->mQueryThread:Lcom/sec/android/inputmethod/databases/ContactLinkProvider$QueryThread;

    sget-boolean v0, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "SamsungIME_UnifiedIME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new a QueryThread="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/inputmethod/databases/ContactLinkProvider;->mQueryThread:Lcom/sec/android/inputmethod/databases/ContactLinkProvider$QueryThread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SamsungIME_UnifiedIME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inputspell="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Lcom/sec/android/inputmethod/databases/ContactLinkProvider;->mTimer:Lcom/sec/android/inputmethod/databases/ContactLinkProvider$ContactTimer;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/databases/ContactLinkProvider$ContactTimer;->start()V

    iget v0, p0, Lcom/sec/android/inputmethod/databases/ContactLinkProvider;->mContactDataCount:I

    goto :goto_0
.end method
